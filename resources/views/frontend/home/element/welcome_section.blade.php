@php
	Use App\Menu;
@endphp
@if(@$welcomeSection)
	@php
		if(file_exists(@$welcomeSection->firstHomeImage)){
			$image = asset('/').$welcomeSection->firstHomeImage;
		}else{
			$image = $noImage;
		}
		$subMenu = Menu::where('id',5)->first();
      $subMenuName = str_replace([' ','/','---'], '-', $subMenu->menuName);
      $subMenuLink = route('menu.content',['menuName'=>$subMenuName,'menuId'=>$subMenu->id]);
	@endphp
	<section class="section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-6 order-md-2">
					<div class="img-effect img-effect-solid mb-5 mb-md-0">
						<img src="{{asset('/').$welcomeSection->firstHomeImage}}" class="img-fluid">
					</div>
				</div>
				<div class="col-md-6 col-lg-6 order-md-1">
					<h2 class="mb-4 col_title">
						{{@$welcomeSection->firstHomeTitle}} 	            
					</h2>
					<ul class="list-iconed text-muted">
						<p class="text-muted text-justify mb-5">
							@php
								echo $welcomeSection->homeDescription;
							@endphp
							
						</p>
					</ul>
					<a href="{{$subMenuLink}}" class="btn btn-outline-primary" style="border: 2px solid #f5ba4b;">
						About Us
					</a>

				</div>
			</div>
		</div>
	</section>
@endif