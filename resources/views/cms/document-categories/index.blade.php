@extends('cms.application')
@section('content')

	<!-- [ breadcrumb ] start -->
	<div class="page-header">
			<div class="page-block">
					<div class="row align-items-center">
							<div class="col-md-7">
									<div class="page-header-title">
											<h5 class="m-b-10">Documents Categories</h5>
									</div>
									<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="javascript:">Site Contents</a></li>
											<li class="breadcrumb-item"><a href="javascript:">Documents Categories</a></li>
									</ul>
							</div>

							<div class="col-md-5 text-right">
									<a href="#" class="btn btn-outline-primary" onclick="setDocumentView('grid')" class="mr-2"> <i class="fas fa-th"></i> Grid</a>
									<a href="#" class="btn btn-outline-primary" onclick="setDocumentView('list')" class="mr-2"> <i class="fas fa-list"></i> List</a>
									<a href="{{ URL::route('cms.document-categories.create') }}" data-toggle="modal" data-target="#newCategory" class="btn btn-primary">Create New Category</a>
							</div>
					</div>
			</div>
	</div>
	<!-- [ breadcrumb ] end -->

	<!-- [ Main Content ] start -->
	<div class="main-body">
			<div class="page-wrapper">

				<div id="grid-view">
					<div class="row">

								@foreach($categories as $key => $category)

										<a class="col-md-2 my-3" href="{{ url('/cms/document-categories/'.$category->slug)}}">
											<div class="ffolder small {{ ($category->active == 1)? 'gray': 'pink'}}">
											     <span class="text-white">{{ number_format(count($category->documents))}} files</span>
											</div>
											<h6>{{ $category->title}}</h6>
										</a>

								@endforeach
					</div>

				</div>


				<div class="row" id="list-view">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header" > <h5>List Of Documents Categories</h5></div>
							<div class="card-body">
								@if($categories->count() == 0)
									<div class="col-md-12">
										<div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}	</div>
									</div>
								@else
									<table class="table table-hover table-striped dataTable">
									<thead>
										<tr>
											<th>Category Name</th>
											<th>Documents</th>
											<th>Status</th>
											<th>Options</th>
										</tr>
									</thead>

									<tbody>

									@foreach($categories as $key => $category)
										<tr>
											<td>{{ $category->title_en }}</td>
											<td>{{ number_format(count($category->documents)) }}</td>
											<td>@if ($category->active ==1) Active @else in Active	@endif</td>
											<td>
												<a href="{{ URL::route('cms.document-categories.show', $category->slug) }}" class="label theme-bg text-white f-12">View</a>
												<a href="{{ URL::route('cms.document-categories.edit', $category->id) }}" data-toggle="modal" data-target="#OpenModelContainer{{ $key }}"  class="label theme-bg2 text-white f-12">Edit</a>
												{!! link_to_route('cms.document-categories.destroy', "Delete", array($category->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
											</td>

											<div class="modal fade" id="OpenModelContainer{{ $key }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLongTitle"> Update {{ $category->title }} </h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">×</span>
															</button>
														</div>
														<div class="modal-body">
																			{!! Form::model($category, ['route' => ['cms.document-categories.update', $category->id], 'method' => 'PATCH']) !!}

																				@include('cms.document-categories._form', ['submitButton' => "Update"])

																			{!! Form::close() !!}

														</div>
													</div>
												</div>
									    	</div>

										</tr>
									@endforeach
									</tbody>
								</table>
								@endif
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="modal fade" id="newCategory" tabindex="-1" role="dialog" aria-labelledby="newCategory" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
							<div class="modal-content">
									<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLongTitle"> <b>New Document Category</b> </h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">×</span>
											</button>
									</div>
									<div class="modal-body">
										{!! Form::open(['route' => 'cms.document-categories.index']) !!}

											@include('cms.document-categories._form', ['submitButton' => "Save"])

										{!! Form::close() !!}

									</div>
							</div>
					</div>
			</div>

	</div>
	<!-- [ Main Content ] end -->

@stop

@section('scripts')

	<script type="text/javascript">

		if (localStorage.getItem("document-view")) {
				var value = localStorage.getItem("document-view")
				if (value == 'grid') {
					document.getElementById("grid-view").style.display ='block';
					document.getElementById("list-view").style.display ='none';
				} else {
					document.getElementById("list-view").style.display ='block';
					document.getElementById("grid-view").style.display ='none';
				}
		} else {
			localStorage.setItem("document-view", 'grid');
		}

		function setDocumentView($value){
			localStorage.setItem("document-view", $value);
			if ($value == 'grid') {
				document.getElementById("grid-view").style.display ='block';
				document.getElementById("list-view").style.display ='none';
			} else {
				document.getElementById("list-view").style.display ='block';
				document.getElementById("grid-view").style.display ='none';
			}
		}

	</script>
@stop
