<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Auth;

use App\Admin;
use App\UserRoles;

class AdminController extends Controller
{
    /*public function index($id = NULL){   
        $title = "User List";
        $roleId =  Auth::user()->role;
        $currentUserId =  Auth::user()->id;
        $currentUser = DB::table('admins')
                        ->select('admins.*','user_roles.id','user_roles.name as roleName')
                        ->join('user_roles','user_roles.id','=','admins.role')
                        ->where('admins.id',$currentUserId)
                        ->first();
        $childUserRoleList = DB::table('user_roles')
                        ->where('user_roles.parentRole',$currentUser->role)
                        ->get();

        $otherUserList = DB::table('admins')
                        ->where('admins.id','!=',$currentUserId)
                        ->where('admins.role',$currentUser->role)
                        ->get();
       return view('admin.users.index')->with(compact('title','currentUser','childUserRoleList','otherUserList'));
    }*/

    public function index($id = NULL){   
        $title = "User List";
        $roleId =  Auth::user()->role;
        $currentUserId =  Auth::user()->id;
    
        $currentUser = DB::table('admins')
                        ->select('admins.*','user_roles.id as roleId','user_roles.name as roleName')
                        ->join('user_roles','user_roles.id','=','admins.role')
                        ->where('admins.id',$currentUserId)
                        ->first();
        $userRoleList = UserRoles::where('status',1)
                            ->where(['parentRole' => $currentUser->role])
                            ->orderBy('id','ASC')
                            ->get();
       return view('admin.users.index')->with(compact('title','currentUser','userRoleList'));
    }

    public function changeuserStatus(Request $request)
    {
        if($request->ajax())
        {
            $data = Admin::find($request->user_id);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }
        return redirect(route('users.index')) -> with( 'message', 'Wrong move!');
    }

    public function adduser(){
        $title = "Add New User";
        $userRoles = UserRoles::orderBy('id','ASC')->get();
        return view('admin.users.adduser')->with(compact('title','userRoles'));
    }

    public function saveuser(Request $request){
        $this->validation($request);

        $users = Admin::create( [     
            'name' => $request->name,           
            'email' => $request->email,           
            'username' => $request->username,
            'delivery_zone_id' => $request->delivery_zone_id,           
            'role' => $request->role,           
            'password' => bcrypt($request->password),             
            'status' => '1',             
                      
        ]);

        return redirect(route('users.index'))->with('msg','User Added Successfully');     
    }

    public function edituser($id){
        $title = "Edit User";
        $userRoles = UserRoles::orderBy('id','ASC')->get();
        $users = Admin::where('id',$id)->first();
        return view('admin.users.updateuser')->with(compact('title','users','userRoles'));
    }

    public function userProfile($id){
        $users = Admin::where('id',$id)->first();
        $userRoles = UserRoles::where('id',$users->role)->first();
        return view('admin.users.profile')->with(compact('users','userRoles'));
    }

   
    public function updateuser(Request $request){
        $this->validate(request(), [
            'role' => 'required',
            'name' => 'required',
            'email' => 'required',
            'username' => 'required',
            
        ]);
        $userId = $request->userId;

        $users = Admin::find($userId);

        $users->update( [
            'name' => $request->name,
            'delivery_zone_id' => $request->delivery_zone_id, 
            'role' => $request->role, 
            'email' => $request->email,           
            'username' => $request->username,                
        ]);

        return redirect(route('users.index'))->with('msg','User Updated Successfully');     
    }


     public function password($id){
        $title = "Change Password";
        $users = Admin::where('id',$id)->first();
        return view('admin.users.changePassword')->with(compact('title','users'));
    }

    public function passwordChange(Request $request){
        $this->validate(request(), [
            'password' => 'required',
            
        ]);
        $userId = $request->userId;

        $users = Admin::find($userId);

        $users->update( [               
            'password' => bcrypt($request->password),                
        ]);

        return redirect(route('users.index'))->with('msg','Password Changed Successfully');     
    }

    
    public function destroy(Admin $user, Request $request)
    {
        if($request->ajax())
        {
            $user->delete();
            print_r(1);       
            return;
        }

        $user->delete();
        return redirect(route('users.index')) -> with( 'message', 'Deleted Successfully');
    }

    public function NoPermission(){
        return view('admin.users.noPermission');
    }


    public function validation(Request $request)
    {
        $this->validate(request(), [
            'role' => 'required',
            'name' => 'required',
            'email' => 'required',
            'username' => 'required',
            'password' => 'required',
           
            
        ]);
    }
}
