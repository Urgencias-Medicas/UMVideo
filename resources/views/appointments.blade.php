@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
                <h3>{{ __('Sesiones') }}</h3>
		@can('view_sessions')
                    <div class="col-md-12 text-right mb-3"> 
                        <a href="{{ route('exportAppointments') }}" class="btn btn-danger">Export</a>
                    </div> 
                    <table class="table table-light table-striped border rounded mb-5" id="htmltable">
                        <tr>
                            <th>{{ __('ID') }}</th>
                            <th>{{ __('Titular') }}</th>
                            <th>{{ __('Afiliado')}}</th>
                            <th>{{ __('Teléfono') }}</th>
                            <th>{{ __('No. Afiliación') }}</th>
                            <th>{{ __('Id Interno') }}</th>
                            <th>{{ __('Doctor') }}</th>
                            <th>{{ __('Fecha Inicio') }}</th>
                            <th>{{ __('Efectiva') }}</th>
                            <th>{{ __('Producto') }}</th>
                        </tr>
                    @foreach ($appointments as $appointment)
                        <form method="post" action="/edit">
                        @csrf
                            <tr>
                                <td>
                                    {{$appointment->id}}
                                </td>
                                <td>
                                    {{$appointment->nombres}} {{$appointment->apellidos}}
                                </td>
                                <td>
                                    {{$appointment->nombres}} {{$appointment->apellidos}}
                                </td>
                                <td>
                                    {{$appointment->telefono}}
                                </td>
                                <td>
                                   {{$appointment->user}}
                                </td>
                                <td>
                                    {{$appointment->idInterno}}
                                </td>
                                <td>
                                    {{$appointment->doctor}}
                                </td>
                                <td>
                                    {{ date_format(date_create($appointment->date), "d/m/Y")}} - {{ date_format(date_create($appointment->time), "h:i")}}
                                </td>
                                <td>
                                    {{$appointment->status == 'finished' ? 'Si' : 'No'}}
                                </td>
                                <td>
                                    {{$appointment->producto}}
                                </td>
                            </tr>
                        </form>
                    @endforeach
                    </table>
                @endcan
        </div>
    </div>
</div>
@endsection
