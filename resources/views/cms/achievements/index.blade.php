@extends('cms.application')
@section('content')

	<!-- [ breadcrumb ] start -->
	<div class="page-header">
		<div class="page-block">
			<div class="row align-items-center">
				<div class="col-md-7">
					<div class="page-header-title">
						<h5 class="m-b-10">Achievements</h5>
					</div>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="{{ url('/cms') }}"><i class="feather icon-home"></i></a></li>
						<li class="breadcrumb-item"><a href="javascript:">Site Contents</a></li>
						<li class="breadcrumb-item"><a href="javascript:">Informations</a></li>
						<li class="breadcrumb-item"><a href="javascript:">{{ label('lbl_achievements') }}</a></li>
					</ul>
				</div>

				<div class="col-md-5 text-right">
					<a href="{{ url('/cms/achievements/create')}}" class="btn btn-primary">Create New Achievement</a>
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
						<div class="card-header" > <h5>List Of Our Achievements</h5></div>
						<div class="card-body">
							@if($achievements->count() == 0)
								<div class="col-md-12">
									<div class="alert alert-primary" role="alert">{{ label('lbl_no_information') }}	</div>
								</div>
							@else

								<table class="table table-strip no-pg-dataTable dataTable" style="100%">
									<thead>
										<tr>
											{{-- <th>Photo</th> --}}
											<th>photo</th>
											<th>Title</th>
											<th>Created On</th>
											<th>Status</th>
											<th>Option</th>
										</tr>
									</thead>

									<tbody>

									@foreach($achievements as $key => $achievement)
										<tr class="shadow-on-hover">
											<td> <img loading="lazy" src="{{ asset('/uploads/achievements/'.$achievement->photo_url) }}" style="max-height:40px !important;"> </td>
											{{-- <td> <img loading="lazy" src="{{ asset('/uploads/achievements/'.$achievement->icon) }}" style="max-height:40px !important;"> </td> --}}
											<td>@php echo	wordwrap($achievement->title,60,"</br>")	@endphp </td>
											<td>{{ date_format(date_create($achievement->created_at), 'dS M Y, H:i:s') }}</td>
											<td>@if ($achievement->active) Published @else UnPublished @endif<br/></td>
											<td>
												<a href="{{ URL::route('cms.achievements.edit', $achievement->id) }}" class="label theme-bg2 text-white f-12">View & Edit</a>
												{!! link_to_route('cms.achievements.destroy', "delete", array($achievement->id), array('data-method' => 'delete', 'data-confirm' => 'Are you Sure' ,'class' => 'label theme-b bg-danger text-white f-12')) !!}
											</td>
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
	</div>
	<!-- [ Main Content ] end -->

@stop
