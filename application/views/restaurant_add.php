<!--Register Page -->
<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
    <?php echo form_open_multipart('restaurant/restaurant_add');?>
    <form name="restaurant_add" method="post" action="<?php echo site_url().'Restaurant/restaurant_add'; ?>">
          <h2>Register your Restaurant</h2><br><hr>
          <label for="RestaurantName">Restaurant Name</label>
          <input class="form-control" type="text"  id="RestaurantName" name="RestaurantName" placeholder="Restaurant Name"><br>
          <label for="RestaurantAddress">Address</label>
          <input class="form-control"type="text" id="RestaurantAddress"name="RestaurantAddress" placeholder="Restaurant Address"><br>
          <label for="RestaurantReservations">Reservations</label>
          <input class="form-control"type="number"  id="RestaurantReservations"name="RestaurantReservations" min="0" max="1" placeholder="Restaurant Rerservations"><br>
          <label for="RestaurantOpenHours">Open Hours</label>
          <input class="form-control input-sm"type="text"  id="RestaurantOpenHours"  name="RestaurantOpenHours"> <br>
          <input class="form-control input-sm"type="text"  id="RestaurantOpenHours2" name="RestaurantOpenHours2"><br>
          <input class="form-control input-sm"type="text"  id="RestaurantOpenHours3" name="RestaurantOpenHours3"><br>
          <input class="form-control input-sm"type="text"  id="RestaurantOpenHours4" name="RestaurantOpenHours4"><br>
          <input class="form-control input-sm"type="text"  id="RestaurantOpenHours5" name="RestaurantOpenHours5"><br>
          <input class="form-control input-sm"type="text"  id="RestaurantOpenHours6" name="RestaurantOpenHours6"><br>
          <label for="RestaurantWifi">Have Wifi</label>
          <input class="form-control"type="number"  id="RestaurantWifi"name="RestaurantWifi" min="0" max="1" placeholder="Wi-Fi"><br>
          <label for="RestaurantDelivery">Home Delivery</label>
          <input class="form-control"type="number" id="RestaurantDelivery"name="RestaurantDelivery"  min="0" max="1" placeholder="Home Deliveries"><br>
          <label for="RestaurantMultibanconame">Have Multibanco</label>
          <input class="form-control"type="number"  id="RestaurantMultibanconame"name="RestaurantMultibanco"  min="0" max="1" placeholder="Have Multibanco?"><br>
          <label for="RestaurantOutdoorSeating">Have Outdoor Siting</label>
          <input class="form-control"type="text"  id="RestaurantOutdoorSeating" name="RestaurantOutdoorSeating" min="0" max="1"  placeholder="Have Outdoor Siting"><br>
          <label for="Latitude">Latitude</label>
          <input class="form-control"type="text"  id="Latitude" name="Latitude" placeholder="Latitude"><br>
          <label for="Longitude">Longitude</label>
          <input class="form-control"type="text" id="Longitude" name="Longitude" placeholder="Longitude"><br>
          <label for="RestaurantImage">Upload a picture of your restaurant</label>
          <input class="form-control"type="file" id="RestaurantImage"name="RestaurantImage" placeholder="Upload a Picture Max: 720 x 420"><br>
<div class="container">
      <?php echo validation_errors(); ?>
</div>
          <button class="btn btn-danger"type="submit">Registar</button>
        </form>
</div>
</div>
