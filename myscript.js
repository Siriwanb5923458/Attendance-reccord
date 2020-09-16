$(document).ready(function () {
  setfocus_index();
});
function setfocus_index() {
  $('input[name="hideid"]').focus();

  $('input[name="hideid"]').blur(function () {
    $('input[name="hideid"]').focus();
  });
}

function changeText(id) {
  var htm = new XMLHttpRequest();
  var name = document.getElementById("name");
  var empid = document.getElementById("id");
  var department = document.getElementById("department");
  var time = document.getElementById("time");
  var hid = document.getElementById("hideid");
  var date = document.getElementById("date");
  
  var d = new Date();
  var hours = d.getHours();
  var minute = d.getMinutes();
  var month = d.getMonth() + 1;
  var curdate = d.getDate()+"/"+month+"/"+d.getFullYear();
  var curtime = hours + " : " + minute;
  var timetype = "";
  
  if ((hours>0 && hours<12)||(hours== 12 && minute<31)){
    timetype = "in";
  }
  if ((hours==12&&minute>30)||hours>12||hours<1){
    timetype = "out";
  }

  htm.open("POST", "getname.php", true);
  htm.onreadystatechange = function () {
    if (htm.readyState === 4 && htm.status === 200) {
      var data = JSON.parse(htm.responseText);

      for (var obj in data) {
        if (id == data[obj].rfid) {
          date.value = curdate;
          name.value = data[obj].name;
          empid.value = data[obj].std_id;
          department.value = data[obj].department;
          time.value = curtime;
          $.ajax({
            url: "insert.php",
            type: "post",
            data: {
              name: data[obj].name,
              id: data[obj].std_id,
              department: data[obj].department,
              time: curtime,
              ttype:timetype,
              date: curdate,
            },
            success: function (data) {
              console.log("Upload successfully");
              console.log(timetype);

            },
          });
          break;
        }
      }
    }
  };
  htm.send(null);
  hid.value = "";
}
