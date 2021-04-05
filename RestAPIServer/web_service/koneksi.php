<?php
 define('HOST','localhost');
 define('USER','usernameDBAnda');
 define('PASS','passwordDBAnda');
 define('DB','NamaDBAnda');

 $con = new mysqli(HOST,USER,PASS,DB) or die('Unable to Connect');