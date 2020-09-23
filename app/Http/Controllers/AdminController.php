<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\User;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = User::with('roles')->get();
        $roles = Role::all();
        $permissions = Permission::all();
        return view('admin', ['users' => $users, 'roles' => $roles, 'permissions' => $permissions]);
    }

    public function create(Request $request)
    {
        if ($request->input('crt_role') && $request->input('new_role'))
            Role::create(['name' => $request->input('new_role')]);

        elseif ($request->input('crt_perm') && $request->input('new_perm'))
            Permission::create(['name' => $request->input('new_perm')]);

        header('Location: /admin');
    }

    public function edit(Request $request)
    {
        if ($request->input('edt_btn')) {

            if ($request->input('edt_btn') == "Editar Usuario") {

                $user = User::find($request->input('id'));
                $user->syncRoles($request->input('roles_sel'));

                $user->name = $request->input('newName');
                $user->medicalNum = $request->input('newMedNum');
                $user->email = $request->input('newEmail');
                $user->save();

            } elseif ($request->input('edt_btn') == "Editar Rol") {

                $role = Role::find($request->input('id'));
                $role->syncPermissions($request->input('perms_sel'));

                $role->name = $request->input('newName');
                $role->save();

            } elseif ($request->input('edt_btn') == "Editar Permiso") {

                $perm = Permission::find($request->input('id'));

                $perm->name = $request->input('newName');
                $perm->save();

            }

            header('Location: /admin');

        } elseif ($request->input('user_id')) {

            $user = User::find($request->input('user_id'));
            $roles = Role::all();

            return view('edit', ['title' => 'Usuario', 'roles' => $roles, 'object' => $user]);

        } elseif ($request->input('role_id')) {

            $role = Role::find($request->input('role_id'));
            $perms = Permission::all();

            return view('edit', ['title' => 'Rol', 'perms' => $perms, 'object' => $role]);

        } elseif ($request->input('perm_id')) {

            $permission = Permission::find($request->input('perm_id'));
            return view('edit', ['title' => 'Permiso', 'object' => $permission]);
        }
    }
}
