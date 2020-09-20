@extends('admin.layouts.master')

@section('content')
    <form class="form-horizontal" action="{{ route('user.changePassword') }}" method="POST" enctype="multipart/form-data" id="newProduct" name="newProduct">
        {{ csrf_field() }}
        <div class="col-md-12 m-b-20 text-right">    
            <button type="submit" class="btn btn-info waves-effect">Save</button> 
        </div>
        <br>

         <input type="hidden" name="userId" value="{{$users->id}}">

        <div class="form-group row {{ $errors->has('password') ? ' has-danger' : '' }}">
            <label for="inputHorizontalDnger" class="col-sm-3 col-form-label">Password</label>
            <div class="col-sm-9">
                <input type="password" class="form-control form-control-danger" placeholder="Password" name="password" value="" required>
                @if ($errors->has('password'))
                @foreach($errors->get('password') as $error)
                <div class="form-control-feedback">{{ $error }}</div>
                @endforeach
                @endif
            </div>
        </div>                
    </form>
@endsection


