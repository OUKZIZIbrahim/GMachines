<%-- 
    Document   : login
    Created on : 21-Jan-2022, 00:21:40
    Author     : ibrah
--%>
<%@page import="beans.User"%>
<%@page import="service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Responsive Loginform</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="l1/style.css">
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
    .btn-success {
    color: #fff;
    background-color: #7BB992;
    border-color: #15522C;
    border-radius: 30px;
    margin: auto;
    margin-left: 70px;
    margin-top: 30px;
}
</style>

</head>
<body>

        <!-- LOGIN MODULE -->
        <div class="login">
            <div class="wrap">
                <!-- TOGGLE -->
                <div id="toggle-wrap">
                    <div id="toggle-terms">
                        <div id="cross">
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
                <!-- TERMS -->
                <div class="terms">
                    <h2>dp Terms of Service</h2>
                    <p class="small">Last modified: September 23, 2017</p>
                    <h3>Welcome to dp</h3>
                    
                </div>

                <!-- RECOVERY -->
                <div class="recovery">
                    <h2>Password Recovery</h2>
                    <p>Enter either the <strong>email address</strong> or <strong>username</strong> on the account and <strong>click Submit</strong></p>
                    <p>We'll email instructions on how to reset your password.</p>
                   <!-- <form class="recovery-form" action="" method="post">
                        <input type="text" class="input" id="user_recover" placeholder="Enter Email or Username Here">
                        <input type="submit" class="button" value="Submit">
                    </form>-->
                    <p class="mssg">An email has been sent to you with further instructions.</p>
                </div>

 

                <!-- LOGIN FORM -->
                <div class="user">
                    <!-- ACTIONS
                    <div class="actions">
                        <a class="help" href="#signup-tab-content">Sign Up</a><a class="faq" href="#login-tab-content">Login</a>
                    </div>
                    -->
                    <div class="form-wrap">
                        <!-- TABS -->
                    	<div class="tabs">
                            <h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>Login<span></a></h3>
                    		<h3 class="signup-tab"><a class="sign-up" href="#signup-tab-content"><span>Sign Up</span></a></h3>
                    	</div>
                        <!-- TABS CONTENT -->
                    	<div class="tabs-content">
                            <!-- TABS CONTENT LOGIN -->
                    		<div id="login-tab-content" class="active">
                    			<form class="login-form" action="LoginController" method="post">
                    				<input type="text" class="input" name="username"  id="user_login" autocomplete="off" placeholder="Email ou Username">
                    				<input type="password" class="input" name="mdp" id="user_pass" autocomplete="off" placeholder="mot de pass">
                    				<input type="checkbox" class="checkbox" checked id="remember_me">
                    				<label for="remember_me">Remember me</label>
                    				 <button type="submit" class="btn btn-success">Login</button>
                                                
                                                
                                                
                    			</form>
                    			<div class="help-action">
                    				<p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="forgot" href="#">Forgot your password?</a></p>
                    			</div>
                    		</div>
                            <!-- TABS CONTENT SIGNUP -->
                    		<div id="signup-tab-content">
                    			<form class="signup-form" action="UserController" method="post">
                                                <input type="text" class="input" id="user_name" autocomplete="off" name="nom" placeholder="nom">
                                                <input type="text" class="input" id="user_name" autocomplete="off" name="prenom" placeholder="prenom">
                    				<input type="text" class="input" id="user_email" name="username" autocomplete="off" placeholder="Email">
                    				
                    				<input type="password" class="input" id="user_pass" autocomplete="off" name="mdp" placeholder="mot de pass">
                                                <input type="password" class="input" id="user_pass" autocomplete="off" name="cmdp" placeholder="confirmer mot de pass">
                    				 <button   id="send" type="submit" value="Envoyer"  class="btn btn-success">Sign up</button>
                    			</form>
                    			
                    		</div>
                    	</div>
                	</div>
                </div>
            </div>
        </div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="l1/script.js"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
