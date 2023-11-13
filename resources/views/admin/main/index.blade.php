@extends('admin.layouts.main')

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Main</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item">Main</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{$data['filmsCount']}}</h3>

                                <p>Films</p>
                            </div>
                            <div class="icon">
                                <i class="fa-solid fa-film"></i>
                            </div>
                            <a href="{{route('admin.film.index')}}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>{{$data['rejisorsCount']}}</h3>

                                <p>Rejisors</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fa-solid fa-circle-user"></i>
                            </div>
                            <a href="{{route('admin.rejisor.index')}}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-olive">
                            <div class="inner">
                                <h3>{{$data['yearsCount']}}</h3>

                                <p>Years</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fa-solid fa-calendar-days"></i>
                            </div>
                            <a href="{{route('admin.year.index')}}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-fuchsia">
                            <div class="inner">
                                <h3>{{$data['actorsCount']}}</h3>

                                <p>Actors</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fa-solid fa-person"></i>
                            </div>
                            <a href="{{route('admin.actor.index')}}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>{{$data['genresCount']}}</h3>

                                <p>Genres</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fa-solid fa-filter"></i>
                            </div>
                            <a href="{{route('admin.genre.index')}}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-gradient-indigo">
                            <div class="inner">
                                <h3>{{$data['usersCount']}}</h3>

                                <p>Users</p>
                            </div>
                            <div class="icon">
                                <i class="nav-icon fa-solid fa-users"></i>
                            </div>
                            <a href="{{route('admin.user.index')}}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
