@extends('admin.main')
@section('title', 'Phuong Tran Page')
@section('breackcum', 'Add Category')
@section('navbar')
<li class="nav-item">
    <a class="nav-link" href="{{URL::to('/')}}">
        <i class="fa fa-th-large"></i>
        <p> Dashboard </p>
    </a>
</li>
<li class="nav-item ">
    <a class="nav-link" data-toggle="collapse" href="#master-sub">
        <i class="fa fa-tasks"></i>
        <p> Master
            <b class="caret"></b>
        </p>
    </a>
    <div class="collapse show" id="master-sub">
        <ul class="nav">
            <li class="nav-item active">
                <a class="nav-link" href="{{URL::to('/categories')}}">
                    <span class="sidebar-mini"> C </span>
                    <span class="sidebar-normal"> Categories </span>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{URL::to('/brands')}}">
                    <span class="sidebar-mini"> B </span>
                    <span class="sidebar-normal"> Brands </span>
                </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="{{URL::to('/products')}}">
                    <span class="sidebar-mini"> P </span>
                    <span class="sidebar-normal"> Products </span>
                </a>
            </li>
        </ul>
    </div>
</li>
@stop
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <form id="TypeValidation" class="form-horizontal" action="#" method="">
                <div class="card ">
                    <div class="card-header card-header-rose card-header-text">
                        <div class="card-text">
                            <h4 class="card-title">Type Validation</h4>
                        </div>
                    </div>
                    <div class="card-body ">
                        <div class="row">
                            <label class="col-sm-2 col-form-label">Required Text</label>
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="required"
                                        required="true" />
                                </div>
                            </div>
                            <label class="col-sm-3 label-on-right">
                                <code>required</code>
                            </label>
                        </div>
                        <div class="row">
                            <label class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="email" email="true"
                                        required="true" />
                                </div>
                            </div>
                            <label class="col-sm-3 label-on-right">
                                <code>email="true"</code>
                            </label>
                        </div>
                        <div class="row">
                            <label class="col-sm-2 col-form-label">Number</label>
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="number" number="true"
                                        required="true" />
                                </div>
                            </div>
                            <label class="col-sm-3 label-on-right">
                                <code>number="true"</code>
                            </label>
                        </div>
                        <div class="row">
                            <label class="col-sm-2 col-form-label">Url</label>
                            <div class="col-sm-7">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="url" url="true.html"
                                        required="true" />
                                </div>
                            </div>
                            <label class="col-sm-3 label-on-right">
                                <code>url="true"</code>
                            </label>
                        </div>
                        <div class="row">
                            <label class="col-sm-2 col-form-label">Equal to</label>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <input class="form-control" id="idSource" type="text"
                                        placeholder="#idSource" required="true" />
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <input class="form-control" id="idDestination" type="text"
                                        placeholder="#idDestination" equalTo="#idSource"
                                        required="true" />
                                </div>
                            </div>
                            <label class="col-sm-4 label-on-right">
                                <code>equalTo="#idSource"</code>
                            </label>
                        </div>
                    </div>
                    <div class="card-footer ml-auto mr-auto">
                        <button type="submit" class="btn btn-rose">Validate Inputs</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@stop
