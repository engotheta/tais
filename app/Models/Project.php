<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\TrackableTrait;
use App\Traits\TrackableInterface;
use App\Traits\Multilingual;

class Project extends Model implements TrackableInterface{

	use Sluggable,TrackableTrait,Multilingual;
	use SluggableScopeHelpers;

	protected $guarded=[];

  	protected $translatableAttributes = ['title','content','summary'];

	public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }

	public static $rules = [
		'title_en' => 'required|max:191',
    	'title_sw' => 'required|max:191',
		'content_en' => 'required',
    	'content_sw' => 'required',
    	'photo_url' => 'required'
	];

	public static $rules_update = [
		'title_en' => 'required|max:191',
    	'title_sw' => 'required|max:191',
		'content_en' => 'required',
    	'content_sw' => 'required'
	];

	
}
