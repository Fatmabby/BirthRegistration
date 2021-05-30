<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@ include  file = "link.jsp" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header bg-primary">
                                        <h3 class="text-center font-weight-light my-4">Login</h3>
                                    </div>
                                    <div class="card-body">
                                        <form method="post" action="LoginController">
                                            <div class="form-group">
                                                <label class="large">Username</label>
                                                <input class="form-control py-3" type="text" placeholder="Enter Username" name="user"/>
                                            </div>
                                            <div class="form-group">
                                                <label class="large">Password</label>
                                                <input class="form-control py-3" type="password" placeholder="Enter password" name="pass"/>
                                            </div>
                                            <div class="form-group mt-4 mb-0">
                                                <button class="btn btn-primary btn-block">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                    
                                </div>
                                <div class="text-center text-danger" id="forget"><a href="#">Forget password?</a></div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>