<?php include "sample_navbar_view.php" ?>
<div class="container">

<h2 class="text-center">Login</h2>
<div class="row">
<div class="col-md-4 col-md-offset-4">

  <?php echo form_open('VerifyLogin'); ?>
  <form name="Login" method="post" action="http://localhost/dw/Login">

    <input class="form-control" id="username"type="text" class="user" name="username" placeholder="username">
    <input class="form-control"id="password"type="password" class="pass" name="password" placeholder="password">
    <?php echo validation_errors(); ?>
    <button class="btn btn-danger"type="submit">Login</button>
    <a class="btn btn-primary" href="Register">Register</a>
  </form>
</div>
</div>


</div>
