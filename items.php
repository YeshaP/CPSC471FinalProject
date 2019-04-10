<head>
<link rel="stylesheet" href="items.css">
</head>
<body>

<div class="heading">
  <h1>Mbiant Apparel</h1>
</div>

<div class="cart" align="right">
  <a href="shoppingCart.html" class="button">Go to Shopping Cart</a>
</div>

<?php
$servername = "68.183.197.33";
$username = "DemoAdmin";
$password = "cpsc471db";
$dbname = "finalProject";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT name, type, barcode, color, price, size, gender, quantity, description, url FROM items";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $i = 0; 
    // output data of each row
    while($row = $result->fetch_assoc()) {

        //echo "name: " . $row["name"]. " - type: " . $row["type"]. "color " . $row["color"]. "<br>";
        //echo "<strong>" . $i ."</strong>";
        if($i % 3 == 0){
            //echo "add new row";
            echo "<div class=row>";
        }
        // here add column of data 
        echo
            "<div class=\"column\">
                <button onclick=\"myFunction()\">
                <img src=\"" . $row["url"] .  "\" alt=\"Shoes\" class = \"image\">
                <div class=\"overlay item\" id=\"" . $row["barcode"] . "\" />
                    <h5> Type:" . $row["type"] . "<br> Color:" . $row["color"] . "<br> Price:" .$row["price"] . "<br> Gender:" . $row["gender"] . "<br> Size:" . $row["size"] .  "<br> Quantity:" .$row["quantity"] . "<br> Barcode:" .$row["barcode"]. "</h5>
                </div>
                </button>
            </div>";

        if($i % 3 == 2){
            //echo "add closing tag";
            echo "</div>";
        }
        $i +=1;
    }
} else {
    echo "0 results";
}
$conn->close();
?>


<!DOCTYPE html>
<html>



<script>
    let itemClass = document.getElementsByClassName("item");
    for(var j = 0; j < itemClass.length; j++) {
      (function(index) {
        itemClass[index].addEventListener("click", function(e) {
           console.log("Clicked index: " + index);
           console.log(e.target)
           console.log(e.target.className);
           console.log(e.target.toString().split(">"))
         })
      })(j);
    }
  function myFunction(){
    confirm("Product added to cart");
  }
</script>
</body>
</html>
