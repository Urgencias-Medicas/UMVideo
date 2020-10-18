@extends('layouts.app')

<head>
    <script src='https://video.excess.software/external_api.js'></script>
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
                    <button id="session"class="btn btn-secondary mb-3" name="out" type="submit" value="1">Terminar turno</button>
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

        const domain = 'video.excess.software';
        const options = {

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
            
            axios({
                method: 'post',
                url: '/api/setRecInfo',
                data: { data : "<?php echo $dataDr; ?>" }
            });
        });

        api.on('participantKickedOut', function () {
            releaseDr(api, 2);

            api.executeCommand('stopRecording',
                'file' //recording mode to stop, `stream` or `file`
            );
        });

        api.on('participantLeft', function () {
            releaseDr(api, 2);

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
                    notifyClient("El tiempo de espera del paciente ha finalizado.");
                    break;

                case 2:
                    notifyClient("El paciente se ha desconectado.");
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

                        setTimeout(releaseDr, 30000, api, 1);
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
</script>

@endsection
