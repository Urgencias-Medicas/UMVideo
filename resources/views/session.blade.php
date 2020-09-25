@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
                <h3>{{ __('Sesiones') }}</h3>
                @can('view_sessions')
                    <table class="table table-light table-striped border rounded mb-5">
                        <tr>
                            <th>{{ __('ID') }}</th>
                            <th>{{ __('Doctor') }}</th>
                            <th>{{ __('Paciente') }}</th>
                            <th>{{ __('Estado') }}</th>
                            <th>{{ __('Fecha de Inicio') }}</th>
                            <th>{{ __('Fecha Fin') }}</th>
                            <th>{{ __('Grabación') }}</th>
                        </tr>
                    @foreach ($sessions as $session)
                        <form method="post" action="/edit">
                        @csrf
                            <tr>
                                <td>
                                    <?php echo $session->id; ?>
                                </td>
                                <td>
                                   <?php echo $session->doctor; ?>
                                </td>
                                <td>
                                   <?php echo $session->paciente; ?>
                                </td>
                                <td>
                                   <?php echo ($session->status == 0) ? "Error" : (($session->status == 1) ? "En proceso" : "Finalizado"); ?>
                                </td>
                                <td>
                                   <?php echo date_format(date_create($session->start_time), "d/m/Y - h:i:s a"); ?>
                                </td>
                                <td>
                                   <?php echo date_format(date_create($session->end_time), "d/m/Y - h:i:s a"); ?>
                                </td>
                                <td>
                                    <a class="btn btn-link" href="https://umvideo.nyc3.digitaloceanspaces.com/<?php echo $session->recording; ?>.mp4" target="_blank">Grabación</a>
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
