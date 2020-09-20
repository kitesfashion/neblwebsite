@extends('admin.layouts.master')

@section('content')
    <a href="{{ route('headerArticle.block',['section'=>'contactAddress','title'=>"Header Block of Contact Address List"]) }}" class="btn btn-danger">Header Info</a>
    <div class="table-responsive">
        <table id="companyTable" class="table table-bordered table-striped datatable"  name="companyTable">
            <thead>
                <tr>
                    <th width="5%">SL</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th width="15%">Phone No</th>
                    <th width="5%">Order</th>
                    <th width="5%">Status</th>
                    <th width="5%">Action</th>
                </tr>
            </thead>
            <tbody id="tbody">
                <?php $i = 0; ?>
            	@foreach($contactAddressList as $contactAddress)
                <?php $i++; ?>                        	
            	<tr class="row_{{$contactAddress->id}}">
                    <td>{{ $i }}</td>
                    <td>{{$contactAddress->name}}</td>
                    <td>{{$contactAddress->siteEmail1}}</td>
                    <td>{{$contactAddress->mobile1}}</td>
                    <td style="text-align: center;">{{ $contactAddress->orderBy }}</td>
                    <td>
                        <?php echo \App\Link::status($contactAddress->id,$contactAddress->status)?>
                    </td>
                    <td class="text-nowrap">
                    <?php echo \App\Link::action($contactAddress->id)?>
                    </td>
                </tr>
            	@endforeach
            </tbody>
        </table>
    </div>
@endsection

@section('custom-js')

    <script>
        $(document).ready(function() {
            var updateThis ;

            
            //ajax delete code
            $('#companyTable tbody').on( 'click', 'i.fa-trash', function () {
                $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
                });

                timeZoneId = $(this).parent().data('id');
                var tableRow = this;
                swal({   
                    title: "Are you sure?",   
                    text: "You will not be able to recover this imaginary file!",   
                    type: "warning",   
                    showCancelButton: true,   
                    confirmButtonColor: "#DD6B55",   
                    confirmButtonText: "Yes, delete it!",   
                    cancelButtonText: "No, cancel plx!",   
                    closeOnConfirm: false,   
                    closeOnCancel: false 
                }, function(isConfirm){   
                    if (isConfirm) {     
                       $.ajax({
                            type: "POST",
                           url : "{{ route('contactAddress.delete',0) }}",
                            data : {timeZoneId:timeZoneId},
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "contactAddress Deleted Successfully!",
                                    timer: 1000,
                                    html: true,
                                });
                                $('.row_'+timeZoneId).remove();
                            },
                            error: function(response) {
                                error = "Failed.";
                                swal({
                                    title: "<small class='text-danger'>Error!</small>", 
                                    type: "error",
                                    text: error,
                                    timer: 1000,
                                    html: true,
                                });
                            }
                        });    
                    } else { 
                        swal({
                            title: "Cancelled", 
                            type: "error",
                            text: "Your Data is safe :)",
                            timer: 1000,
                            html: true,
                        });    
                    } 
                });
            }); 

        });
                
        //ajax status change code
        function statusChange(timeZoneId) {
            $.ajax({
                    type: "GET",
                    url: "{{ route('contactAddress.status', 0) }}",
                    data: "timeZoneId=" + timeZoneId,
                    cache:false,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        swal({
                            title: "<small class='text-success'>Success!</small>", 
                            type: "success",
                            text: "Status successfully updated!",
                            timer: 1000,
                            html: true,
                        });
                    },
                    error: function(response) {
                        error = "Failed.";
                        swal({
                            title: "<small class='text-danger'>Error!</small>", 
                            type: "error",
                            text: error,
                            timer: 2000,
                            html: true,
                        });
                    }
                });
            }
    </script>

@endsection


