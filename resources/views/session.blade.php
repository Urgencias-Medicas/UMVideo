@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            @canany(['add_user', 'edit_users'])
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <h3>{{ __('Sesiones') }}</h3>
                @can('edit_users')
                    <table class="table table-light table-striped border rounded mb-5">
                        <tr>
                            <th>{{ __('ID') }}</th>
                            <th>{{ __('Doctor') }}</th>
                            <th>{{ __('Paciente') }}</th>
                            <th>{{ __('Hora de Inicio') }}</th>
                            <th>{{ __('Hora de Fin') }}</th>
                            <th>{{ __('Grabación') }}</th>
                        </tr>
                    @foreach ($users as $user)
                        <form method="post" action="/edit">
                        @csrf
                            <tr>
                                <td>
                                    <p>1</p>
                                </td>
                                <td>
                                   Juan Perez
                                </td>
                                <td>
                                   Juan Perez
                                </td>
                                <td>
                                   Juan Perez
                                </td>
                                <td>
                                   Juan Perez
                                </td>
                                <td>
                                    <a class="btn btn-link" href="https://www.google.com" target="_blank">Link</a>
                                </td>
                            </tr>
                        </form>
                    @endforeach
                    </table>
                @endcan
            @endcanany
        </div>
    </div>
    @if (session('status'))
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
    @endif
</div>
@endsection
