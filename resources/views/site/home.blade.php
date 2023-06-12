@extends('site.layout')
@section('title')
  {{ label('lbl_site_title') }} - {{ label('lbl_home') }}
@endsection

@section('content')

<div class="home-page-bodyyyy position-relative"> 

  <div class="bg-light position-relative d-noneeeee">
    <!--<div class="w-100 top-left position-absolute bg-gradient-primary-transparentt" style="background:#000; opacity: 0.1; height:50%; transform: scaleY(1);"></div>-->
    <!--<div class="h-100 w-100 top-left position-absolute bg-gradient-primary-transparentt" style="background:#000; opacity: 0.08; transform: scaleY(-1);"></div>-->
    <div class="home-slider  position-relative ">
   
      @if(count($slideshow))
        <div class="slider-holder slider-bggg has-show-on-hover">
          <div id="homeCarousel" class="carousel slide carousel-fade h-100 bg-primary divideee position-relative" data-ride="carousel">
            {{-- <ol class="carousel-indicators" style="z-index: 999; transform:translateY(10px)" >
              <li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
              @foreach($slideshow as $key => $photo) @break($key===count($slideshow)-1) <li data-target="#homeCarousel" data-slide-to="{{$key+1}}"></li>@endforeach
            </ol>  --}}
            <div class="slider-nav-controls w-100 px-3  position-absolute">
              <div class="slider-nav-arrows " >
                <span class="nav-control p-3 hover-icon-left px-4 float-left" href="#homeCarousel" role="button" data-slide="prev">
                  <span class="icon" aria-hidden="true"> <i class="fa fa-chevron-left "></i></span>
                  <span class="sr-only">Previous</span>
                </span>
                <span class="nav-control hover-icon-right p-3 px-4 float-right" href="#homeCarousel" role="button" data-slide="next">
                  <span class="icon" aria-hidden="true"> <i class="fa fa-chevron-right "></i></span>
                  <span class="sr-only">Next</span>
                </span>
              </div>
            </div>
            <div class="carousel-inner ">
              @foreach($slideshow as $key => $photo)
              <div class="carousel-item @if ($key == 0) active  @endif" >    
                <div class="full-hd-container background-image" 
                style="background-image:url('{{asset('uploads/gallery/'.$photo->filename)}}'); background-attachment:fixedddd; background-position:top !important">
                  {{-- <img class="d-block w-100" src="{{asset('uploads/gallery/'.$photo->filename)}}" alt="First slide"> --}}
                </div>  
                @if (strlen(trim($photo->content)) > 2)                 
                <div class="cursor-pointer position-absolute bottom-left w-100">
                  <div class="d-none d-sm-block w-100  p-3  text-white text-bold text-center position-relative"> 
                    <div class="bg-primary h-100 w-100 position-absolute top-left" style="opacity: 0.3"> </div>
                    <div class="bg-primaryy h-100 w-100 position-absolute top-left" style="background:#000; opacity: 0.1"> </div> 
                    {{ str_limit(strip_tags($photo->content),60) }}
                  </div>
                </div>
                @endif
              </div>
              @endforeach
            </div>
          </div>
        </div>
      @endif

      @if(isset($regional_office->phone))
      <div class="d-flex position-absolute top-left m-3 m-lg-4 align-items-center rounded-medium bg-primary
      text-white has-hover-text-secondary box-shadow-slight p-2 px-3 cursor-pointer"
       style="z-index: 999">
        <span class="mr-3 box-35 position-relative flex-center ">
          <i class="fa fa-phone hover-text-secondary"></i>
          <span class="position-absolute box-35 round border border-color-white expanding-item"></span>
        </span>
        <div class="">
          <div class="faded">{{label('lbl_call_us')}} </div>
          <div class="hover-text-secondary">{{$regional_office->phone}}</div>
        </div>
      </div>
      @endif



      <!-- quick scroll -->
      {{-- <span class=" scroll-to-content text-white position-absolute cursor-pointer box-40 "  >
        <!-- <i class="fa fa-chevron-down"></i> -->
        <svg xmlns="http://www.w3.org/2000/svg" class="mt-5" viewBox="0 0 90.55 50.67"><polygon class="stroke-white " points="45.27 17.54 1.97 1.97 45.27 48.69 88.58 1.97 45.27 17.54"/></g></g></svg>
      </span> --}}
      <!-- an anchor for scrolling to content -->
      <span class="position-absolute" style="height:0px; width:0px; bottom:5%" id="homeContentTether"></span>
  </div>
  
  <!--this is comment out by addition of d-none-->
  <!---->
  <!---->
  <div class="owl-carousel-3 d-none border-top overflow-hidden bg-white has-show-on-hover border-bottom border-color-black owl-theme owl-loaded parallax-banner position-relative">
   {{-- <div class="bg-white h-100 w-100 position-absolute top-left faded"></div> --}}
   <div class="owl-stage-outer " >
     <div class="owl-stage " style="display:flex">
       @foreach($licensed_entity_categories as $key => $category)
          <?php 
            if(strpos(strtolower($category->title_en), 'agent') !== false) {$icon = asset('site/images/svgs/agent.svg');}
            elseif(strpos(strtolower($category->title_en), 'compan') !== false) {$icon = asset('site/images/svgs/business.svg');}
            elseif(strpos(strtolower($category->title_en), 'asseso') !== false) {$icon = asset('site/images/svgs/business-deal.svg');}
            elseif(strpos(strtolower($category->title_en), 'reinsurance brokers') !== false) {$icon = asset('site/images/svgs/crown.svg');}
            elseif(strpos(strtolower($category->title_en), 'licensing brokers') !== false) {$icon = asset('site/images/svgs/license.svg');}
            elseif(strpos(strtolower($category->title_en), 'accredite') !== false) {$icon = asset('site/images/svgs/airplane.svg');}
            else {$icon = asset('site/images/svgs/insurance.svg');}
          ?>
         <div class="owl-item text-center has-hover-bounce last-no-border-element text-center position-relative" >
           <a href="{{ url('/licensed-entities/'.$category->slug)}}" class=" hover-bg border-right border-color-dark
              box-shadow-slightt d-block p-2">
             <div class="py-2  d-flex h-100 justify-content-center position-relative align-items-center ">
               <div class="border-primaryyy border-width-3 round d-flex 
                   position-absolute justify-content-center align-items-center m-auto box-50">
               </div>
               <div class="ring d-flex position-absolute justify-content-center align-items-center m-auto box-50">
                 <div class="h-100 round w-100 position-relative d-inline-block" 
                 style="background-image:urlll('{{$category->image}}'); background-size:cover; background-position: center;">
                 </div> 
               </div>
               <div class="round bg-primaryyyy d-flex position-absolute
                justify-content-center align-items-center m-auto box-50"></div>
               <img src="{{ asset($icon) }}" class="hover-bounce dark-icon" style="width: 30px; height:auto">
             </div> 
             <div class="text-bold text-dark small">
               <span class="bg-white-transparentt d-inline-block p-1 rounded-slight">
                 <span class="px-1"> {{str_limit($category->title,40)}} </span> |  <span class="px-1 faded"> {{$category->licensedEntities->count()}} </span> 
               </span>
             </div>
           </a>
         </div>
       @endforeach
     </div>
     {{-- <div class="owl-controls  pt-4"></div> --}}
     <!-- get button here -->
     <!-- <div class="d-none " >
       <span class="hover-icon-left show-on-hover owl-prev-template-3">
         <div class="icon box-30"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6"><polygon class="fill-primary"  points="52.51 45.8 77.5 2.5 2.5 45.8 77.5 89.1 52.51 45.8"/></svg></div>
       </span>
       <span class="hover-icon-right show-on-hover owl-next-template-3">
         <div class="icon box-30 "> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6"><polygon class="fill-primary" points="27.49 45.8 2.5 2.5 77.5 45.8 2.5 89.1 27.49 45.8"/></svg></div>
       </span>
     </div> -->
   </div>
   {{-- <div class="custom-owl-nav-3 bg-danger overflow-visible position-absolute w-100"></div> --}}
  </div>
  <!---->
  <!---->


  <div class="home-content  bg-white ">
      
    <div class="bg-white pt-4 pb-5 parallax-banner position-relative d-noneeee" style="background:urllll({{asset('site/images/bg/bg6.jpg')}}); background-size:cover; background-repeat: no-repeat;" 
      data-offset="250px" data-rate="0.2">
      <div class="bg-gradient-transparent-white-faded position-absolute top-left h-100 w-100" style="opacity:0.7"></div>
      <div class="container has-shifting-underline">
              <div class=" overflow-hidden px-3">
                <div class="pb-3 text-center pt-3 max-width-680">
                  <h5 class="text-bold text-black mb-3">{{$tira_latest_news->title}} </h5>
                  <div class="rich-text">{!!$tira_latest_news->content!!} </div>
                </div>
    
                <div class="row position-relative pt-2 mx-0">
                  @if(count($news_list))
                  <?php $news = $news_list[0] ?>
                  <div class="col-md-6 col-lg-6 d-flex px-0 pr-lg-4  flex-column justify-content-between">
                    <div class="box-shadow h-100 mb-4 rounded-smallll border-none overflow-hidden  bg-white show-more-content-news">
                      <a href="{{url('/news/'.$news->slug)}}" class="zoom-container">
                        <div class="overflow-hidden full-hd-container position-relative bg-secondary">
                          <img class="card-img-top image" src="{{asset('uploads/news/'.$news->photo_url)}}" alt="Card image cap">
                          <div class="dark-overlay"></div>
                        </div>
                        <div class="position-relative h-100">
                          <div class="p-3 px-4 bg-white content text-dark">
                            <div class="">
                              <h6 class="card-text text-muted pb-3 small text-primary">{!! date('d M Y', strtotime($news->created_at)) !!} </h6>
                              <h6 class="card-text text-bold">{{str_limit($news->title,40)}}</h6>                                    
                            </div>  
                            <div class="card-text px-4 more-content">
                              <div class="text"> {{str_limit(strip_tags($news->content),80)}} </div>
                            </div> 
                          </div>                               
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 d-flex px-0 px-md-3  pb-3 mb-1 pl-lg-3 flex-column ">
                    @foreach($news_list as $key => $news)
                      @if($key > 0)
                        <a href="{{url('/news/'.$news->slug)}}" class="col mb-1 cursor-pointer zoom-container show-more-content-news p-0 d-flex border-bottom box-shadow  bg-white last-no-border align-items-center "  style="min-height:140px"> 
                          <div class="col-3 col-md-4 p-2 px-lg-3 text-center d-flex flex-column justify-content-center pr-0 border-rightt " >
                            <div class="border-faded p-1">
                              <div class="overflow-hidden box-shadow-slight">
                                <div class="full-hd-container  image my-0 hover-text-primary background-image" 
                                  style="background-image:url('{{asset('/uploads/news/'.$news->photo_url)}}'); " >  
                                  <div class="dark-overlay"></div>
                                </div>
                              </div>
                            </div>
                           
                          </div>
                          <div class="col-9 col-md-8 pl-3 "> 
                            {{-- <h6> <span class="text-bold">{{str_limit($news->title,40)}}</span> </h6>  --}}
                            <div class=""><span class="small text-faded ">{!! date('d M Y', strtotime($news->created_at)) !!}</span></div>
                            <div class="hover-text-primary ">{{str_limit(strip_tags($news->title),60)}}</div>
                          </div>
                        </a>
                     
                      @endif
                    @endforeach
                  </div>
                </div>
                @endif
              </div>          
          </div>
    </div>
          
    
    @if(count($events))
    <div class="bg-white py-4">
         <div class="container">
            <div class="mb-3 text-center pt-3 max-width-680">
              <h5 class="text-bold text-primary mb-3">{{label('lbl_upcoming_events')}} </h5>
              <!--<div class="rich-text">{!!$tira_leadership->content!!} </div>-->
            </div>
        
           <div class="row justify-content-center">
                @foreach ($events as $key=>$event)
    			<div class="col-md-6 col-lg-4 d-flex px-0 px-lg-3 py-2 flex-column justify-content-between">
    				<div class="box-shadow h-100 mb-4 rounded-smallll border-none overflow-hidden  bg-white show-more-content-news">
    				  <a href="{{url('/events/'.$event->slug)}}" class="zoom-container">
    					<div class="overflow-hidden full-hd-container position-relative bg-secondary">
    					  <img class="card-img-top image" src="{{asset('uploads/events/'.$event->photo_url)}}" alt="Card image cap">
    					  <div class="dark-overlay"></div>
    					</div>
    					<div class="position-relative h-100">
    					  <div class="p-3 px-4 bg-white content text-dark">
    						<div class="">
    						  <h6 class="card-text text-muted pb-3 small text-primary">
    							<span class="d-inline-block mr-3">
    								<i class="fa fa-calendar-alt mr-1"></i> {!! date('d M, Y', strtotime($event->event_date)) !!}
    							</span>
    							<span class="d-inline-block">
    								<i class="fa fa-map-marker mr-1"></i> {!! $event->location !!}
    							</span> 
    							
    						</h6>
    						  <h6 class="card-text text-bold">{{str_limit($event->title,40)}}</h6>                                    
    						</div>  
    						<div class="card-text px-4 more-content">
    						  <div class="text"> {{str_limit(strip_tags($event->content),80)}} </div>
    						</div> 
    					  </div>                               
    					</div>
    				  </a>
    				</div>
    			</div>
	        	@endforeach
            </div>
       </div>
    </div>
    @endif

 
    <div class="bg-secondary py-4 position-relative">
      <div class="h-100 bg-gradient-transparent-white top-left w-100 position-absolute" style="opacity:0.5"></div>
      <div class="container">
        <div class="mb-3 text-center pt-3 max-width-680">
          <h5 class="text-bold text-primary mb-3">{{$tira_online_services->title}} </h5>
          <div class="rich-text">{!!$tira_online_services->content!!} </div>
        </div>

        <div class="owl-carousel-services overflow-hidden has-show-on-hover owl-theme owl-loaded  position-relative">
          <div class="owl-stage-outer " >
            <div class="owl-stage " style="display:flex">
              @foreach($services as $key => $service) 
                <div class="owl-item text-center has-hover-bounce has-shifting-underline last-no-border-element text-center position-relative" >
                  <a href="{{isset($service->url)? $service->url : url('/services/'.$service->slug)}}" @if(isset($service->url)) target="_blank" @endif class="d-block">
                    <div class="my-5 pt-4 bg-primaryy d-flex justify-content-center position-relative align-items-center ">
                      <div class="round border-width-4 border  d-flex position-absolute justify-content-center 
                        align-items-center m-auto border-color-secondary box-110"  >
                      </div>
                      {{-- <div class="round d-flex position-absolute justify-content-center align-items-center m-auto  box-110">
                        <div class="h-100 w-100 position-relative d-inline-block" 
                        style="background-image:url('{{asset('uploads/services/'.$service->photo_url)}}'); background-size:cover">
                        </div> 
                      </div> --}}
                      <div class="round d-flex position-absolute bg-primary justify-content-center align-items-center m-auto box-90"></div>
                      <img src="{{asset('uploads/services/'.$service->icon)}}" class="hover-bounce white-icon" style="width: 40px; height:auto">
                    </div> 
                    <div class="position-relative pt-3"> 
                      <div class="border-element mt-5 mx-auto  position-absolute faded" 
                        style="width:40%;  right:0; left:0; bottom:0;">
                        <div class="d-flex w-100">
                          <div class="shifting-underline-1 padding-1 bg-secondary"></div>
                          <div class="shifting-underline-2 padding-1 bg-primary"></div>
                        </div>
                      </div>
                    </div>
                    <div class="text-bold text-dark mt-3">
                      <span class="bg-white-transparentt d-inline-block p-1 rounded-slight">
                        <span class="px-1"> {{$service->title}} </span>  
                      </span>
                    </div>
                  </a>
                </div>
              @endforeach
            </div>
            <div class="owl-controls  pt-4"></div>
            <!-- get button here -->
            <div class="d-none " >
              <span class="hover-icon-left show-on-hover owl-prev-template-services">
                <div class="icon box-30"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6">
                  <polygon class="fill-primary"  points="52.51 45.8 77.5 2.5 2.5 45.8 77.5 89.1 52.51 45.8"/></svg>
                </div>
              </span>
              <span class="hover-icon-right show-on-hover owl-next-template-services">
                <div class="icon box-30 "> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6">
                  <polygon class="fill-primary" points="27.49 45.8 2.5 2.5 77.5 45.8 2.5 89.1 27.49 45.8"/></svg>
                </div>
              </span>
            </div>
          </div>
          <div class="custom-owl-nav-services bg-danger overflow-visible position-absolute w-100"></div>
        </div>
      </div>

    </div>


    <div class="bg-white py-4 pb-lg-5 position-relative parallax-banner position-relative " data-offset="600px" data-rate="0.15"
      style="background:urlll({{asset('site/images/svgs/dark-blue-bg.svg')}}); background-size:cover; background-repeat: repeat;">
      <div class="bg-gradient-transparent-white-faded position-absolute top-left h-100 w-100" style="opacity:0.3; transform:scaleY(1)"></div>
      <div class="container">
        <div class="pb-3 text-center text-dark pt-3 max-width-680">
          <h5 class="text-bold mb-3">{{$tira_partners->title}} </h5>
          <div class="rich-text">{!!$tira_partners->content!!} </div>
        </div>

        <div class="row">
          <div class="col-lg-12 ">
            <div class="owl-carousel-partners overflow-hidden has-show-on-hover owl-theme bg-none owl-loaded position-relative">
              {{-- <div class="bg-white h-100 w-100 position-absolute top-left faded"></div> --}}
              <div class="owl-stage-outer " >
                <div class="owl-stage " style="display:flex">
                  @foreach($partners as $key => $partner)
                    <div class="owl-item flex-center text-center p-2 has-hover-bounce last-no-border-element has-shifting-underline text-center position-relative" >
                      <a target="_blank" rel="noopener noreferrer"  href="{{$partner->url}}" class="d-block max-width-260 mx-auto p-3 bg-gradient-primary-secondary-transparent">
                        <div class="bg-white p-2 overflow-hidden zoom-container"> 
                          <img class="pr-1 py-2 max-width-120 image" style="" src="{{asset('uploads/partners/'.$partner->photo_url)}}">
                        </div>
                        {{-- <div class="d-flex w-100 mt-3">
                          <div class="shifting-underline-1 padding-1 bg-secondary"></div>
                          <div class="shifting-underline-2 padding-1 bg-primary"></div>
                        </div> --}}
                        <div class="mt-3 text-bold text-dark" > {{ $partner->title}} </div>
                      </a>
                    </div>
                  @endforeach
                </div>
                <div class="owl-controls  pt-2"></div>
                <!-- get button here -->
                <!-- <div class="d-none " >
                  <span class="hover-icon-left show-on-hover owl-prev-template-partners">
                    <div class="icon box-30"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6"><polygon class="fill-primary"  points="52.51 45.8 77.5 2.5 2.5 45.8 77.5 89.1 52.51 45.8"/></svg></div>
                  </span>
                  <span class="hover-icon-right show-on-hover owl-next-template-partners">
                    <div class="icon box-30 "> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 80 91.6"><polygon class="fill-primary" points="27.49 45.8 2.5 2.5 77.5 45.8 2.5 89.1 27.49 45.8"/></svg></div>
                  </span>
                </div> -->
              </div>
              <div class="custom-owl-nav-partners bg-danger overflow-visible position-absolute w-100"></div>
            </div>

          </div>
        </div>
      </div>
    </div>

 

  </div>
</div>

@stop





