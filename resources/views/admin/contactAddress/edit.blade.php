@extends('admin.layouts.master')

@section('content')
    <form class="form-horizontal" action="{{route('contactAddress.edit',$contactAddress->id)}}" method="POST" enctype="multipart/form-data" name="editSettings">
        {{ csrf_field() }}
        <div class="row">
           <div class="col-md-6">
                <div class="form-group {{ $errors->has('title') ? ' has-danger' : '' }}">
                    <label for="title">Title</label>
                    <input type="text" class="form-control form-control-danger" placeholder="title" name="title" value="{{ $contactAddress->title }}">
                    @if ($errors->has('title'))
                    @foreach($errors->get('title') as $error)
                    <div class="form-control-feedback">{{ $error }}</div>
                    @endforeach
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group {{ $errors->has('name') ? ' has-danger' : '' }}">
                            <label for="name">Name</label>
                            <input type="text" class="form-control form-control-danger" placeholder="name" name="name" value="{{ $contactAddress->name }}">
                            @if ($errors->has('name'))
                            @foreach($errors->get('name') as $error)
                            <div class="form-control-feedback">{{ $error }}</div>
                            @endforeach
                            @endif
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group {{ $errors->has('designation') ? ' has-danger' : '' }}">
                            <label for="designation">Designation</label>
                            <input type="text" class="form-control form-control-danger" placeholder="designation" name="designation" value="{{ $contactAddress->designation }}">
                            @if ($errors->has('designation'))
                            @foreach($errors->get('designation') as $error)
                            <div class="form-control-feedback">{{ $error }}</div>
                            @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group {{ $errors->has('siteEmail1') ? ' has-danger' : '' }}">
                            <label for="email-address-1">Email Address 1</label>
                            <input type="text" class="form-control form-control-danger" placeholder="Email Address" name="siteEmail1" value="{{ $contactAddress->siteEmail1 }}">
                            @if ($errors->has('siteEmail1'))
                                @foreach($errors->get('siteEmail1') as $error)
                                    <div class="form-control-feedback">{{ $error }}</div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group {{ $errors->has('siteEmail2') ? ' has-danger' : '' }}">
                            <label for="email-address-2">Email Address 2</label>
                            <input type="email" class="form-control form-control-danger" placeholder="Email Address" name="siteEmail2" value="{{ $contactAddress->siteEmail2 }}">
                            @if ($errors->has('siteEmail2'))
                                @foreach($errors->get('siteEmail2') as $error)
                                    <div class="form-control-feedback">{{ $error }}</div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group {{ $errors->has('mobile1') ? ' has-danger' : '' }}">
                            <label for="phone-number-1">Phone Number 1</label>
                            <input type="text" class="form-control form-control-danger" placeholder="First Phone Number" name="mobile1" value="{{ $contactAddress->mobile1 }}" required>
                            @if ($errors->has('mobile1'))
                                @foreach($errors->get('mobile1') as $error)
                                    <div class="form-control-feedback">{{ $error }}</div>
                                @endforeach
                            @endif
                        </div>
                    </div>

                     <div class="col-md-6">
                        <div class="form-group {{ $errors->has('mobile2') ? ' has-danger' : '' }}">
                            <label for="phone-number-2">Phone Number 2</label>
                            <input type="text" class="form-control form-control-danger" placeholder="Second Phone Number" name="mobile2" value="{{ $contactAddress->mobile2 }}">
                            @if ($errors->has('mobile2'))
                                @foreach($errors->get('mobile2') as $error)
                                    <div class="form-control-feedback">{{ $error }}</div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group {{ $errors->has('siteAddress1') ? ' has-danger' : '' }}">
                    <label for="web-address-1">Address 1</label>
                    <textarea class="form-control form-control-danger" name="siteAddress1" required>{{ $contactAddress->siteAddress1 }}</textarea>
                    @if ($errors->has('siteAddress1'))
                        @foreach($errors->get('siteAddress1') as $error)
                            <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group {{ $errors->has('siteAddress2') ? ' has-danger' : '' }}">
                    <label for="web-address-2">Address 2</label>
                    <textarea class="form-control form-control-danger" name="siteAddress2">{{ $contactAddress->siteAddress2 }}</textarea>
                    @if ($errors->has('siteAddress2'))
                        @foreach($errors->get('siteAddress2') as $error)
                            <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group {{ $errors->has('orderBy') ? ' has-danger' : '' }}">
                    <label for="orderBy">Order By</label>
                    <input type="number"  name="orderBy" class="form-control" value="{{ $contactAddress->orderBy }}" required>
                    @if ($errors->has('orderBy'))
                        @foreach($errors->get('orderBy') as $error)
                            <div class="form-control-feedback">{{ $error }}</div>
                        @endforeach
                    @endif
                </div>
            </div>

            <div class="col-md-6">
               <div class="form-group row {{ $errors->has('status') ? ' has-danger' : '' }}">
                    <label class="col-sm-3 col-form-label">Publication status</label>
                    <div class="col-sm-9 row">
                        <div class="form-control">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="published" name="status" class="custom-control-input" checked="" value="1" required>
                                <label class="custom-control-label" for="published">Published</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" id="unpublished" name="status" class="custom-control-input" value="0">
                                <label class="custom-control-label" for="unpublished">Unpublished</label>
                            </div>
                        </div>                            
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 m-b-20 text-right">    
                <button type="submit" class="btn btn-info waves-effect"><i class="fa fa-save"></i> UPDATE</button> 
            </div>                               
        </div>
    </div>
    </form>

    <script type="text/javascript">
        document.forms['form'].elements['status'].value = "{{$contactAddress->status}}";
    </script>
            
@endsection