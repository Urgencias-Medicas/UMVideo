@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
                <h3>{{ __('Sesiones') }}</h3>
		@can('view_sessions')
                    <div class="col-md-12 text-right mb-3"> 
                        <a href="{{ route('export') }}" class="btn btn-danger">Export</a>
                    </div> 
                    <table class="table table-light table-striped border rounded mb-5" id="htmltable">
                        <tr>
                            <th>{{ __('ID') }}</th>
                            <th>{{ __('Doctor') }}</th>
                            <th>{{ __('Paciente') }}</th>
                            <th>{{ __('Afiliado')}}</th>
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
                                   <?php echo $session->afiliado ? $session->afiliado : '-' ?>
                                </td>
                                <td>
                                   <?php echo ($session->status == 0) ? "Iniciada" : (($session->status == 1) ? "En proceso" : (($session->status == 2) ? "Finalizada" : (($session->status == 3) ? "Cliente No Ingresó" : "Error"))); ?>
                                </td>
                                <td>
                                   <?php echo date_format(date_create($session->start_time), "d/m/Y - h:i:s a"); ?>
                                </td>
                                <td>
                                   <?php echo ($session->status != 2) ? "-" : date_format(date_create($session->end_time), "d/m/Y - h:i:s a"); ?>
                                </td>
                                <td>
                                    <?php if ($session->status != 2)
                                    echo "-";
                                    else { ?>
                                    <a class="btn btn-link" href="https://umvideo.nyc3.digitaloceanspaces.com/<?php echo $session->recording; ?>" target="_blank">Grabación</a>
                                    <?php } ?>
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
