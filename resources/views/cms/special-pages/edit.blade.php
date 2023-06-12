@extends('cms.application')
@section('content')


    <!-- [ breadcrumb ] start -->
  	<div class="page-header">
  			<div class="page-block">
  					<div class="row align-items-center">
  							<div class="col-md-12">
  									<div class="page-header-title">
  											<h5 class="m-b-10">Special Pages</h5>
  									</div>
  									<ul class="breadcrumb">
  											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
  											<li class="breadcrumb-item"><a href="javascript:">Site Contents</a></li>
  											<li class="breadcrumb-item"><a href="javascript:">Pages</a></li>
  											<li class="breadcrumb-item"><a href="javascript:">Edit Special Page</a></li>
  									</ul>
  							</div>
  					</div>
  			</div>
  	</div>
  	<!-- [ breadcrumb ] end -->

  	<!-- [ Main Content ] start -->
  	<div class="main-body">
  			<div class="page-wrapper">
  				<div class="row">

  					<div class="col-md-12">
  						<div class="card">
  							<div class="card-header" > <h5>Edit <b>{{ $page->title }}</b></h5></div>
  							<div class="card-body">
                  {!! Form::model($page, ['route' => ['cms.special-pages.update', $page->id], 'method' => 'PATCH']) !!}

          					@include('cms.special-pages._form', ['submitButton' => "Update"])

          				{!! Form::close() !!}
  							</div>
  						</div>
  					</div>

  				</div>
  			</div>
  	</div>
  	<!-- [ Main Content ] end -->

@stop
