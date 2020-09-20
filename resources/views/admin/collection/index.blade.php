@extends('admin.layouts.master')

@section('content')
<?php
    use App\Article;
?>
<form>
    <div class="row">
        <div class="col-md-3">
            <h5><strong>Search By Parent</strong></h5>
            <select name="parentArticleParam" class="form-control chosen-select 
                parentArticle">
                    <option value="">View All</option>
                @foreach ($parentArticleList as $parentArticle)
                   @php
                    if($parentArticle->id == 9 || $parentArticle->parentArticle == 9){

                       if(@$parentArticleParam){
                        if($parentArticle->id == $parentArticleParam){
                            $selected = 'selected';
                        }else{
                            $selected = '';
                        }
                    }

                    $getArticle = Article::where('parentArticle',$parentArticle->id)->get();
                    if($parentArticle->parentArticle == NULL OR count($getArticle) > 0){
                   @endphp
                    <option {{@$selected}} value="{{$parentArticle->id}}">{{$parentArticle->articleName}}</option>
                    @php
                        } }
                    @endphp
                @endforeach
            </select>
            
        </div>
        <div class="col-md-3">
            <div style="margin-top: 27px;"></div>
            <select name="subArticleParam" class="form-control chosen-select 
                subArticle">
                <option value="">Select Sub Category</option>
                @foreach ($subArticleList as $subArticle)
                   @php
                    $collectionProductParentArticle = Article::where('id',@$subArticle->parentArticle)->first();

                    if(@$collectionProductParentArticle->parentArticle == 9){

                       if(@$subArticleParam){
                        if($subArticle->id == $subArticleParam){
                            $selected = 'selected';
                        }else{
                            $selected = '';
                        }
                    }

                   @endphp
                    <option {{@$selected}} value="{{$subArticle->id}}">{{$subArticle->articleName}}</option>
                    @php
                     }
                    @endphp
                @endforeach
            </select>
            
        </div>
    </div>
</form>
<div class="table-responsive">
    <table id="articles" class="table table-bordered table-striped datatable"  name="articles">
        <thead>
            <tr>
                <th width="5%">SL</th>
                <th>Name</th>
                <th width="18%">Title</th>
                <th width="18%">Parent Article</th>
                <th width="12%">Home Image</th>
                <th width="12%">Inner Image</th>
                <th width="5%">Status</th>
                <th width="5%">Action</th>
            </tr>
        </thead>
        <tbody id="tbody">
            <?php $i = 0; ?>
        	@foreach($articles as $article)
            <?php 
                $i++;
                $collectionProductParentArticle = Article::where('id',@$article->parentArticle)->first();
                $childParentArticle = Article::where('id',@$collectionProductParentArticle->parentArticle)->first();
                $subParentArticle = Article::where('id',@$childParentArticle->parentArticle)->first();

                if(@$subParentArticle->id == 9 || @$childParentArticle->id == 9 || @$collectionProductParentArticle->id == 9 || $article->id == 9){

                    $parentArticle = Article::where('id',$article->parentArticle)->first();
                    if(@$parentArticle){
                        $parentArticleName = $parentArticle->articleName;
                    }else{
                        $parentArticleName = '';
                    }

                    if($article->firstHomeTitle){
                        $articleTitle = $article->firstHomeTitle;
                    }else{
                        $articleTitle = $article->firstInnerTitle;
                    }
            ?>                        	
        	<tr class="row_{{$article->id}}">
                <td>{{ $i }}</td>
                 <td>{{$article->articleName}}</td>
                 <td>{{@$articleTitle}}</td>
                 <td>{{$parentArticleName}}</td>
                 <td>
                     <?php if (file_exists(@$article->firstHomeImage)) { ?> 
                        <img src="{{asset('/').@$article->firstHomeImage}}" style="height: 40px;">
                    <?php }else{ ?>
                        <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 40px;">
                    <?php } ?>
                 </td>
                 <td>
                     <?php if (file_exists(@$article->firstInnerImage)) { ?> 
                        <img src="{{asset('/').@$article->firstInnerImage}}" style="height: 40px;">
                    <?php }else{ ?>
                        <img src="{{asset('/public/frontend/noImage.jpg')}}" style="height: 40px;">
                    <?php } ?>
                 </td>
                 <td>
                    <?php echo \App\Link::status($article->id,$article->articleStatus)?>
                </td>
                <td class="text-nowrap">
                <?php echo \App\Link::action($article->id)?>
                </td>
            </tr>
            <?php } ?>
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
        $('#articles tbody').on( 'click', 'i.fa-trash', function () {
            $.ajaxSetup({
              headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              }
            });

            articleId = $(this).parent().data('id');
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
                        url : "{{ route('products.delete',0) }}",
                        data : {articleId:articleId},
                        success: function(response) {
                            swal({
                                title: "<small class='text-success'>Success!</small>", 
                                type: "success",
                                text: "Collection Deleted Successfully!",
                                timer: 1000,
                                html: true,
                            });
                            $('.row_'+articleId).remove();
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
                        text: "Your data is safe :)",
                        timer: 1000,
                        html: true,
                    });    
                } 
            });
        }); 

    });
            
    //ajax status change code
    function statusChange(articleId) {
        $.ajax({
                type: "GET",
                url: "{{ route('products.status', 0) }}",
                data: "articleId=" + articleId,
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

<script type="text/javascript">
    $('.parentArticle').on('change', function(){
        var parentArticle = $('.parentArticle').val();
        $(".subArticle").html('');
      $.ajaxSetup({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
        }); 
       $.ajax({
            type: "POST",
            url : "{{ route('getSubArticle') }}",
            data : {
                parentArticle:parentArticle,
            },
            success: function(response) {
                var subArticleList = response.subArticles;
                var subArticle = $(".subArticle").html('');
                if(response.countSubArticles == 0){
                    window.location.href = "{{route('collection.index')}}"+"?parentArticle="+parentArticle;

                }else{
                    subArticle.append('<option value="">Select Sub Category</option>');
                    for (var row of subArticleList) {
                        subArticle.append($("<option></option>")
                                .attr("value", row.id).text(row.articleName));
                    }
                }
                
                $('.chosen-select').chosen();
                $('.chosen-select').trigger("chosen:updated");
            }
        });
    }); 


    $('.subArticle').on('change', function(){
        var parentArticle = $('.parentArticle').val();
        var subArticleParam = $('.subArticle').val();
        if(parentArticle){
            window.location.href = "{{route('collection.index')}}"+"?parentArticle="+parentArticle+"&subArticle="+subArticleParam;
        }else{
            alert('Please Select Parent Article !');
        }
    }); 
</script>

@endsection


