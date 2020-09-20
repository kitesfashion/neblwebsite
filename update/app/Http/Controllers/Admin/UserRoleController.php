<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\UserRoles;
use App\UserMenu;
use Illuminate\Http\Request;

class UserRoleController extends Controller
{
   
    public function index()
    {   $title = "User Roll";
        $userRoles = UserRoles::orderBy('id','ASC')->get();
       return view('admin.userRole.index')->with(compact('title','userRoles'));
    }

    public function changeuserRoleStatus(Request $request)
    {
        if($request->ajax())
        {
            $data = UserRoles::find($request->userRole_id);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }
        return redirect(route('user-roles.index')) -> with( 'message', 'Wrong move!');
    }

    public function adduserRole(){
        $title = "Add New User Roll";
        $userRoleList = UserRoles::orderBy('id','ASC')->get();
        return view('admin.userRole.adduserRole')->with(compact('title','userRoleList'));
    }

    public function saveuserRole(Request $request){
        $this->validation($request);

        $userRoles = UserRoles::create( [     
            'name' => $request->name,                   
            'parentRole' => $request->parentRole,                      
            'status' => '0',             
                      
        ]);

        // $product = Product::create($request->all());

        return redirect(route('user-roles.index'))->with('msg','User Role Added Successfully');     
    }

    public function edituserRole($id){
        $title = "Edit User Roll";
        $userRoleList = UserRoles::orderBy('id','ASC')->get();
        $userRoles = UserRoles::where('id',$id)->first();
        return view('admin.userRole.updateuserRole')->with(compact('title','userRoleList','userRoles'));
    }
   
    public function updateuserRole(Request $request){
        $this->validate(request(), [          
            'name' => 'required',
        ]);

        $userroleId = $request->userroleId;

        $userRoles = UserRoles::find($userroleId);

        $userRoles->update( [
            'name' => $request->name,                     
            'parentRole' => $request->parentRole,                     
        ]);

        // $product = Product::create($request->all());

        return redirect(route('user-roles.index'))->with('msg','User Role Updated Successfully');     
    }



    
    public function destroy(UserRoles $userRole, Request $request)
    {
        if($request->ajax())
        {
            $userRole->delete();
            print_r(1);       
            return;
        }

        $admin->delete();
        return redirect(route('users.index')) -> with( 'message', 'Deleted Successfully');
    }


    public function validation(Request $request)
    {
        $this->validate(request(), [  
            'name' => 'required',

        ]);
    }

    public function permission($id){
        $userMenus = UserMenu::orderBy('id','ASC')->where('menuStatus',1)->get();
        $userRoles = UserRoles::where('id',$id)->first();
        $title = "User Role Permission( ".$userRoles->name." )";
        return view('admin.userRole.userRolePermission')->with(compact('userRoles','userMenus','title'));
    }

    public function permissionUpdate(Request $request){
        $userroleId = $request->userroleId;
        $userRoles = UserRoles::find($userroleId);
       
            $usermenus = implode(',', $request->usermenu);
        
        if(@$request->usermenuAction){
            $usermenuAction = implode(',', @$request->usermenuAction);
        }else{
            $usermenuAction = '';
        }
        $userRoles->update( [
            'permission' => @$usermenus,                     
            'actionPermission' => @$usermenuAction,                     
        ]);

        return redirect(route('user-roles.index'))->with('msg','User Role Permission Updated Successfully');     
    }
}
