@if(@$companyMessege)
	<section class="section bg-light">
		<div class="line line-top"></div>
		<div class="bg-triangle bg-triangle-dark bg-triangle-top bg-triangle-left"></div>
		<div class="bg-triangle bg-triangle-dark bg-triangle-bottom bg-triangle-right"></div>

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-8">
					<h2 class="text-center mb-4 col_title">
						{{@$companyMessege->firstHomeTitle}}         
					</h2>
					<p class="mb-5 text-justify text-muted">
					</p>
					@php
						echo $companyMessege->homeDescription;
					@endphp

					<p>&nbsp;</p>
					<p></p>
				</div>
			</div>
		</div>
	</section>
@endif