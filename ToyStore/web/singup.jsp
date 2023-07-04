
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Login 07</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style-login.css">

    </head>
    <body>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">

                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="wrap d-md-flex">
                            <div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
                                <div class="text w-100">
                                    <h2>Welcome to login</h2>
                                    <p>Comeback to login?</p>
                                    <a href="login" class="btn btn-white btn-outline-white">Sign In</a>
                                </div>
                            </div>
                            <div class="login-wrap p-4 p-lg-5">
                                <div class="d-flex">
                                    <div class="w-100">
                                        <h3 class="mb-4">Sign Up</h3>
                                    </div>
                                    <div class="w-100">
                                        <p class="social-media d-flex justify-content-end">

                                        </p>
                                    </div>
                                </div>
                                <form action="createAccount" class="signin-form" method="POST">
                                    <div class="form-group mb-3">
                                        <label class="label" for="name">Username</label>
                                        <input type="text" class="form-control" name="username" placeholder="Username"  required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="label" for="password">Password</label>
                                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="label" for="password">Display Name</label>
                                        <input type="text" class="form-control" name="displayname" placeholder="DisplayName" required>
                                    </div>
                                     <div class="form-group mb-3">
                                        <label class="label" for="name">Address</label>
                                        <input type="text" class="form-control" name="address" placeholder="Address"  required>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label class="label" for="password">Phone</label>
                                        <input type="text" class="form-control" name="phone" placeholder="Phone" required>
                                    </div>
                                     <div class="form-group mb-3">
                                        <label class="label" for="name">Email</label>
                                        <input type="text" class="form-control" name="email" placeholder="Email"  required>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>


