@foreach($datas as $data)
<tr>
    <td>
        @if (!$data->user->id)
        {{$data->user_email}}
        @else
        <a href="{{route('back.user.show',$data->user->id)}}">{{$data->user_email}}</a>
        @endif
        
    </td>
    <td>
        <a href="{{route('back.order.invoice',$data->order_id)}}">{{ $data->txn_id}}</a>
    </td>
    <td>
        <p class="badge badge-dark">{{$data->order->order_status}}</p>
    </td>
    <td>
        <p class="badge badge-primary">{{$data->order->payment_status}}</p>
    </td>
    <td>
       {{$data->currency_sign}}{{round($data->amount * $data->currency_value,2)}}
    </td>

    <td>
        <div class="action-list">
            <a class="btn btn-danger btn-sm " data-toggle="modal"
                data-target="#confirm-delete" href="javascript:;"
                data-href="{{ route('back.transaction.delete',$data->id) }}">
                <i class="fas fa-trash-alt"></i>
            </a>
        </div>
    </td>

</tr>
@endforeach
