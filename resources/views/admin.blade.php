@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Usuarios') }}</div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <h2>Usuarios</h2>
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
                </div>
            </div>
            <br><br>
            <div class="card">
                <div class="card-header">{{ __('Roles y Permisos') }}</div>

                <form method="post" action="/create">
                    @csrf
                    <label for="role">Nombre del Rol:</label>
                    <br>
                    <input id="role" type="text" name="new_role"/>
                    <input type="submit" name="crt_role" style="width:20%;" value="Crear Rol"/>
                    <br><br>
                    <label for="perm">Nombre del Permiso:</label>
                    <br>
                    <input id="perm" type="text" name="new_perm"/>
                    <input type="submit" name="crt_perm" style="width:20%;" value="Crear Permisos"/>
                </form>
                
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

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
                </div>
            </div>
        </div>
    </div>
</div>
@endsection