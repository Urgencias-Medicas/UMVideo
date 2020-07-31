@extends('layouts.app')

<head>
    <script src='https://video.excess.software/external_api.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="js/noty/packaged/jquery.noty.packaged.min.js"></script>
</head>

@section('content')

{{-- Greeting --}}
<h2 id="greeting">Buenos dias</h2>

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

        api.on('participantKickedOut', function clientJoined() {
            releaseDr(api);
        });

        api.on('participantLeft', function clientJoined() {
            releaseDr(api);
        });
        
        window.addEventListener("beforeunload", evtListener);

        document.getElementById('session').onclick = function() {
            if (api.getNumberOfParticipants() > 1) {
                $( document ).ready(function() {
                    new Noty({
                        type: "warning",
                        text: 'No debe salirse si hay clientes dentro de la llamada.',
                    }).show();
                });
                return false;
            }

            window.removeEventListener("beforeunload", evtListener);
        };
    }

    if ("<?php echo isset($in); ?>" && "<?php echo $actionAvailable; ?>") {
        $( document ).ready(function() {
            new Noty({
                type: "warning",
                text: 'Un cliente en cola se le ha notificado de su disponibilidad. Por favor espere unos minutos mientras el cliente se conecta.',
            }).show();
        });
    
    } else if ("<?php echo isset($out); ?>" && "<?php echo $value; ?>" == "err") {
        $( document ).ready(function() {
            new Noty({
                type: "error",
                text: 'Hubo un error con la conexión. Favor iniciar turno nuevamente.',
            }).show();
        });
    }

    function releaseDr(api) {
        if (api.getNumberOfParticipants() == 1) {
            axios({
                method: 'post',
                url: '/api/releaseDr',
                data: { data : "<?php echo $dataDr; ?>" }
            })
            .then(function (response) {
                $( document ).ready(function() {
                    new Noty({
                        type: "primary",
                        text: 'En unos momentos se le conectará con otro paciente.',
                    }).show();
                });
            })
            .catch(function (error) {
                window.removeEventListener("beforeunload", evtListener);
                window.location.href = "/admin/dashboard?out=err";
            });
        }
    }
</script>

@endsection
