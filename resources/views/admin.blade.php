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
                <h3>{{ __('Usuarios') }}</h3>
                @can('add_user')
                    <a class="btn btn-primary mb-2 float-right" href="{{ route('register') }}">{{ __('Agregar Usuario') }}</a>
                @endcan
                @can('edit_users')
                    <table class="table table-light table-striped border rounded mb-5">
                        <tr>
                            <th>{{ __('ID') }}</th>
                            <th>{{ __('Nombre') }}</th>
                            <th>{{ __('Roles') }}</th>
                            <th>{{ __('Acción') }}</th>
                        </tr>
                    @foreach ($users as $user)
                        <form method="post" action="/edit">
                        @csrf
                            <tr>
                                <td>
                                    {{ $user->id }}<input type="hidden" name="user_id" value="{{ $user->id }}"/>
                                </td>
                                <td>
                                    {{ $user->name }}
                                </td>
                                <td>
                                    @foreach ($user->roles as $role)
                                        {{ $role->name }}
                                    @endforeach
                                </td>
                                <td>
                                    <input class="btn btn-link" type="submit" value="{{ __('Editar') }}">
                                    
                                    @if ($role->name != 'super_admin' && $user->id != auth()->user()->id)
                                        <input class="btn btn-link" name="{{ ($user->status) ? 'deactivate' : 'activate' }}" type="submit" value="{{ ($user->status) ? __('Desactivar') : __('Activar') }}"/>
                                    @endif
                                    
                                    {{$role->name = ''}}
                                </td>
                            </tr>
                        </form>
                    @endforeach
                    </table>
                @endcan
            @endcanany
        </div>
    </div>
    @canany(['add_role', 'edit_roles', 'add_permission', 'edit_permissions'])
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2>Roles</h2>
            @canany(['add_role', 'add_permission'])
            <form method="post" action="/create">
                @csrf
                @can('add_role')
                <div class="form-group">
                    <input class="form-control" id="role" type="text" placeholder="{{ __('Escribir Rol') }}" name="new_role"/>
                    <input class="w-25 form-control btn btn-primary my-2 float-right" type="submit" name="crt_role" value="{{ __('Crear Rol') }}"/>
                </div>
                @endcan
            </form>
            @endcanany
            @can('edit_roles')
            <table class="table table-light table-striped border rounded mb-5">
                <tr>
                    <th>{{ __('ID') }}</th>
                    <th>{{ __('Nombre') }}</th>
                    <th>{{ __('Acción') }}</th>
                </tr>
                @foreach ($roles as $role)
                    <form method="post" action="/edit">
                    @csrf
                        <tr>
                            <td>{{ $role->id }}<input type="hidden" name="role_id" value="{{ $role->id }}"/></td>
                            <td>{{ $role->name }}</td>
                            <td>
                                <input class="btn btn-link" type="submit" value="{{ __('Editar') }}"/>
                            </td>
                        </tr>
                    </form>
                @endforeach
            </table>
            @endcan
        </div>

        <div class="col-md-6">
            <h2>Permisos</h2>
            @canany(['add_role', 'add_permission'])
            <form method="post" action="/create">
                @csrf
                @can('add_permission')
                <div class="form-group">
                    <input class="form-control" id="perm" type="text" placeholder="{{ __('Crear Permisos') }}" name="new_perm"/>
                    <input class="w-25 form-control btn btn-primary my-2 float-right" type="submit" name="crt_perm" value="{{ __('Crear Permisos') }}"/>
                </div>
                @endcan
            </form>
            @endcanany
            @can('edit_permissions')
            <table class="table table-light table-striped border rounded mb-5">
                <tr>
                    <th>{{ __('ID') }}</th>
                    <th>{{ __('Nombre') }}</th>
                    <th>{{ __('Acción') }}</th>
                </tr>
                @foreach ($permissions as $permission)
                    <form method="post" action="/edit">
                    @csrf
                        <tr>
                            <td>{{ $permission->id }}<input type="hidden" name="perm_id" value="{{ $permission->id }}"/></td>
                            <td>{{ $permission->name }}</td>
                            <td>
                                <input class="btn btn-link" type="submit" value="{{ __('Editar') }}"/>
                            </td>
                        </tr>
                    </form>
                @endforeach
            </table>
            @endcan
        </div>
    </div>
    @endcanany
    @if (session('status'))
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
    @endif
</div>
@endsection
