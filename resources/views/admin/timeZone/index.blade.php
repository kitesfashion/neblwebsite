@extends('admin.layouts.master')

@section('content')
    <a href="{{ route('headerArticle.block',['section'=>'timeZone','title'=>"Description Block of Time Zone"]) }}" class="btn btn-danger">Header Info</a>
    <div class="table-responsive">
        <table id="companyTable" class="table table-bordered table-striped datatable"  name="companyTable">
            <thead>
                <tr>
                    <th width="5%">SL</th>
                    <th>Name</th>
                    <th width="15%">Phone No</th>
                    <th width="10%">Image</th>
                    <th width="5%">Order</th>
                    <th width="5%">Status</th>
                    <th width="5%">Action</th>
                </tr>
            </thead>
            <tbody id="tbody">
                <?php $i = 0; ?>
            	@foreach($timeZoneList as $timeZone)
                <?php $i++; ?>                        	
            	<tr class="row_{{$timeZone->id}}">
                    <td>{{ $i }}</td>
                    <td>{{$timeZone->name}}</td>
                     <td>{{$timeZone->mobile1}}</td>
                      <td>
                         <?php if (file_exists(@$timeZone->image)) { ?> 
                            <img src="{{asset('/').@$timeZone->image}}" style="height: 40px;">
                        <?php }else{ ?>
                            <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 40px;">
                        <?php } ?>
                     </td>
                     <td style="text-align: center;">{{ $timeZone->orderBy }}</td>
                     <td>
                        <?php echo \App\Link::status($timeZone->id,$timeZone->status)?>
                    </td>
                    <td class="text-nowrap">
                    <?php echo \App\Link::action($timeZone->id)?>
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
                           url : "{{ route('timeZone.delete',0) }}",
                            data : {timeZoneId:timeZoneId},
                            success: function(response) {
                                swal({
                                    title: "<small class='text-success'>Success!</small>", 
                                    type: "success",
                                    text: "TimeZone Deleted Successfully!",
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
                    url: "{{ route('timeZone.status', 0) }}",
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


