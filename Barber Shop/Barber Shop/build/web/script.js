function checkTime() {
    
    var btnstyle = document.getElementById("checkbtn");
    btnstyle.innerText = "available!!";
    btnstyle.style.background = "green";
    btnstyle.style.color = "#fff";
    var paybtn = document.getElementById('paymentbtn');
    paybtn.style.display = 'inline-block';
    paybtn.style.background = 'red';
    paybtn.style.color = '#fff';
    
}

var timeslots = ['5:30 PM TO 6:00 PM' , '6:00 PM TO 6:30 PM' , '6:30 PM TO 7:00 PM' , '7:00 PM TO 8:30 PM' , '7:30 PM TO 8:00 PM' ];
var availability = [ true , true , true , true , true ];

function checkAvailability(){
    var selectedSlot = document.getElementById("slotselect").value;
    console.log(selectedSlot);
    var selectedIndex = 0;
    for( var i = 0 ; i < timeslots.length ; i++)
    {
        //console.log(selectedSlot == timeslots[i]);
        if( selectedSlot == timeslots[i] )
        {
            selectedIndex = i;
        }
    }
    
    if( availability[selectedIndex] == false )
    {
        alert("Slot has already been booked!! Please try another slot");
    }
    else
    {
        alert("Slot has been Booked successfully!!");
        availability[selectedIndex] = false;
        console.log( availability[selectedIndex] );
    }
}

// TODO:
var slideIndex = 1;
showSlides(slideIndex);

function nextSlide() {
    showSlides(slideIndex = slideIndex + 1);
  }
function prevSlide() {
    showSlides(slideIndex = slideIndex - 1);
  }

  // Thumbnail image controls
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("slide-item");
  var dots = document.getElementsByClassName("imgdot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" imgactive", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " imgactive";
}

 
        //var y = { "ABC": 2, "XYZ": 5, "PQR": 3 };
        function dis() {
            var x = { "Haircut": 140, "Shaving": 60, "Facial": 150, "Massage": 180 };
            var a = document.getElementById("ss").value;
            document.querySelector("#price").setAttribute('value', x[a]);
            
        }