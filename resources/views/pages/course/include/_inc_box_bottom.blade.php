<div class="box-fix">
    <div class="container flex">
        <div class="item">
            <span>Phương thức thanh toán</span><br>
            <span class="js-pay-type-preview">Chuyển khoản</span>
        </div>
        <div class="item">
            <span>Tổng tiền thanh toán</span><br>
            <span><b>690.000 đ</b></span>
        </div>
        <div class="item item-button">
{{--            <a href="javascript:;void(0)" class="btn btn-xs btn-primary js-add-cart" data-url="data-url="{{ route('get_user.cart.add',['id' => $courseDetail->id,'type' => 'course']) }}""><i class="fa fa-shopping-bag"></i> Thêm giỏ hàng</a>--}}
            <a href="javascript:;void(0)" title="Thêm giỏ hàng" data-url="{{ route('get_user.cart.add',['id' => $courseDetail->id,'type' => 'course']) }}"
               class="btn btn-primary btn-radius js-add-cart"><i class="fa fa-shopping-bag"></i> Thêm giỏ hàng</a>
            <a href="javascript:;void(0)" class="btn btn-radius btn-xs btn-pink {{ get_data_user('web') ? 'js-save-favorite' : 'js-show-login' }}" data-url="{{ route('get_user.favourite.add',['type' => 'course', 'id' => $courseDetail->id]) }}"><i class="fa fa-heart"></i> Yêu thích</a>
        </div>
    </div>
</div>
