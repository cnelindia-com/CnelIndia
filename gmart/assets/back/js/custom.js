(function($) {
    "use strict"; // Start of use strict

    $(".sidebar-wrapper .sidebar-content ul.nav li.nav-item a").each(function() {
        var pageUrl = window.location.href.split(/[?#]/)[0];
        if (this.href == pageUrl) {
           var check = pageUrl.split("/");
         
           if(check.slice(-1)[0] != 'orders'){
            $(this).parent().addClass("active"); // add active to li of the current link
           }
           if($(this).hasClass('sub-link')){
            $(this).parent().parent().parent().parent().addClass('active');
            $(this).parent().parent().parent().prev().click(); // click the item to make it drop
        }
        }
    });

    $('#datepicker').datetimepicker({
		format: 'MM/DD/YYYY',
	});

    $('.timepicker').datetimepicker({
        format: 'h:mm A',
	});

    // IMAGE UPLOADING :)
    $(".upload-photo").on( "change", function(e) {
        var path = $(this).parent().parent().prev().find('img');
        readURL(this,path);
    });

    function readURL(input,path) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
            path.attr('src',e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('action', $(e.relatedTarget).data('href'));
    });

    $(document).on('show.bs.modal','#statusModal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });

    $('.radio-check').on('change',function(){
        if(this.checked){
            $(this).parent().parent().next().removeClass('d-none');
        }else{
            $(this).parent().parent().next().addClass('d-none');
        }
    });

//when submitted if there was an issue
$("form.tab-form").on("submit", function() {
    let $this = $(this);
    let form_check = 1;

    $this.find('input,select').each(function(){
        if($(this).prop('required')){
            if ($(this).val() === "") {
                form_check = 0;
            }
          }
    });

    if(form_check === 0) {

        $.notify({
            // options
            icon: 'flaticon-alarm-1',
            title: $this.data('title'),
            message: $this.data('error'),
        },{
            // settings
            element: 'body',
            position: null,
            type: "danger",
            allow_dismiss: true,
            newest_on_top: false,
            showProgressbar: false,
            placement: {
                from: "top",
                align: "right"
            },
            offset: 20,
            spacing: 10,
            z_index: 1031,
            delay: 5000,
            timer: 1000,
            url_target: '_blank',
            mouse_over: null,
            animate: {
                enter: 'animated fadeInDown',
                exit: 'animated fadeOutUp'
            },
            onShow: null,
            onShown: null,
            onClose: null,
            onClosed: null,
            icon_type: 'class'
        });

        return false;
    }

});

$('.item-name').on('keyup',function(){

    let $this = $(this);

    let str = $this.val().replace(/[0-9`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi,'-').replace(/ /g, '-');

    $('#slug').val(str);

});

$('.admin-gallery').on('mouseover',function(){
    $(this).find('.remove-gallery-img').removeClass('d-none');
});

$('.admin-gallery').on('mouseout',function(){
    $(this).find('.remove-gallery-img').addClass('d-none');
});

$('#attr_name').on('keyup',function(){
    var text = $(this).val();
    var str = text.replace(/\ /g, "-");
    $('#attr_keyword').val(str.toLowerCase());
});

$('.addToMenu').on('click',function(){

    let $this = $(this);
    let title = $this.data('title');
    let keyword = title.replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '-');
    let dropdown = $this.data('dropdown');
    let href = $this.data('href');
    let target = $this.data('target');

    $('#section-list').append(`
        <div class="card mb-0 mt-2 mx-2 draggable-item">
            <div class="card-body">
                <div class="media">
                    <div class="media-body">
                        <h5 class="mb-1 mt-0">${title}</h5>
                        <input type="hidden" name="${keyword}[title]" value="${title}">
                        <input type="hidden" name="${keyword}[dropdown]" value="${dropdown}">
                        <input type="hidden" name="${keyword}[href]" value="${href}">
                        <input type="hidden" name="${keyword}[target]" value="${target}">
                    </div>
                    <i class="remove-menu fa fa-trash-alt"></i>
                </div>
            </div>
        </div>
    `);


});

$('#custom-submit').on('click',function(){
    let title = $('#title').val();
    if(title != ''){
        let keyword = title.replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '-');
        let dropdown = 'no';
        let href = $('#url').val();
        let target = $('#target').val();

        $('#section-list').append(`
            <div class="card mb-0 mt-2 mx-2 draggable-item">
                <div class="card-body">
                    <div class="media">
                        <div class="media-body">
                            <h5 class="mb-1 mt-0">${title}</h5>
                            <input type="hidden" name="${keyword}[title]" value="${title}">
                            <input type="hidden" name="${keyword}[dropdown]" value="${dropdown}">
                            <input type="hidden" name="${keyword}[href]" value="${href}">
                            <input type="hidden" name="${keyword}[target]" value="${target}">
                        </div>
                        <i class="remove-menu fa fa-trash-alt"></i>
                    </div>
                </div>
            </div>
        `);
    }

});


$(document).on('click','.remove-menu',function(){

    $(this).parent().parent().parent().remove();

});



    $(function() {

         // editor
         if($('.text-editor').length > 0) {

            $('.text-editor').summernote({
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['fontname', ['fontname']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video']],
                    ['view', ['fullscreen']],
                  ]
            });

        }

        // Datatable
        if($('#admin-table').length > 0) {

            $('#admin-table').DataTable({
                responsive: true,
                ordering: false
            });

        }


        // Set icon in edit
        if($('#icon-value').length > 0){
            $("input[name=icon]").val($('#icon-value').val());
        }

        // Tagify
        if( $('.tags').length > 0 ) {
            $('.tags').tagify();
        }

        // Magnific Popup
        if( $('.popup-link').length > 0 ){
            $('.popup-link').magnificPopup({
                type: 'image'
            });
        }

        // Social Picker
        if( $('.social-picker').length > 0 ){
            $('.social-picker').iconpicker();
        }

        // Sorting Section
        if( $('#section-list').length > 0 ){
            var el = document.getElementById('section-list');
            Sortable.create(el, {
            animation: 100,
            group: 'list-1',
            draggable: '.draggable-item',
            handle: '.draggable-item',
            sort: true,
            filter: '.sortable-disabled',
            chosenClass: 'active'
            });
        }

        // Appending Social Icons To Items
        $('.add-social').on('click',function(){
            var text = $(this).data('text');
            $('#social-section').append(`
                <div class="d-flex">
                    <div>
                        <div class="form-group">
                            <button
                                class="btn btn-secondary social-picker"
                                name="social_icons[]"
                                data-icon="fab fa-font-awesome">
                            </button>
                        </div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="form-group mb-1"><input type="text"
                                class="form-control"
                                name="social_links[]"
                                placeholder="${text}">
                        </div>
                    </div>
                    <div class="flex-btn">
                        <button type="button"
                            class="btn btn-danger remove-social">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
            `);

            $('.social-picker').iconpicker();

        });

               // Appending Social Icons To Items
               $('.add-specification').on('click',function(){
                var text = $(this).data('text');
                var text1 = $(this).data('text1');
                $('#specifications-section').append(`
                <div class="d-flex">
                <div class="flex-grow-1">
                <div class="form-group">
                    <input type="text" class="form-control"
                        name="specification_name[]"
                        placeholder="${text}" value="">
                    </div>
            </div>
            <div class="flex-grow-1">
                <div class="form-group">
                    <input type="text" class="form-control"
                        name="specification_description[]"
                        placeholder="${text1}" value="">
                    </div>
            </div>
            <div class="flex-btn">
                        <button type="button"
                            class="btn btn-danger remove-spcification">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
            </div>
                `);
    
                $('.social-picker').iconpicker();
    
            });

        $(document).on('click','.remove-social',function(){
            $(this).parent().parent().remove();
        });
        $(document).on('click','.remove-spcification',function(){
            $(this).parent().parent().remove();
        });


        $(document).on('change','#category_id',function(){
            let category_id = $(this).val();
            let url = $(this).attr('data-href');
            getCategory(url,category_id);
        })

        $(document).on('change','#subcategory_id',function(){
            let subategory_id = $(this).val();
            let url = $(this).attr('data-href');
            getSubCategory(url,subategory_id);
        })

        function getSubCategory(url,subcategory_id){
            $.get(url+'?subcategory_id='+subcategory_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                $('#childcategory_id').html(start+view_html);
            })
        }

        function getCategory(url,category_id){
            $.get(url+'?category_id='+category_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                $('#subcategory_id').html(start+view_html);
            })
        }




        // popular category script
        $(document).on('change','#category_id1,#category_id2,#category_id3,#category_id4',function(){
            
            let category_id = $(this).val();
            let countNumber = '';
            let catId = $(this).attr('id');
             countNumber = catId.slice(countNumber.length - 1)
            let url = $(this).attr('data-href');
            MultigetCategory(url,category_id,countNumber);
        })

        $(document).on('change','#subcategory_id1,#subcategory_id2,#subcategory_id3,#subcategory_id4',function(){
            let subategory_id = $(this).val();
            let countNumber = '';
            let catId = $(this).attr('id');
             countNumber = catId.slice(countNumber.length - 1)
            let url = $(this).attr('data-href');
            MultigetSubCategory(url,subategory_id,countNumber);
        })

        function MultigetSubCategory(url,subcategory_id,count){
            $.get(url+'?subcategory_id='+subcategory_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                $('#childcategory_id'+count).html(start+view_html);
            })
        }

        function MultigetCategory(url,category_id,count){
            $.get(url+'?category_id='+category_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                $('#subcategory_id'+count).html(start+view_html);
            })
        }

        // popular category script end

        // two column category script

        $(document).on('change','#column_category_id1,#column_category_id2',function(){
            
            let category_id = $(this).val();
            let count = '';
            let catId = $(this).attr('id');
             count = catId.slice(count.length - 1);
            let url = $(this).attr('data-href');
            
            ColumngetCategory(url,category_id,count);
        })

        $(document).on('change','#cloumn_subcategory_id1,#cloumn_subcategory_id2',function(){
            let subategory_id = $(this).val();
            let count = '';
            let catId = $(this).attr('id');
             count = catId.slice(count.length - 1);
            let url = $(this).attr('data-href');
            
            ColumngetSubCategory(url,subategory_id,count);
        })

        function ColumngetSubCategory(url,subcategory_id,count){
            
            $.get(url+'?subcategory_id='+subcategory_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                $('#cloumn_childcategory_id'+count).html(start+view_html);
            })
        }

        function ColumngetCategory(url,category_id,count){
            
            $.get(url+'?category_id='+category_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                  console.log('#column_subcategory_id'+count);
                $('#cloumn_subcategory_id'+count).html(start+view_html);
            })
        }

        // two column category script end


        // feature category script start
        $(document).on('change','#feature_category_id1,#feature_category_id2,#feature_category_id3,#feature_category_id4',function(){
            
            let category_id = $(this).val();
            let count = '';
            let catId = $(this).attr('id');
             count = catId.slice(count.length - 1);
            let url = $(this).attr('data-href');
            
            FeaturegetCategory(url,category_id,count);
        })

        $(document).on('change','#feature_subcategory_id1,#feature_subcategory_id2,#feature_subcategory_id3,#feature_subcategory_id4',function(){
            let subategory_id = $(this).val();
            let count = '';
            let catId = $(this).attr('id');
             count = catId.slice(count.length - 1);
            let url = $(this).attr('data-href');
            
            FeaturegetSubCategory(url,subategory_id,count);
        })

        function FeaturegetSubCategory(url,subcategory_id,count){
            
            $.get(url+'?subcategory_id='+subcategory_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                $('#feature_childcategory_id'+count).html(start+view_html);
            })
        }

        function FeaturegetCategory(url,category_id,count){
            
            $.get(url+'?category_id='+category_id,function(data){
                let response = data.data;
                let view_html = ``;
                $.each(response , function(key, value) {
                    view_html += `<option value="${value.id}">${value.name}</option>`;
                  });
                  let start = `<option value="">Select One</option>`;
                  console.log('#column_subcategory_id'+count);
                $('#feature_subcategory_id'+count).html(start+view_html);
            })
        }


        // feature category script end

    });


    // flash deal item select date

    $(document).on('change','#is_type',function(){
        if($(this).val() == 'flash_deal'){
            $('.show-datepicker').removeClass('d-none');
            $('input .datepicker').prop('required',true);
        }else{
            $('.show-datepicker').addClass('d-none');
            $('input .datepicker').val('');
            $('input .datepicker').prop('required',false);
        }
    })


    // product sorting js

    $(document).on('change','.item_sort',function(){
        let value = $(this).val();
        location.href = $('#product_url').val()+"?type="+value;
    })

    // tickets sorting js
    $(document).on('change','#tickets_sort',function(){
        let value = $(this).val();
        location.href = $('#tickets_url').attr()+"?type="+value;
    })


    // add more language field script

    let appendHtml = `
    <div class="single-kay  alert alert-primary">
    <div class="row align-items-center">
        <div class="col-lg-1 col-2">
            <div class="delete_language_field">
                <button class="btn btn-danger btn-sm">
                Delete <i class="fas fa-times "></i></button>
            </div>
        </div>
        <div class="col-lg-5 col-5">
            <div class="form-group">
                  <label>Key *</label>
                  <input type="text" class="form-control" name="keys[]" value="" required>
            </div>
        </div>
        <div class="col-lg-6 col-5">
            <div class="form-group">
                  <label>Value *</label>
                  <input type="text" class="form-control" name="values[]" value="" required>
            </div>
        </div>
    </div>
</div>`;
       $(document).on('click','#add_more_language',function(){
            $('.new-field').append(appendHtml);
       });

       $(document).on('click','.delete_language_field',function(){
           $(this).parent().parent().parent().remove();
       });


  // Notification

    $('#alertsDropdown').on('click',function(){
        $('#display-notf').load(  $('#display-notf').data('href') );
    });

    $(document).on('click','#clear-notf',function(){
        $.get($(this).data('href'));
    });

})(jQuery); // End of use strict
