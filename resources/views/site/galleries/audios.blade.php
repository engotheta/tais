@extends('site.layout')
@section('title')

    {!! label('lbl_audios_gallery') !!}

@endsection

@section('content')

  <div class="col-12 px-0">
    <div class="home-page col-12 px-0">
      <div class="row px-0">

        <!-- main body -->
        <div class="col-12 mt-xs-0 px-xs-0">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb" class="mb-0">
                        <ol class="breadcrumb px-1">
                            <li class="breadcrumb-item"><a href="{{ url('/')}}"><span class="fas fa-home"></span></a></li>
                            <li class="breadcrumb-item active" aria-current="page">{!! label('lbl_audios_gallery') !!}</li>
                        </ol>
                    </nav>
                </div>
          </div>

          <div class="col-12 mt-3 main-content">
            <div class="row px-0 main-content-inside">

              <div class="col-12 what-we-do mt-3 py-3">
                @empty ($albums)
                  <div class="col-12">
                    {!! label('lbl_no_information') !!}
                  </div>
                @else
                  @foreach ($albums as $key => $album)
                    <div class="row mb-4">
                      <div class="col-md-12">
                        <h5 class="my-2 text-left text-xs-left section-header"><a href="{{ url('galleries/audios/'.$album['album']->slug)}}">{{ $album['album']->{langdb('title')} }}</a></h5>
                        <div class="row mt-4 justify-content-center d-flex px-4 pl-xs-3 {!! (count($album['audios']) > 3)?'slick-slide1':'' !!}">

                          @if(count($album['audios']))
                              @foreach($album['audios'] as $audio)
                                <div class="col-md-3 mx-1">
                                    <div class="slide-video">
                                      <img src="{{ asset($audio->path.$audio->filename) }}" alt="{!! $audio->title_en !!}">
                                      <audio src="{{ asset($audio->path.$audio->url) }}" controls class="w-100"> </audio>

                                    </div>
                                  </div>
                              @endforeach
                          @endif
                        </div>

                     </div>
                    </div>
                  @endforeach
                @endempty

              </div>
            </div>
          </div>
        <!-- /main body -->
      </div>
    </div>
    <div class="col-12">
      <img src="{{ asset('site/images/bg/g4.png')}}" class="w-100" style="transform:rotate(180deg)">
    </div>
  </div>

@stop
