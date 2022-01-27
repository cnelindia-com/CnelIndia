@extends('master.back')

@section('content')

<!-- Start of Main Content -->
<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class="mb-0 bc-title"><b>{{ __('Products') }}</b></h3>
                <a class="btn btn-primary  btn-sm" href="{{route('back.item.create')}}"><i class="fas fa-plus"></i> {{ __('Add') }}</a>
                </div>
        </div>
    </div>

    <input type="hidden" id="product_url" value="{{route('back.item.index')}}">

	<!-- DataTales -->
	<div class="card shadow mb-4">
		<div class="card-body">
            @include('alerts.alerts')

            <div class="form-check">
                <h4 class="mb-2"><b>{{ __('Filter by type :') }}</b></h4>
                <label class="form-radio-label mx-3">
                    <input class="form-radio-input item_sort" type="radio" name="optionsRadios" value="" {{request()->input('type') == '' ? 'checked' : ''}}>
                    <span class="form-radio-sign">{{ __('All Products') }}</span>
                </label>
                <label class="form-radio-label mx-3">
                    <input class="form-radio-input item_sort" type="radio" name="optionsRadios" value="flash_deal" {{request()->input('type') == 'flash_deal' ? 'checked' : ''}}>
                    <span class="form-radio-sign">{{ __('Flash Deal') }}</span>
                </label>
                <label class="form-radio-label mx-3">
                    <input class="form-radio-input item_sort" type="radio" name="optionsRadios" value="new" {{request()->input('type') == 'new' ? 'checked' : ''}}>
                    <span class="form-radio-sign">{{ __('Undefine') }}</span>
                </label>
                <label class="form-radio-label mx-3">
                    <input class="form-radio-input item_sort" type="radio" name="optionsRadios" value="feature" {{request()->input('type') == 'feature' ? 'checked' : ''}}>
                    <span class="form-radio-sign ">{{ __('Featured Products') }}</span>
                </label>
                <label class="form-radio-label mx-3">
                    <input class="form-radio-input item_sort" type="radio" name="optionsRadios" value="best" {{request()->input('type') == 'best' ? 'checked' : ''}}>
                    <span class="form-radio-sign">{{ __('Best Products') }}</span>
                </label>
                <label class="form-radio-label mx-3">
                    <input class="form-radio-input item_sort" type="radio" name="optionsRadios" value="top" {{request()->input('type') == 'top' ? 'checked' : ''}}>
                    <span class="form-radio-sign">{{ __('Top Products') }}</span>
                </label>
            </div>
            <br>
			<div class="gd-responsive-table">
				<table class="table table-bordered table-striped" id="admin-table" width="100%" cellspacing="0">

					<thead>
						<tr>
							<th>{{ __('Image') }}</th>
                            <th width="30%">{{ __('Name') }}</th>
                            <th>{{ __('Price') }}</th>
							<th>{{ __('Status') }}</th>
							<th>{{ __('Type') }}</th>
							<th>{{ __('Item Type') }}</th>
							<th>{{ __('Actions') }}</th>
						</tr>
					</thead>

					<tbody>
                        @include('back.item.table',compact('datas'))
					</tbody>

				</table>
			</div>
		</div>
	</div>

</div>

</div>
<!-- End of Main Content -->

{{-- DELETE MODAL --}}

  <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-deleteModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">

		<!-- Modal Header -->
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">{{ __('Confirm Delete?') }}</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
		</div>

		<!-- Modal Body -->
        <div class="modal-body">
			{{ __('You are going to delete this item. All contents related with this item will be lost.') }} {{ __('Do you want to delete it?') }}
		</div>

		<!-- Modal footer -->
        <div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Cancel') }}</button>
			<form action="" class="d-inline btn-ok" method="POST">

                @csrf

                @method('DELETE')

                <button type="submit" class="btn btn-danger">{{ __('Delete') }}</button>

			</form>
		</div>

      </div>
    </div>
  </div>

{{-- DELETE MODAL ENDS --}}

@endsection
