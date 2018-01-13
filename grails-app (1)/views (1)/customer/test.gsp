<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Responsive contact form with html5 drag and drop image</title>
    <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>





    <link rel="stylesheet" href="css/style.css">




</head>

<body>

<h1>Get in touch!</h1>
<div class="contact">
    <form method="post"   action="checkout" >
        <div class="three_col">
            <select>
                <option value="title">Title</option>
                <option value="mr">MR</option>
                <option value="mrs">MRS</option>
                <option value="ms">MS</option>
                <option value="dr">DR</option>
            </select>
            <input type="text" name="name" placeholder=" Name" class="default" msg="Error for First name">
            <span class="error"></span>

        </div>
        <div class="one_col email">
            <input type="text" name="email" placeholder="Email Address" class="default" msg="Please enter a valid email">
            <span class="error"></span>
        </div>
        <div class="one_col">
            <input type="text" name="phone" placeholder="phone" class="default" msg="Error for website">
            <span class="error"></span>
        </div>
        <div class="one_col">
            <textarea rows="4" cols="20" placeholder="Message"></textarea>
            <span class="error"></span>
        </div>

        <div class="one_col">
            <input id="submit" type="submit" value="Submit" />
        </div>

    </form>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="js/index.js"></script>




</body>
</html>
