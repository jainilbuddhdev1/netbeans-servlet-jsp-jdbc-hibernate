<!DOCTYPE html>
<html lang="en">
    <%
        if(request.getParameter("msg") != null)
        {
            String msg = request.getParameter("msg");
    %>
    <p style="color:red;text-align: center;"><%= msg %></p>
    <%
        }
    %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | SignUp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400&display=swap"
        rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <script src="./script.js"></script>
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div class="cardbox">

        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="login-tab" data-bs-toggle="tab" data-bs-target="#login"
                    type="button" role="tab" aria-controls="login" aria-selected="true">Login</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="signup-tab" data-bs-toggle="tab" data-bs-target="#signup" type="button"
                    role="tab" aria-controls="signup" aria-selected="false">Sign Up</button>
            </li>
        </ul>


        <div class="tab-content" id="myTabContent">

            <!---------------------- login-tab ---------------------->
            <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                <h2>Login</h2>
                <hr>
                <div class="container">

                    <form action="LoginController.jsp" method="post">
                        <table>
                            <tr>
                                <td><label for="email_id">Email:</label></td>
                                <td><input type="email" placeholder="abc@gmail.com" name="email"></td>
                            </tr>
                            <tr>
                                <td><label for="pwd">Password:</label></td>
                                <td><input type="password" name="password" id="pwd"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><button class="btn btn-dark text-center">login</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>


            <!------------------ signup-tab -------------------->
            <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                <h2>Sign Up</h2>
                <hr>
                <div class="container">

                    <form action="SignupController.jsp" method="post">
                        <table>
                            <tr>
                                <td><label for="email_id">Email:</label></td>
                                <td><input type="email" placeholder="abc@gmail.com" name="email"></td>
                            </tr>
                            <tr>
                                <td><label for="pwd">Create a Password:</label></td>
                                <td><input type="password" name="password" id="pwd"></td>
                            </tr>
                            <tr>
                                <td><label for="pwd">Confirm Password:</label></td>
                                <td><input type="password" id="pwd" name="confirmpassword"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><button class="btn btn-dark">create account</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>


    </div>
</body>

</html>