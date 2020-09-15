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
            <div class="container-fluid">
            <div class="row"><img src="img/WD.png" alt="WD icon"></div>
            <div class="row" style="bottom:0;margin-top:250px;"> <div class="clock">
        <div class="hours">
          <div class="first">
            <div class="number">0</div>
          </div>
          <div class="second">
            <div class="number">0</div>
          </div>
        </div>
        <div class="tick">:</div>
        <div class="minutes">
          <div class="first">
            <div class="number">0</div>
          </div>
          <div class="second">
            <div class="number">0</div>
          </div>
        </div>
        <div class="tick">:</div>
        <div class="seconds">
          <div class="first">
            <div class="number">0</div>
          </div>
          <div class="second infinite">
            <div class="number">0</div>
          </div>
        </div>
      </div></div>
            </div>
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
          <div class="input_container">
          <i class="far fa-calendar-alt"></i>
              <input placeholder="Date" type="text" name="date" id="date" class='input_field'>
          </div>

            
        </div>
    </div>
</body>
<script>
var hoursContainer = document.querySelector('.hours')
var minutesContainer = document.querySelector('.minutes')
var tickElements = Array.from(document.querySelectorAll('.tick'))
var secondsContainer = document.querySelector('.seconds')

var last = new Date(0)
last.setUTCHours(-1)

var tickState = true

function updateTime () {
  var now = new Date
  
  var lastHours = last.getHours().toString()
  var nowHours = now.getHours().toString()
  if (lastHours !== nowHours) {
    updateContainer(hoursContainer, nowHours)
  }
  
  var lastMinutes = last.getMinutes().toString()
  var nowMinutes = now.getMinutes().toString()
  if (lastMinutes !== nowMinutes) {
    updateContainer(minutesContainer, nowMinutes)
  }
  
  var lastSeconds = last.getSeconds().toString()
  var nowSeconds = now.getSeconds().toString()
  if (lastSeconds !== nowSeconds) {
    //tick()
    updateContainer(secondsContainer, nowSeconds)
  }
  
  last = now
}

function tick () {
  tickElements.forEach(t => t.classList.toggle('tick-hidden'))
}

function updateContainer (container, newTime) {
  var time = newTime.split('')
  
  if (time.length === 1) {
    time.unshift('0')
  }
  
  
  var first = container.firstElementChild
  if (first.lastElementChild.textContent !== time[0]) {
    updateNumber(first, time[0])
  }
  
  var last = container.lastElementChild
  if (last.lastElementChild.textContent !== time[1]) {
    updateNumber(last, time[1])
  }
}

function updateNumber (element, number) {
  //element.lastElementChild.textContent = number
  var second = element.lastElementChild.cloneNode(true)
  second.textContent = number
  
  element.appendChild(second)
  element.classList.add('move')

  setTimeout(function () {
    element.classList.remove('move')
  }, 990)
  setTimeout(function () {
    element.removeChild(element.firstElementChild)
  }, 990)
}

setInterval(updateTime, 100)
</script>
</html>