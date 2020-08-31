<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Attendance Record</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="myscript.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet"></script>
    <link rel="stylesheet" href="main.css">
</head>

<body>
    <input name="hideid" class="hiddenInput" type="text" value="" id="hideid" onchange="changeText(this.value)"/>
    <input disabled style="top:5px; right:5px; position: absolute; width: 150px;" type="submit" value="Login" id='input_submit' class='input_field'>
    <div id="form_wrapper">
        
        <div id="form_left">
            <!-- <img src="img/WD.png" alt="WD icon"> -->
        </div>
        
        <div id="form_right">
            <h1>Attendance Record</h1>
            <div class="input_container">
                <i class="fa fa-id-badge"></i>
                <input placeholder="Name" type="text" name="Email" id="name" class='input_field'>
            </div>
            <div class="input_container">
                <i class="fas fa-fingerprint"></i>
              <input placeholder="Student ID" type="text" name="Std" id="id" class='input_field'>
          </div>
            <div class="input_container">
                <i class="far fa-building"></i>
                <input  placeholder="Department" type="text" name="Dpt" id="department" class='input_field'>
            </div>
            <div class="input_container">
                <i class="far fa-clock"></i>
              <input placeholder="Time" type="text" name="time" id="time" class='input_field'>
          </div>
            
        </div>
    </div>
</body>

</html>