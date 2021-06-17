<div class="banners">
    <div class="container">
        <div class="box">
            <div class="box-categories">
                <div class="categories">
                    <ul>
                        <li>
                            <a href="{{ route('get.category.all') }}" title="Tất cả khoá học">
                                <i class="fa fa-credit-card"></i><span>Tất cả khoá học</span>
                            </a>
                        </li>
                        @foreach($categoriesParent as $item)
                            <li>
                                <a href="{{ route('get.course.render',['slug' => $item->c_slug.'-c']) }}" title="{{ $item->c_name }}">
                                    <i class="{{ $item->c_icon }}"></i><span>{{ $item->c_name }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="box-banner">
                <div class="banner_top">
                    <div class="lists js-banner owl-carousel owl-theme">
                        @foreach($slides ?? [] as $item)

                                <a href="{{ $item->s_link }}">
                                    <img src="{{ ($item->s_banner) }}" alt="{{ $item->s_name }}">
                                </a>

                        @endforeach
                    </div>
                </div>
                <!-- <div class="banner_bottom">
                    <div class="lists">
                        @for ($i = 1 ;$i <= 3 ; $i ++)
                            <div class="item item-3">
                                <a href="">
                                    <img src="https://media-kyna.cdn.vccloud.vn/uploads/banners/904/img/mobile_image_url-1599710668.jpg" alt="">
                                </a>
                            </div>
                        @endfor
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</div>
