<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>


<!-- Header -->
<header class="masthead">
    <!-- Contact -->
    <section id="contact" class="update-customer-section header-contact header-100vh d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase mb-5">Update Customer </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form id="contactForm" method="post" action="update-customer"
                          novalidate="novalidate">
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="firstName"
                                           placeholder="Customer's First Name *" required="required"
                                           data-validation-required-message="Please enter Customer's first name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="lastName"
                                           placeholder="Customer's Last Name *" required="required"
                                           data-validation-required-message="Please enter Customer's last name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control search-dropdown" type="email" name="email"
                                           placeholder="Customer's Email *" required="required"
                                           list="datalist"
                                           data-validation-required-message="Please enter Customer's email.">
                                    <datalist id="datalist" class="delete-user-search-datalist">
                                        <option value="Something"></option>
                                    </datalist>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control search-dropdown" type="email" name="newEmail"
                                           placeholder="Customer's new Email"
                                           list="datalist">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control" type="password" name="password"
                                           placeholder="Customer's Password *" required="required"
                                           data-validation-required-message="Please enter Customer's password.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="form-group">
                                        <input class="form-control" type="password" name="phoneNumber"
                                               placeholder="Customer's contact phone number"
                                               required="required"
                                               data-validation-required-message="Please enter customer's phone number.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control search-dropdown" list="datalist2"
                                           name="connectedUser"
                                           placeholder="To change connected user, enter new user email here.">
                                    <datalist id="datalist2">
                                        <option value="value"></option>
                                    </datalist>
                                    <p class="help-block text-danger"></p>
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
                                <button class="btn btn-primary btn-xl text-uppercase"
                                        type="submit">update Customer
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</header>

<%@ include file="footer.jsp" %>
