<!-- Includes -->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<style>body{padding-top: 70px}</style>

<!--End of Includes -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Bom Garfo</a>
    </div>
    <ul class="nav navbar-nav">
        <li><a href=" <?php echo base_url().'Home' ?>">Home</a></li>
      <li><a href=" <?php echo base_url().'Restaurant'?>">Restaurants </a></li>
      <li><a href=" <?php echo base_url(). 'Users' ?>">Users</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">REST API <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href=" <?php echo base_url(). 'rest'?>">View All Users in JSON</a></li>
          <li><a href=" <?php echo base_url(). 'rest?format=xml'?>">View All Users in XML</a></li>
          <li><a href=" <?php echo base_url(). 'rest/user/1'?>">View User 1 </a></li>
       </ul>
      </li>
      <li><a href=" <?php echo base_url(). 'dish'?>">Dish</a></li>
      <li><a href=" <?php echo base_url(). 'Home/logout'?>">Logout</a></li>
        <li><a> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> <?php echo $this->session->userdata('id');?></a></li>
    </ul>
  </div>
</nav>
