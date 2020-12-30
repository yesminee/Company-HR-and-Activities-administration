<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
     <link href="style.css" rel="stylesheet">
      <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
  <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
  <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-sm fixed-top ">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="logo.png" height="30" width="41"></a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a class="nav-link" href="authentification.jsp"><span class="fa fa-home fa-lg"></span>NEW-TECH</a></li>
            </ul>
        </div>
    </nav>
    
    <div id="loginModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="content">
            <div class="modal-header">
                <h4 class="modal-title">Login</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-row">
                        <div class="form-group col-sm-4">
                            <label class="sr-only" for="exampleInputEmail3">Email address</label>
                            <input type="email" class="form-control form-control-sm mr-1" id="exampleInputEmail3"
                                placeholder="Enter email">
                        </div>
                        <div class="form-group col-sm-4">
                            <label class="sr-only" for="exampleInputPassword3">Password</label>
                            <input type="password" class="form-control form-control-sm mr-1" id="exampleInputPassword3"
                                placeholder="Password">
                        </div>
                        <div class="col-sm-auto">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox">
                                <label class="form-check-label"> Remember me </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <button type="button" class="btn btn-secondary btn-sm ml-auto" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary btn-sm ml-1">Sign in</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
   
</body>

</html>