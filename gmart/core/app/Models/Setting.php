<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $fillable = [
        'title',
        'logo',
        'favicon',
        'loader',
        'is_loader',
        'feature_image',
        'primary_color',
        'smtp_check',
        'email_host',
        'email_port',
        'email_encryption',
        'email_user',
        'email_pass',
        'email_from',
        'email_from_name',
        'contact_email',
        'version',
        'google_analytics_id',
        'meta_keywords',
        'meta_description',
        'is_shop',
        'is_blog',
        'is_faq',
        'is_contact',
        'facebook_check',
        'facebook_client_id',
        'facebook_client_secret',
        'facebook_redirect',
        'google_check',
        'google_client_id',
        'google_client_secret',
        'google_redirect',
        'min_price',
        'max_price',
        'footer_phone',
        'footer_address',
        'footer_email',
        'footer_gateway_img',
        'social_link',
        'friday_start',
        'friday_end',
        'satureday_start',
        'satureday_end',
        'copy_right',
        'is_slider',
        'is_category',
        'is_product',
        'is_top_banner',
        'is_recent',
        'is_top',
        'is_best',
        'is_flash',
        'is_brand',
        'is_blogs',
        'is_campaign',
        'is_brands',
        'is_bottom_banner',
        'is_service',
        'campaign_title',
        'campaign_end_date',
        'campaign_status',
        'twilio_sid',
        'twilio_token',
        'twilio_form_number',
        'twilio_country_code',
        'is_twilio',
        'twilio_section',
        'is_announcement',
        'announcement',
        'announcement_delay',
        'is_maintainance',
        'maintainance_image',
        'maintainance_text',
        'is_three_c_b_first',
        'is_popular_category',
        'is_section_track',
        'is_three_c_b_second',
        'is_featured_category',
        'is_highlighted',
        'is_two_column_category',
        'is_popular_brand',
        'is_two_c_b',
        
    ];

    public $timestamps = false;


}
