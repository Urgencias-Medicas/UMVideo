@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        @foreach($Appointments as $Appointment)
            <div class="col-3" style="margin-bottom: 15px;">
                <div class="card" style="height:150px; text-align: center;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <span>
                                    {{$Appointment->nombres}} {{$Appointment->apellidos}}
                                </span>
                                <br>
                                @if($Appointment->status == 0)
                                <span class="badge badge-warning">Pendiente</span>
                                @elseif($Appointment->status == 1)
                                <span class="badge badge-success">En atención</span>
                                @endif
                                <br>
                                <br>
                                <a id="answercall_{{$Appointment->id}}" onclick="sendRecipeRequest(this)" name ="{{$Appointment->id}}" href="#" type="button" class="btn btn-primary">Ingresar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

@endsection

<script>
    setTimeout(function(){
        window.location.reload(1);
    }, 5000);


    function sendRecipeRequest(item)
    {
        console.log(item.name)
        fetch('/api/createRecipeApi/50427/20846/575047/', {
        method: "POST"
        })
        .then(response => response.json()) 
        .then(json => console.log(json))
        .then(window.location.href="/verCitaRapida/"+item.name)
        //.catch(err => console.log(err));
    }
</script>
