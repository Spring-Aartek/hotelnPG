<!DOCTYPE html>
<html><head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">

  
  

  
  
  

  

  <script type="text/javascript" src="js/jquery-1.js"></script>

  

  

  

  
    <link rel="stylesheet" type="text/css" href="js/result-light.css">
  

  

  <style type="text/css">
    
  </style>

  <title> by abhiklpm</title>

  
    




<script type="text/javascript">//<![CDATA[
$(window).load(function(){
$("input:checkbox").click(function () {
    var showAll = true;
    $('tr').not('.first').hide();
    $('input[type=checkbox]').each(function () {
        if ($(this)[0].checked) {
            showAll = false;
            var status = $(this).attr('rel');
            var value = $(this).val();            
            $('td.' + status + '[rel="' + value + '"]').parent('tr').show();
        }
    });
    if(showAll){
        $('tr').show();
    }
});
});//]]> 

</script>

  
</head>

<body>
  <input class="prod_status " rel="status" value="Discontinued" type="checkbox">Discontinued
<br>
<input class="prod_status" rel="status" value="Shipping" type="checkbox">Shipping
<br>
<input class="prod_capacity" rel="capacity" value="1GB" type="checkbox">1GB
<br>
<input class="prod_capacity" rel="capacity" value="2GB" type="checkbox">2GB
<br>
<input class="prod_capacity" rel="capacity" value="4GB" type="checkbox">4GB
<br>
<input class="prod_speed" rel="speed" value="1000MHz" type="checkbox">1000MHz
<br>
<input class="prod_speed" rel="speed" value="1333MHz" type="checkbox">1333MHz
<br>
<br>
<br>
<table class="someclass" summary="bla" border="0" cellpadding="0" cellspacing="0">
    <caption>bla bla</caption>
    <thead>
        <tr id="ProductID" class="first">
            <th>Product Number</th>
            <th>Status</th>
            <th>Capacity</th>
            <th>Speed</th>
        </tr>
    </thead>
    <tbody>
        <tr id="Memory1" class="part_detail">
            <td class="name">Memory1</td>
            <td class="status" rel="Shipping">Shipping</td>
            <td class="capacity" rel="1GB">1GB</td>
            <td class="speed" rel="1333MHz">1333MHz</td>
        </tr>
        <tr id="Memory2" class="part_detail">
            <td class="name">Memory2</td>
            <td class="status" rel="Discontinued">Discontinued</td>
            <td class="capacity" rel="Shipping">2GB</td>
            <td class="speed" rel="1000MHz">1000MHz</td>
        </tr>
        <tr id="Memory3" class="part_detail">
            <td class="name">Memory3</td>
            <td class="status" rel="Shipping">Shipping</td>
            <td class="capacity" rel="2GB">2GB</td>
            <td class="speed" rel="1333MHz">1333MHz</td>
        </tr>
        <tr id="Memory4" class="part_detail">
            <td class="name">Memory4</td>
            <td class="status" rel="Discontinued">Discontinued</td>
            <td class="capacity" rel="4GB">4GB</td>
            <td class="speed" rel="1000MHz">1000MHz</td>
        </tr>
        <tr id="Memory5" class="part_detail">
            <td class="name">Memory5</td>
            <td class="status" rel="Shipping">Shipping</td>
            <td class="capacity" rel="4GB">4GB</td>
            <td class="speed" rel="1333MHz">1333MHz</td>
        </tr>
    </tbody>
  




</table></body></html>