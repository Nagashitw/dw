
</script>
<!--Menu View -->
<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
  <div ng-app="myApp" ng-controller="dishesCtrl">
          <h2>View your Menu</h2><br><hr>
          <label for="SelectMenu">Select the Menu</label><br>
          <select id="SelectMenu" name="SelectMenu">
            <?php foreach($list as $lista): ?>
              <option value="<?php echo $lista->MENU_ID; ?>"><?php echo $lista->MENU_NAME; ?></option>
            <?php endforeach;  ?>
          </select>
<!-- Fazer isto EM ANGULAR -->
          <label for="SelectMenu2">Select the Menu</label><br>
          <select id="SelectMenu2" name="SelectMenu2" >
          <option ng-repeat ="x in info">{{x.RESTAURANT_NAME}}  </option>
          </select>

<!--meter o angular -->
<hr />

              <div class="table-responsive">


              <table class="table table-striped table-hover">
                <th> Dish </th>
                <th> Type</th>
                <th> Price (€)</th>
                <tr ng-repeat="x in info">

                    <td>  {{x.DISH_NAME}}  </td>
                    <td>  {{x.DISH_TYPE}}  </td>
                    <td>  {{x.PRICE_VALUE}} </td>


                </tr>

              </table>
  </div>
            </div>
</div>
<div>


<script src="<?php echo base_url().'assets/scripts/dishes.js'?>"> </script>
</div>
