@extends('layouts.app')

<head>
    <script src='https://videos.excess.software/external_api.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>

@section('content')
<div class="container">
    {{-- Greeting --}}
    <h2><span id="greeting">Buenos dias</span> {{ Auth::user()->name }}</h2>

    {{-- Buttons --}}
    <div class="">
        <form  method="post">
            @csrf
            @php
            if (isset($in)) {
                @endphp
                    <button id="session" class="btn btn-secondary mb-3" name="out" type="submit" value="1">Terminar turno</button>
                    <button id="shift" class="btn btn-secondary mb-3" type="button" value="0">Pausar</button>
                @php
            } else {
                @endphp
                    <button id="session" class="btn btn-primary mb-3" name="in" type="submit" value="1">Iniciar turno</button>
                @php
            }
            @endphp
        </form>
    </div>

    {{-- Card and Jitsi --}}
    <div class="card" style="height:700px; text-align: center;">
        <div class="card-body" style="padding: 0px;">
        <div id="meet" class="toolbox-button hidden"></div>
            <div id="empty-card"style="padding:300px;">
                <h4 id="" style="color: #B5C7E0" >No hay video llamadas en sesión.</h4>
            <div>
         </div>
    </div>

    <form method="post" id="outWithErr">
        @csrf
        <input type="hidden" name="out" value="err">
    </form>
</div>
<script>

    let pause = 0;
    // Greeting
    var now = new Date();
    var hrs = now.getHours();
    var msg = "";

    if (hrs >  6) msg = "Buenos dias";      // After 6am
    if (hrs > 12) msg = "Buenas tardes";    // After 12pm
    if (hrs > 17) msg = "Buenas noches";      // After 5pm

    document.getElementById("greeting").innerHTML = msg;

    const evtListener = function(evt) {

        // Cancel the event (if necessary)
        evt.preventDefault();

        // Google Chrome requires returnValue to be set
        evt.returnValue = '';

        return null;
    };

    if ("<?php echo isset($in); ?>") {

        const domain = 'videos.excess.software';
        const options = {
            jwt: '<?php echo $jwt; ?>',
            roomName: '<?php echo $roomName; ?>',
            width: "100%",
            height: 700,
            parentNode: document.querySelector('#meet'),
            userInfo: {
                displayName: 'Dr. <?php echo $name_u; ?>'
            },
            interfaceConfigOverwrite: {
                TOOLBAR_BUTTONS: [
                    'microphone', 'camera', 'closedcaptions', 'desktop', 'fullscreen',
                    'fodeviceselection', 'profile', 'chat', 'recording',
                    'livestreaming', 'etherpad', 'sharedvideo', 'settings', 'raisehand',
                    'videoquality', 'filmstrip', 'invite', 'feedback', 'stats', 'shortcuts',
                    'tileview', 'videobackgroundblur', 'download', 'help', 'mute-everyone', 'security'
                ]
            }
        };

        var x = document.getElementById("empty-card");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }

        const api = new JitsiMeetExternalAPI(domain, options);

        //Detect if user leaves page
        window.addEventListener('blur', startTimerDr);
        window.addEventListener('focus', stopTimerDr);

        window.onbeforeunload = endDrSession;

        var inactiveDrInterval;
        var count = 0;
        var tiempoDeInactividad = 5; //Tiempo en minutos

        function inactiveDrTimerHandler() {
            count++;
            console.log(count);

            if(count == tiempoDeInactividad*60){
                endSession(api);
            }
        }

        function startTimerDr(){
            inactiveDrInterval = window.setInterval(inactiveDrTimerHandler, 1000);
        }

        function stopTimerDr(){
            clearInterval(inactiveDrInterval);
            count = 0;
        }

        function endDrSession(){
            endSession(api);
        }

        var checkUsers;

        api.on('participantJoined', function () {
            new Noty({
                layout: 'centerRight',
                type: 'success',
                text: 'Un paciente se acaba de conectar.',
                timeout: 3000
            }).show();

            api.executeCommand('startRecording', {
                mode: 'file', //recording mode, either `file` or `stream`.
                shouldShare: false //whether the recording should be shared with the participants or not. Only applies to certain jitsi meet deploys.
            });

            //api.executeCommand('getParticipants', jitsiGetParticipants());
            var participants = api.getParticipantsInfo();

            console.log(participants);

            console.log(participants.length);

            console.log('Esto es una prueba de cuando ingresa.');

            if(participants.length > 2){
                console.log(participants[participants.length-1].participantId);
            }
            
            console.log("<?php echo $dataDr; ?>");

            axios({
                method: 'post',
                url: '/api/setRecInfo',
                data: { data : "<?php echo $dataDr; ?>" }
            });

            /*checkUsers = setInterval(function(){
                if(participants.length == 1 || participants.length < 2){
                    console.log('timer ejecutado');
                    api.executeCommand('stopRecording',
                        'file' //recording mode to stop, `stream` or `file`
                    );
                }
            }, 5000);*/
        });

        api.on('participantKickedOut', function () {
            if (pause) {
                pause = 0;

                new Noty({
                    layout: 'centerRight',
                    type: 'alert',
                    text: "El paciente se ha desconectado.",
                    timeout: 3000
                }).show();

                pauseSession(api);
            } else {
                releaseDr(api, 2);
            }

            //clearTimeout(checkUsers);

            api.executeCommand('stopRecording',
                'file' //recording mode to stop, `stream` or `file`
            );
        });

        api.on('participantLeft', function () {
            if (pause) {
                pause = 0;

                new Noty({
                    layout: 'centerRight',
                    type: 'alert',
                    text: "El paciente se ha desconectado.",
                    timeout: 3000
                }).show();

                pauseSession(api);
            } else {
                releaseDr(api, 2);
            }

            //clearTimeout(checkUsers);

            api.executeCommand('stopRecording',
                'file' //recording mode to stop, `stream` or `file`
            );
        });

        window.addEventListener("beforeunload", evtListener);

        document.getElementById('session').onclick = function() {
            if (api.getNumberOfParticipants() > 1) {
                new Noty({
                    layout: 'centerRight',
                    type: 'warning',
                    text: 'No debe salirse si hay clientes dentro de la llamada.',
                    timeout: 3000
                }).show();

                return false;
            }

            window.removeEventListener("beforeunload", evtListener);
        };

        releaseDr(api);
        
        document.getElementById('shift').onclick = function() {
            pauseSession(api);
        }

        /*document.getElementById('navbarDropdown').onclick = function(){
            document.getElementById('jitsiConferenceFrame0').onload = function(){
                var iframe = document.getElementById('jitsiConferenceFrame0');
                var element = iframe.contentWindow.document.getElementsByName('jqi_state0_buttonspandatai18ndialogIamHostYosoyelanfitrinspan')[0];
                elmnt.style.display = "none";
            }
        }*/

        document.getElementById('jitsiConferenceFrame0').onload = function(){
            var iframe = document.getElementById('jitsiConferenceFrame0');
            iframe.setAttribute("crossorigin", "anonymous");
            $(this).contents().find('body').append('<scr' + 'ipt type="text/javascript" src="{{asset('js/iframe.js')}}"></scr' + 'ipt>');
            console.log('done');
            var iFrameHead = window.frames["jitsiConferenceFrame0"].document.getElementsByTagName("head")[0];         
            var myscript = document.createElement('script');
            myscript.type = 'text/javascript';
            myscript.src = '{{asset('js/iframe.js')}}'; // replace this with your SCRIPT
            iFrameHead.appendChild(myscript);
            console.log('donee');
            //var element = iframe.contentWindow.document.getElementsByName('jqi_state0_buttonspandatai18ndialogIamHostYosoyelanfitrinspan');
            //document.element.onclick = function (){
            //    alert('test iframe');
            //}
        }
    }

    window.addEventListener('load', function () {

        if ("<?php echo isset($out); ?>" && "<?php echo $value; ?>" == "err") {

                new Noty({
                    layout: 'centerRight',
                    type: 'error',
                    text: 'Hubo un error con la conexión. Favor iniciar turno nuevamente.',
                    timeout: 3000
                }).show();

        }

    })

    function releaseDr(api, timeout) {
        if (api.getNumberOfParticipants() == 1) {

            timeout = timeout || 0;

            switch (timeout) {
                case 0:
                    notifyClient('');
                    break;

                case 1:
                    axios({
                        method: 'post',
                        url: '/api/setRecInfo',
                        data: { data : "<?php echo $dataDr; ?>", status : 1 }
                    })
                    .then(function (response) {
                        notifyClient("El tiempo de espera del paciente ha finalizado.");
                    })
                    .catch(function (error) {
                        window.removeEventListener("beforeunload", evtListener);
                        document.getElementById('outWithErr').submit()
                    });
                    break;

                case 2:
                    notifyClient("El paciente se ha desconectado.");
                    break;
                case 3:
                    axios({
                        method: 'post',
                        url: '/api/releaseDr',
                        data: { data : "<?php echo $dataDr; ?>", start : 1 }
                    })
                    .then(function (response) {

                        if (response.data.status == 1) {
                            new Noty({
                                layout: 'centerRight',
                                type: 'alert',
                                text: 'Un cliente en cola se le ha notificado de su disponibilidad. Por favor espere unos segundos mientras el cliente se conecta.',
                                timeout: 3000
                            }).show();

                            /*checkUsers = setInterval(function(){
                                if(participants.length == 1 || participants.length < 2){
                                    console.log('timer ejecutado');
                                    api.executeCommand('stopRecording',
                                        'file' //recording mode to stop, `stream` or `file`
                                    );
                                }
                            }, 5000);*/

                            setTimeout(releaseDr, 60000, api, 1);
                        }
                    })
                    .catch(function (error) {
                        window.removeEventListener("beforeunload", evtListener);
                        document.getElementById('outWithErr').submit()
                    });
                    break;
            }

            function notifyClient(text) {

                if (text)
                    new Noty({
                        layout: 'centerRight',
                        type: 'alert',
                        text: text,
                        timeout: 3000
                    }).show();

                axios({
                    method: 'post',
                    url: '/api/releaseDr',
                    data: { data : "<?php echo $dataDr; ?>" }
                })
                .then(function (response) {

                    if (response.data.status == 1) {
                        new Noty({
                            layout: 'centerRight',
                            type: 'alert',
                            text: 'Un cliente en cola se le ha notificado de su disponibilidad. Por favor espere unos segundos mientras el cliente se conecta.',
                            timeout: 3000
                        }).show();

                        setTimeout(releaseDr, 60000, api, 1);
                    }
                })
                .catch(function (error) {
                    window.removeEventListener("beforeunload", evtListener);
                    document.getElementById('outWithErr').submit()
                });

            }

        } else if (api.getNumberOfParticipants() < 1)
            setTimeout(releaseDr, 5000, api);
    }

    function pauseSession(api) {

        let shiftBtn = document.getElementById('shift');

        if (api.getNumberOfParticipants() > 1) {

            pause = 1;

            new Noty({
                layout: 'centerRight',
                type: 'warning',
                text: 'Se pausará la sesión cuando el cliente cuelgue la llamada.',
                timeout: 3000
            }).show();

        } else if (Number(shiftBtn.value)) {

            releaseDr(api, 3);

            document.getElementById('session').removeAttribute('style');

            shiftBtn.innerHTML = "Pausar";
            shiftBtn.value = "0";
            shiftBtn.className = "btn btn-secondary mb-3";

            new Noty({
                layout: 'centerRight',
                type: 'success',
                text: 'Su sesión se ha renaudado exitosamente.',
                timeout: 3000
            }).show();

        } else {
            
            axios({
                    method: 'post',
                    url: '/api/releaseDr',
                    data: { data : "<?php echo $dataDr; ?>", pause : 1 }
            })
            .then(function (response) {

                if (response.data == 1) {

                    document.getElementById('session').style.display = "none";

                    shiftBtn.innerHTML = "Reanudar";
                    shiftBtn.value = "1";
                    shiftBtn.className = "btn btn-primary mb-3";

                    new Noty({
                        layout: 'centerRight',
                        type: 'success',
                        text: 'Su sesión se ha pausado exitosamente.',
                        timeout: 3000
                    }).show();

                } else {

                    new Noty({
                        layout: 'centerRight',
                        type: 'error',
                        text: 'La sesión NO fue pausada por un error. Pruebe nuevamente.',
                        timeout: 3000
                    }).show();

                }
            });
        }
        
    }

    function endSession(api) {

        //let shiftBtn = document.getElementById('shift');

        if (api.getNumberOfParticipants() > 1) {

            //pause = 1;

            /*new Noty({
                layout: 'centerRight',
                type: 'warning',
                text: 'Ha estado demasiado tiempo inactivo en el sitio, su sesión podría finalizarse.',
                timeout: 3000
            }).show();*/

        } else {
            
            axios({
                    method: 'post',
                    url: '/api/releaseDr',
                    data: { data : "<?php echo $dataDr; ?>", end : 1 }
            })
            .then(function (response) {

                if (response.data == 1) {

                    //document.getElementById('session').style.display = "none";

                    new Noty({
                        layout: 'centerRight',
                        type: 'success',
                        text: 'Su sesión fue finalizada por inactividad. Recargue la página.',
                        timeout: 15000
                    }).show();

                    $('#session').click();

                } else {

                    new Noty({
                        layout: 'centerRight',
                        type: 'error',
                        text: 'La sesión NO fue finalizada por un error.',
                        timeout: 3000
                    }).show();

                }
            });
        }
        
    }  

</script>

@endsection
