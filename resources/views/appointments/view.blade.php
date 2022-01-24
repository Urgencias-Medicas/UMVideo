@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card" style="height:900px; text-align: center;">
        <div class="card-body" style="padding: 0px;">
            <iframe src="https://smartla.daily.co/{{$Appointment->roomName}}" style="height: 100%; width: 100%;"></iframe>
        </div>
    </div>
</div>

@endsection
