@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Editar ') . $object->name }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="post" action="/edit">
                        @csrf
                        @if ($title == 'Usuario')
                            <table style="width:100%">
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th>Roles</th>
                                </tr>
                                <tr>
                                    <td>{{ $object->id }}<input type="hidden" name="id" value="{{ $object->id }}"/></td>
                                    <td><input type="text" name="newName" value="{{ $object->name }}" /></td>
                                    <td><input type="text" name="newEmail" value="{{ $object->email }}" /></td>
                                    <td>
                                        @foreach ($roles as $role)
                                            <input type="checkbox" id="role_{{ $role->id }}" name="roles_sel[]" value="{{ $role->id }}">
                                            <label for="role_{{ $role->id }}">{{ $role->name }}</label><br>
                                        @endforeach
                                    </td>
                                </tr>
                            </table>

                            @foreach ($object->roles as $role)
                                <script>
                                    document.getElementById("role_<?php echo $role->id; ?>").checked = true;
                                </script>
                            @endforeach

                        @elseif ($title == 'Rol')
                            <table style="width:100%">
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Permisos</th>
                                </tr>
                                <tr>
                                    <td>{{ $object->id }}<input type="hidden" name="id" value="{{ $object->id }}"/></td>
                                    <td><input type="text" name="newName" value="{{ $object->name }}" /></td>
                                    <td>
                                        @foreach ($perms as $perm)
                                            <input type="checkbox" id="perm_{{ $perm->id }}" name="perms_sel[]" value="{{ $perm->id }}">
                                            <label for="perm_{{ $perm->id }}">{{ $perm->name }}</label><br>
                                        @endforeach
                                    </td>
                                </tr>
                            </table>

                        @elseif ($title == 'Permiso')
                            <table style="width:100%">
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                </tr>
                                <tr>
                                    <td>{{ $object->id }}<input type="hidden" name="id" value="{{ $object->id }}"/></td>
                                    <td><input type="text" name="newName" value="{{ $object->name }}" /></td>
                                </tr>
                            </table>
                        @endif

                        <input type="submit" name="edt_btn" style="width:20%;" value="Editar {{ $title }}"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection