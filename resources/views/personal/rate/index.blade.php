@extends('personal.layouts.main')

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Rate</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item">Rate</li>
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
                    <div class="col-6">
                        <div class="card">
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Title</th>
                                        <th>Stars</th>
                                        <th colspan="2" class="text-center">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($rates as $rate)
                                        <tr>
                                            <td>{{$rate->id}}</td>
                                            <td>{{$rate->comment}}</td>
                                            <td>{{$rate->rate}}</td>
                                            <td class="text-center"><a href="{{route('films.show', $rate->film_id)}}"><i
                                                        class="fa-regular fa-eye"></i></a>
                                            </td>
                                            <td><a href="{{route('personal.rate.edit', $rate->id)}}"
                                                   class="text-success"><i class="fa-solid fa-pen-to-square"></i></a>
                                            </td>
                                            <td class="text-center">
                                                <form action="{{route('personal.rate.delete', $rate->id)}}" method="post">
                                                    @csrf
                                                    @method('delete')
                                                    <button type="submit" class="border-0 bg-transparent"><i
                                                            class="fa-solid fa-trash text-danger" role="button"></i>
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
