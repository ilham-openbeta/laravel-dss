@extends('template.index')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Home</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">

                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header border-0">
                            <div class="d-flex justify-content-between">
                                <h3 class="card-title">Welcome to Decision Support System :)</h3>
                            </div>
                        </div>
                        <div class="card-body">
                            This system can help someone to make decisions using Simple Additive Weighting Algorithm.
                            <br> How to use:
                            <ol>
                                <li>Go to the Criteria & Weight menu to add decision criteria and its weight (the
                                    importance of criteria).</li>
                                <li>Then go to the Criteria Rating menu to give rating option for each criterion.</li>
                                <li>Use the Alternative menu to add alternative (candidate) and its rating.</li>
                                <li>Check the Rank menu to view the result, click the Total column on the table to sort
                                    it by its total value.</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.card -->

                </div>
                <!-- /.col-md-6 -->

            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection
