<?php namespace App\Http\Controllers\site;

use App\Models\Announcement;
use App\Models\Achievement;
use App\Models\Administration;
use App\Models\AdministrationCategories;
use App\Models\Gallery;
use App\Models\HowDoI;
use App\Models\Events;
use App\Models\Documents;
use App\Models\DocumentCategory;
use App\Models\LicensedEntityCategory;
use App\Models\LicensedEntity;
use App\Models\Service;
use App\Models\Quote;
use App\Models\PressRelease;
use App\Models\OnlineService;
use App\Models\Notice;
use App\Models\News;
use App\Models\Campaign;
use App\Models\Video;
use App\Models\Photo;
use App\Models\Product;
use App\Models\WelcomeNote;
use App\Models\Slider;
use App\Models\Project;
use App\Models\Faq;
use App\Models\QuickInfo;
use App\Models\MoreInfo;
use App\Models\RegionalOffice;
use App\Models\AboutLink;
use App\Models\SupportLink;
use App\Models\RelatedLink;
use App\Models\StakeholderCategory;


use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cookie;
 use Illuminate\Support\Facades\Route;

class HomeController extends BaseSiteController
{

    public function index()
    {
        
       
    
        
        $dg = Administration::where('position', '=', 1)->first();

        // $other_executives = Administration::whereIn('position',[2,3,4])->orderBy('position','ASC')->get();

        //distinct()->whereNotNull('meta_value')->get(['meta_value'])
        
        $welcomeNote = WelcomeNote::where('status',1)->first();

        $announcements = Announcement::where('active',1)->orderBy('id', 'DESC')->take(4)->get();
       
        $now_str = \Carbon\Carbon::now()->format('d-m-Y'); 

        $events = Events::whereDate('event_date', '>=', now())->orderBy('event_date', 'DESC')->take(3)->get();

        $news_list = News::where('active',1)->orderBy('created_at', 'DESC')->take(4)->get();

        $latest_news = News::where('active',1)->orderBy('created_at', 'DESC')->take(4)->get();

        $quickinfos = QuickInfo::where('active',1)->orderBy('id', 'DESC')->get();


        // $product_categories = ProductCategory::where('active',1)->orderBy('id', 'DESC')->take(6)->get();
        
        $licensed_entity_categories = LicensedEntityCategory::where('active',1)->orderBy('id', 'DESC')->get();

        $products = Product::where('active',1)->orderBy('id', 'DESC')->with('category')->take(10)->get();

        // $faqs = Faq::where('active',1)->orderBy('id', 'DESC')->take(5)->get();

        $latest_documents  = Documents::where('active',1)->orderBy('id', 'DESC')->take(5)->get();

        //$sponsors = Sponsor::orderBy('id', 'DESC')->limit(4)->get();

        $regional_office = RegionalOffice::orderBy('headquarter', 'DESC')->first();
        
        $services = Service::where('active',1)->orderBy('id', 'DESC')->limit(20)->get();

        $featured_service =  Service::where('active',1)->where('featured',1)->orderBy('id', 'DESC')->first();

        if(!$featured_service) $featured_service =  Service::where('active',1)->orderBy('id', 'DESC')->first();
       
        $not_featured_services =  Service::where('active',1)->where('featured',0)->orderBy('id', 'DESC')->get();
       
        $reg_docs_categories = DocumentCategory::where('active',1)->where('featured',1)->orderBy('id', 'DESC')->with('documents')->get();
       
        $docs_categories = DocumentCategory::where('active',1)->where('featured',0)->orderBy('id', 'DESC')->with('documents')->get();

        // $campaign =Campaign::where('active',1)->orderBy('id', 'DESC')->first();

        $achievements = Achievement::where('active',1)->orderBy('id', 'DESC')->take(6)->get();

        $quotes = Quote::where('active',1)->orderBy('id', 'DESC')->get();

        // $online_services = OnlineService::where('active',1)->orderBy('id', 'DESC')->limit(4)->get();

        $howdois = HowDoI::where('active',1)->orderBy('id','DESC')->limit(4)->get();

        // $press_releases = PressRelease::where('active',1)->orderBy('id', 'DESC')->limit(4)->get();

        $announcements = PressRelease::where('active',1)->orderBy('id', 'DESC')->limit(4)->get();

        // $notices = Notice::where('active',1)->orderBy('id', 'DESC')->limit(6)->get();
        
        $slideshow = Gallery::where('featured', 1)->where('type', '=', 'photos')->first();

        $latest_photo = Photo::orderBy('created_at','DESC')->where('status',1)->whereHas('gallery',function($q){
            $q->where('status', 1);
        })->first();

        $latest_videos = Video::orderBy('created_at','DESC')->where('status',1)->whereHas('gallery',function($q){
            $q->where('status', 1)->where('type','videos');
        })->limit(5)->get();

        // $videoshow = Gallery::where('featured', 1)->where('type', '=', 'videos')->first();

        if ($slideshow == null) {
            $slideshow = [];
        } else {
            $slideshow = $slideshow->photos()->orderBy('id', 'DESC')->limit(10)->get();
        }

        $public_relations_links = RelatedLink::orderBy('position', 'ASC')->take(4)->get();
        $licensed_entities = LicensedEntityCategory::orderBy('updated_at', 'ASC')->take(4)->get();
        $consumer_services_links = SupportLink::orderBy('position', 'ASC')->take(4)->get();
        $about_tira_links = AboutLink::orderBy('position', 'ASC')->take(4)->get();
        
        $more_infos = MoreInfo::all();
        
        $home_links['about-tira'] = (object)['links'=> $about_tira_links, 'info'=>$more_infos->firstWhere('item_name','about-tira')];
        $home_links['consumer-services'] = (object)['links'=> $consumer_services_links, 'info'=>$more_infos->firstWhere('item_name','consumer-services')];
        $home_links['licensed-entities'] = (object)['links'=> $licensed_entities, 'info'=>$more_infos->firstWhere('item_name','licensed-entities')];
        $home_links['public-relations'] = (object)['links'=> $public_relations_links, 'info'=>$more_infos->firstWhere('item_name','public-relations')];

        $tira_leadership = $more_infos->firstWhere('item_name','tira-leadership');
        $tira_online_services = $more_infos->firstWhere('item_name','online-services');
        $tira_latest_news = $more_infos->firstWhere('item_name','latest-news');
        $tira_partners = $more_infos->firstWhere('item_name','tira-partners');
        
        $leaders = [];
        $leaders_category = AdministrationCategories::where('featured',1)->with('category_members','category_members.member')->first();
        if(isset($leaders_category->category_members)) $leaders = $leaders_category->category_members->sortBy('position');

        $stakeholderCategories = StakeholderCategory::orderBy('updated_at', 'ASC')->take(3)->get();

        // if ($videoshow == null) {
        //     $videoshow = [];
        // } else {
        //     $videoshow = $videoshow->videos()->orderBy('id', 'DESC')->limit(1)->get();
        // }

        // $announcements = Announcement::orderBy('id', 'DESC')->where('active', 1)->limit(8)->get();

        // $services = Service::where('active', true)->with('documentCategories')
        // ->whereHas('documentCategories',function($q){
        //   $q->where('featured', true);
        // })->take(4)->get();

        // echo $publicationCategory;exit;
        
        $currentPath = Route::getFacadeRoot()->current()->uri();
        $view = 'site.home';
        if($currentPath == 'test') $view = 'site.home-test';

        return view($view, compact(
            'latest_news',
            'news_list',
            'dg',
            'welcomeNote',
            'stakeholderCategories',
            'slideshow',
            'quotes',
            'howdois',
            'latest_documents',
            'achievements',
            'services',
            'announcements',
            'quickinfos',
            'latest_videos',
            'latest_photo',
            'featured_service',
            'not_featured_services',
            'docs_categories',
            'reg_docs_categories',
            'products',
            'licensed_entity_categories',
            'regional_office',
            'home_links',
            'leaders',
            'tira_leadership',
            'tira_online_services',
            'tira_latest_news',
            'tira_partners',
            'events'
            // 'online_services'
        ));
    }
}
