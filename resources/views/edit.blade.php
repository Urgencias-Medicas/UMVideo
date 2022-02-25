@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-10">
            <div class="col-12 row">
                    <a class="btn btn-lg btn-link" href="/admin" >< {{ __('Atrás') }}</a>
            </div>

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
                                    <th>Núm. Colegiado</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th>Roles</th>
                                </tr>
                                <tr>
                                    <td>{{ $object->id }}<input type="hidden" name="id" value="{{ $object->id }}"/></td>


                                    <td><div class="form-group"><input type="text" class="w-75 form-control" name="newMedNum" value="{{ $object->medicalNum }}" required/></div></td>
                                    <td><div class="form-group"><input type="text" class="w-75 form-control" name="newName" value="{{ $object->name }}" required/></div></td>
                                    <td><div class="form-group"><input type="text" class="w-75 form-control" name="newEmail" value="{{ $object->email }}" required/></div></td>

                                    <td>
                                        @foreach ($roles as $role)
                                            <input type="checkbox" id="role_{{ $role->id }}" name="roles_sel[]" value="{{ $role->id }}">
                                            <label for="role_{{ $role->id }}">{{ $role->name }}</label><br>
                                        @endforeach
                                    </td>
                                </tr>
                            </table>
                            <div class="row">
                                <div class="col">
                                    <h4>Horarios</h4>
                                </div>
                            </div>
                            <h4>Jornada Laboral</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Inicio</span>
                                        <input name="inicioHorario" type="time" class="form-control" value="{{$object->inicioHorario}}" placeholder="00:00">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Fin</span>
                                        <input name="finHorario" type="time" class="form-control" value="{{$object->finHorario}}" placeholder="00:00">
                                    </div>
                                </div>
                            </div>
                            <h4>No citas</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Inicio</span>
                                        <input name="inicioHorarioNoC" type="time" class="form-control" value="{{$object->inicioHorarioNoC}}" placeholder="00:00">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Fin</span>
                                        <input name="finHorarioNoC" type="time" class="form-control" value="{{$object->finHorarioNoC}}" placeholder="00:00">
                                    </div>
                                </div>
                            </div>
                            <h4>Almuerzo</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Inicio</span>
                                        <input name="inicioHorarioA" type="time" class="form-control" value="{{$object->inicioHorarioA}}" placeholder="00:00">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Fin</span>
                                        <input name="finHorarioA" type="time" class="form-control" value="{{$object->finHorarioA}}" placeholder="00:00">
                                    </div>
                                </div>
                            </div>

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
                                    <td>
                                        <div class="form-group">
                                            <input type="text" name="newName" class="w-75 form-control" value="{{ $object->name }}" />
                                        </div>
                                    </td>
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
                                    <td>
                                        <div class="form-group">
                                            <input type="text" name="newName" class="form-control" value="{{ $object->name }}" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        @endif

                        <input type="submit" class="btn btn-primary" name="edt_btn" style="width:20%;" value="Editar {{ $title }}"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
