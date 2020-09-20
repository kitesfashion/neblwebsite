@extends('admin.layouts.master')

@section('content')
    <form class="form-horizontal" action="{{route('timeZone.edit',$timeZone->id)}}" method="POST" enctype="multipart/form-data" name="editSettings">
        {{ csrf_field() }}
        <div class="row">
            <div class="col-md-6">
                <div class="form-group {{ $errors->has('name') ? ' has-danger' : '' }}">
                    <label for="name">Name</label>
                    <input type="text" class="form-control form-control-danger" placeholder="name" name="name" value="{{ $timeZone->name }}">
                    @if ($errors->has('name'))
                    @foreach($errors->get('name') as $error)
                    <div class="form-control-feedback">{{ $error }}</div>
                    @endforeach
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group {{ $errors->has('siteEmail1') ? ' has-danger' : '' }}">
                            <label for="email-address-1">Email Address 1</label>
                            <input type="text" class="form-control form-control-danger" placeholder="Email Address" name="siteEmail1" value="{{ $timeZone->siteEmail1 }}">
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
                            <input type="email" class="form-control form-control-danger" placeholder="Email Address" name="siteEmail2" value="{{ $timeZone->siteEmail2 }}">
                            @if ($errors->has('siteEmail2'))
                                @foreach($errors->get('siteEmail2') as $error)
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
                        <div class="form-group {{ $errors->has('mobile1') ? ' has-danger' : '' }}">
                            <label for="phone-number-1">Phone Number 1</label>
                            <input type="text" class="form-control form-control-danger" placeholder="First Phone Number" name="mobile1" value="{{ $timeZone->mobile1 }}" required>
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
                            <input type="text" class="form-control form-control-danger" placeholder="Second Phone Number" name="mobile2" value="{{ $timeZone->mobile2 }}">
                            @if ($errors->has('mobile2'))
                                @foreach($errors->get('mobile2') as $error)
                                    <div class="form-control-feedback">{{ $error }}</div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
           
           <div class="col-md-6">
                <div class="form-group {{ $errors->has('image') ? ' has-danger' : '' }}">
                    <label for="image">Image</label>
                    <input type="file" class="form-control form-control-danger" name="image">
                    <span class="imageSizeInfo">
                        /* Min Width: 680px, Min Height: 520px */ <br>
                    </span>
                    <?php if (file_exists(@$timeZone->image)) { ?> 
                    <img src="{{asset('/').@$timeZone->image}}" style="height: 90px;">
                    <?php }else{ ?>
                        <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 94px;">
                    <?php } ?>
                    @if ($errors->has('image'))
                    @foreach($errors->get('image') as $error)
                    <div class="form-control-feedback">{{ $error }}</div>
                    @endforeach
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="form-group {{ $errors->has('siteAddress1') ? ' has-danger' : '' }}">
                    <label for="web-address-1">Address 1</label>
                    <textarea class="form-control form-control-danger" name="siteAddress1" required>{{ $timeZone->siteAddress1 }}</textarea>
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
                    <textarea class="form-control form-control-danger" name="siteAddress2" required>{{ $timeZone->siteAddress2 }}</textarea>
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
                    <input type="number"  name="orderBy" class="form-control" value="{{ $timeZone->orderBy }}" required>
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
        document.forms['form'].elements['status'].value = "{{$timeZone->status}}";
    </script>
            
@endsection