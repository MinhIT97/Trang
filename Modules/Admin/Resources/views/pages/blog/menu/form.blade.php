<form class="form-horizontal" autocomplete="off" method="POST" action="">
    @csrf
    <div class="row">
        <div class="col-lg-8">
            <div class="card  box-shadow-0">
                <div class="card-body pt-3">
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="required">Name <span>(*)</span></label>
                        <input type="text" class="form-control keypress-count" data-title-seo=".title_seo" value="{{ old('c_name', $menu->m_name ?? '') }}" data-slug=".slug" name="m_name" >
                        @if($errors->first('m_name'))
                            <span class="text-danger">{{ $errors->first('m_name') }}</span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="required">Slug <span>(*)</span></label>
                        <input type="text"  class="form-control slug"   name="m_slug" value="{{ old('c_slug', $menu->m_slug ?? '') }}">
                        @if($errors->first('m_slug'))
                            <span class="text-danger">{{ $errors->first('m_slug') }}</span>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1" class="required">Icon <span>(*)</span></label>
                        <input type="text"  class="form-control" value="{{ old('c_icon', $menu->m_icon ?? '') }}" name="m_icon">
                        <span class="d-block"><a href="https://fontawesome.com/v4.7.0/icons/" target="_blank">Click xem mau</a></span>
                        @if($errors->first('m_icon'))
                            <span class="text-danger">{{ $errors->first('m_icon') }}</span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Parent <span>(*)</span></label>
                        <div class="SumoSelect js-sumo-select sumo_somename" tabindex="0" role="button" aria-expanded="true">
                            <select name="m_parent_id" class="form-control SlectBox SumoUnder"  tabindex="-1">
                                <option title="ROOT" value="0">__ROOT__</option>
                                @foreach($menus as $item)
                                    <option value="{{ $item->id }}" {{ ($menu->m_parent_id ?? 0) == $item->id ? "selected" : "" }}>{{ $item->m_name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="required">Sort <span>(*)</span></label>
                        <input type="number"  class="form-control"  name="m_sort" value="{{ old('m_sort', $menu->m_sort ?? '0') }}">
                        <span class="d-block text-warning">Th??? th??? ???????c s???p x???p t??? b?? ?????n l???n</span>
                    </div>

                </div>
            </div>
            <div class="card  box-shadow-0">
                <div class="card-header">
                    <h4 class="card-title mb-1">SEO <a href="" class="js-action-seo" style="float: right"><i class="la la-edit"></i> Edit</a></h4>
                    <div class="view-seo">
                        <a href="" class="view-seo-title title_seo">It is Very Easy to Customize and it uses in your website apllication.</a>
                        <p class="view-seo-slug">It is Very Easy to Customize and it uses in your website apllication. <span class="slug">121212121</span></p>
                        <p class="mb-2 view-seo-description">It is Very Easy to Customize and it uses in your website apllication.</p>
                    </div>
                </div>
                <div class="card-body pt-3 box-seo hide">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Title SEO <span>(*)</span></label>
                        <input type="text" class="form-control title_seo"  value="{{ old('c_title_seo', $menu->m_title_seo ?? '') }}" name="m_title_seo" id="inputName" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Description SEO <span>(*)</span></label>
                        <input type="text" class="form-control" name="m_description_seo" value="{{ old('c_description_seo', $menu->m_description_seo ?? '') }}" id="inputName" placeholder="">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card  box-shadow-0 ">
                <div class="card-body pt-3">
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Action <span>(*)</span></label>
                        <div>
                            <button class="btn btn-info"><i class="la la-save"></i> Save</button>
                            <button class="btn btn-success"><i class="la la-check-circle"></i> Save & Edit</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card  box-shadow-0 ">
                <div class="card-body pt-3">
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Status <span>(*)</span></label>
                        <div class="SumoSelect js-sumo-select sumo_somename" tabindex="0" role="button" aria-expanded="true">
                            <select name="m_status" class="form-control SlectBox SumoUnder"  tabindex="-1">
                                <option title="Public" value="1">Public</option>
                                <option title="hide" value="0">Hide</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card  box-shadow-0 ">
                <div class="card-body pt-3">
                    <div class="form-group">
                        <label class="" for="exampleInputEmail1"> Hot </label>
                        <div class="form-group">
                            <label class="box-checkbox"> N???i b???t
                                <input type="radio" name="m_hot" {{ ($menu->m_hot ?? 0) == 1 ? 'checked' : '' }}  value="1">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="box-checkbox"> Kh??ng n???i b???t
                                <input type="radio" name="m_hot" {{ ($menu->m_hot ?? 0) ==  0 ? 'checked' : '' }} value="0">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card  box-shadow-0 ">
                <div class="card-body pt-3">
                    <div class="form-group">
                        <label class="" for="exampleInputEmail1"> Position </label>
                        <div class="form-group">
                            <label class="box-checkbox"> M???c ?????nh
                                <input type="radio" name="m_position" {{ ($menu->m_position ?? 0) == 0 ? 'checked' : '' }} value="0">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="box-checkbox"> V??? tr?? 1
                                <input type="radio" name="m_position" {{ ($menu->m_position ?? 0) == 1 ? 'checked' : '' }} value="1">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="box-checkbox"> V??? tr?? 2
                                <input type="radio" name="m_position" {{ ($menu->m_position ?? 0) == 2 ? 'checked' : '' }} value="2">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="box-checkbox"> V??? tr?? 3
                                <input type="radio" name="m_position" {{ ($menu->m_position ?? 0) == 3 ? 'checked' : '' }} value="3">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label class="box-checkbox"> V??? tr?? 4
                                <input type="radio" name="m_position" {{ ($menu->m_position ?? 0) == 4 ? 'checked' : '' }} value="4">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card  box-shadow-0 ">
                <div class="card-body pt-3">
                    <div class="form-group">
                        <label for="exampleInputEmail1"> Avatar </label>
                        <input type="file" class="filepond" data-type="avatar" name="avatar">
                        <input type="hidden" name="m_avatar" id="avatar_uploads">
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
