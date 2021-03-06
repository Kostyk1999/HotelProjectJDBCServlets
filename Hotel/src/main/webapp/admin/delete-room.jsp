<%@ include file="header.jsp" %>

<div id="wrapper">

    <%@ include file="sidebar.jsp" %>

    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Overview</li>
            </ol>
            <!-- Area Chart Example-->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-trash mr-1"></i>
                    Delete room
                </div>
                <section id="contact"
                         class="delete-room-section admin-crud-section header-contact d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <h2 class="section-heading text-uppercase mb-md-5 mb-sm-4">Delete room</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="contactForm" action="delete-room" method="post"
                                      novalidate="novalidate">
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input class="form-control" type="number" min="0" max="1000" name="roomNumber"
                                                       placeholder="Room number *" required="required"
                                                       list="numberDatalist"
                                                       data-validation-required-message="Please enter room number.">
                                                <p class="help-block text-danger"></p>
                                                <datalist id="numberDatalist">

                                                </datalist>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Hotel *" name="hotelName"
                                                       required="required" list="hotelDatalist"
                                                       data-validation-required-message="Please enter hotel">
                                                <p class="help-block text-danger"></p>
                                                <datalist id="hotelDatalist">

                                                </datalist>
                                            </div>
                                        </div>

                                        <!-- Response from server -->
                                        <c:if test="${not empty Msg}">
                                            <div class="form-group col-md-12 d-flex justify-content-center">
                                                <div class="error-validation success alert-success p-3 rounded">
                                                        ${Msg}
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${not empty Error}">
                                            <div class="form-group col-md-12 d-flex justify-content-center">
                                                <div class="error-validation alert alert-danger">
                                                        ${Error}
                                                </div>
                                            </div>
                                        </c:if>

                                        <div class="clearfix"></div>
                                        <div class="col-lg-12 text-center">
                                            <div id="success"></div>
                                            <button class="btn btn-danger btn-xl text-uppercase"
                                                    type="submit">delete room
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>


        <%@ include file="sticky-footer.jsp" %>

    </div>
    <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->
<%@ include file="footer.jsp" %>
