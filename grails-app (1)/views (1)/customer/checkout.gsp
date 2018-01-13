<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Clean Contact Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${resource(dir: 'form', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'form', file: 'normalize.css')}" type="text/css">



</head>

<body>


<div class="container">
    <div class="row header">
        <h1>CONTACT US &nbsp;</h1>
        <h3>Fill out the form below to get email!</h3>
    </div>
    <div class="row body">
        <form action="sendEmail" method="post">
            <ul>

                <li>

                    <p class="pull-left">
                        <label for="last_name"> name</label>
                        <input type="text" name="name" placeholder="Smith" />
                    </p>
                </li>

                <li>
                    <p>
                        <label for="email">email <span class="req">*</span></label>
                        <input type="email" name="email" placeholder="john.smith@gmail.com" />
                    </p>
                </li>
                <li><div class="divider"></div></li>


                <li>
                    <g:submitButton name="submit" value="Submit" />
                    <small>or press <strong>enter</strong></small>
                </li>

            </ul>
        </form>
    </div>
</div>





</body>
</html>
