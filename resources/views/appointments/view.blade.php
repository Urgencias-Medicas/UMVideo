@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card" style="height:850px; text-align: center;">
        <div class="card-body" style="padding: 0px;">
            <div class="row">
                <div class="col text-center">
                    <h4>
                        {{$Appointment->nombres}} {{$Appointment->apellidos}} - {{$Appointment->tipo == 'afiliado' ? 'Afiliado' : 'Colaborador MiCoope'}}
                    </h4>
                </div>
            </div>
            <iframe src="https://smartla.daily.co/{{$Appointment->roomName}}" allow="camera;microphone"
                style="height: 100%; width: 100%;"></iframe>
            <div class="row">
                <div class="col-12">
                    <a href="/appointments/{{$Appointment->id}}/end" class="btn btn-danger btn-lg btn-block">Finalizar llamada</a>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
