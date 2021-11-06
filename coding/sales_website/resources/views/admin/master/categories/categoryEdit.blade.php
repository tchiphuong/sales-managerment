@extends('admin.main')
@section('title', 'Phuong Tran Page')
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
    <div class="collapse" id="master-sub">
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

@stop
