@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">

                @canany(['add_user', 'edit_users'])
                <div class="card-header">{{ __('Usuarios') }}</div>
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <h2>Usuarios</h2>

                        @can('edit_users')
                        <table style="width:100%">
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Roles</th>
                                <th>Acción</th>
                            </tr>
                            @foreach ($users as $user)
                                <form method="post" action="/edit">
                                @csrf
                                    <tr>
                                        <td>{{ $user->id }}<input type="hidden" name="user_id" value="{{ $user->id }}"/></td>
                                        <td>{{ $user->name }}</td>
                                        <td>
                                            @foreach ($user->roles as $role)
                                            {{ $role->name }}<br>
                                            @endforeach
                                        </td>
                                        <td><input type="submit" value="Editar"/></td>
                                    </tr>
                                </form>
                            @endforeach
                        </table>
                        @endcan

                        @can('add_user')
                        <br>
                        <form method="get" action="/register">
                            <button type="submit">Registrar Usuario</button>
                        </form>
                        @endcan

                    </div>
                </div>
                @endcanany

            <br><br>

            @canany(['add_role', 'edit_roles', 'add_permission', 'edit_permissions'])
            <div class="card">
                <div class="card-header">{{ __('Roles y Permisos') }}</div>

                @canany(['add_role', 'add_permission'])
                <form method="post" action="/create">
                    @csrf
                    @can('add_role')
                    <label for="role">Nombre del Rol:</label>
                    <br>
                    <input id="role" type="text" name="new_role"/>
                    <input type="submit" name="crt_role" style="width:20%;" value="Crear Rol"/>
                    <br><br>
                    @endcan
                    @can('add_permission')
                    <label for="perm">Nombre del Permiso:</label>
                    <br>
                    <input id="perm" type="text" name="new_perm"/>
                    <input type="submit" name="crt_perm" style="width:20%;" value="Crear Permisos"/>
                    @endcan
                </form>
                @endcanany
                
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @can('edit_roles')
                    <h2>Roles</h2>
                    <table style="width:100%">
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Acción</th>
                        </tr>
                        @foreach ($roles as $role)
                            <form method="post" action="/edit">
                            @csrf
                                <tr>
                                    <td>{{ $role->id }}<input type="hidden" name="role_id" value="{{ $role->id }}"/></td>
                                    <td>{{ $role->name }}</td>
                                    <td>
                                        <input type="submit" value="Editar"/>
                                    </td>
                                </tr>
                            </form>
                        @endforeach
                    </table>
                    <br><br>
                    @endcan

                    @can('edit_permissions')
                    <h2>Permisos</h2>
                    <table style="width:100%">
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Acción</th>
                        </tr>
                        @foreach ($permissions as $permission)
                            <form method="post" action="/edit">
                            @csrf
                                <tr>
                                    <td>{{ $permission->id }}<input type="hidden" name="perm_id" value="{{ $permission->id }}"/></td>
                                    <td>{{ $permission->name }}</td>
                                    <td>
                                        <input type="submit" value="Editar"/>
                                    </td>
                                </tr>
                            </form>
                        @endforeach
                    </table>
                    @endcan

                </div>
            </div>
            @endcanany
        </div>
    </div>
</div>
@endsection