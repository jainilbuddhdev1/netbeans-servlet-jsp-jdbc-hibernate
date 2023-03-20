<%-- 
    Document   : ShopList
    Created on : 11 Apr, 2022, 11:36:44 PM
    Author     : New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style-1.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400&display=swap" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <script src="./script.js"></script>
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <!-- navbar section -->
    <section class="navbar">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Barber Appointment</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Service</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Browse Shops</a>
                  </li>
                  
                </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search your fav Barber" aria-label="Search">
                  <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
    </section>  

    <!-- Barber list   -->
    <section class="listOfShops">
      <h3>Barbershops</h3>
      <hr>
      <!--<span>page <a href="">1</a> of 2</span>-->
      <span style="margin-right: 0%;margin-left: 70%;">sort by:</span>
      <select style="float: right;" class="">sort by:
        <option value="1">Featured</option>
        <option value="2">Price: Low to High</option>
        <option value="2">Price: High to Low</option>
        <option value="2">Customer rating</option>
      </select>
      <br><br>
        <div class="cardbox">
          <img src="images/img2.jpg" alt="image" ><hr>
          <div class="container">
            <h3>Barber Kings</h3>
            <span> The Great barber king.</span> <br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>
        <div class="cardbox">
          <img src="./images/img3.jpg" alt="image" ><hr>
          <div class="container">
            <h3>Barber I</h3>
            <span> The Great Barber I.</span><br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>
        <div class="cardbox">
          <img src="./images/img2.jpg" alt="image"><hr>
          <div class="container">
            <h3>Barber II</h3>
            <span> The Great Barber II.</span><br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>

        <div class="cardbox">
          <img src="./images/img3.jpg" alt="image" ><hr>
          <div class="container">
            <h3>Barber III</h3>
            <span> The Great Barber III.</span><br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>
        <div class="cardbox">
          <img src="./images/img2.jpg" alt="image" ><hr>
          <div class="container">
            <h3>Barber IV</h3>
            <span> this  barber kings.</span> <br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>
        <div class="cardbox">
          <img src="./images/img3.jpg" alt="image" ><hr>
          <div class="container">
            <h3 id="headingname">Barber V</h3>
            <span> The Great Barber V</span><br>
            <a href="./shopview.html"><button class="btn btn-dark" onclick="location.href='shopview.html'">View</button></a>
          </div>
        </div>

        <div class="cardbox">
          <img src="./images/img2.jpg" alt="image" ><hr>
          <div class="container">
            <h3>Barber VI</h3>
            <span> The Great Barber III.</span><br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>
        <div class="cardbox">
          <img src="./images/img3.jpg" alt="image" ><hr>
          <div class="container">
            <h3>Barber VII</h3>
            <span> this  barber kings.</span> <br>
            <button class="btn btn-dark" onclick="location.href='shopview.html'">View</button>
          </div>
        </div>
        <div class="cardbox">
          <img src="./images/img2.jpg" alt="image" ><hr>
          <div class="container">
            <h3 id="headingname">Barber VIII</h3>
            <span> The Great Barber V</span><br>
            <a href="./shopview.html"><button class="btn btn-dark" onclick="location.href='shopview.html'">View</button></a>
          </div>
        </div>
<!--        
        <button class="btn btn-group-sm btn-outline-success">&lt;previous</button>
        <button class="btn btn-group-sm btn-outline-success" style="float: right;">next&gt;</button>
        -->
    </section>

    <!-- footer section -->
      <!-- <footer>
        <span>Barber Appointment | contact us: <a href="#" style="text-decoration: none;color: #202020;">abc@gmail.com </a></span>
    </footer> -->

    <footer class="footer">
      <div class="footer__addr">
        <h1 class="footer__logo">Barber Appointment</h1>
            
        <h2>Contact</h2>
        
        <address>
          5534 Somewhere In. The World 22193-10212<br>
              
          <a class="footer__btn" href="mailto:example@gmail.com">Email Us</a>
        </address>
      </div>
      
      <ul class="footer__nav">
        <li class="nav__item">
          <h2 class="nav__title">Media</h2>
    
          <ul class="nav__ul">
            <li>
              <a href="#">Online</a>
            </li>
    
            <li>
              <a href="#">Print</a>
            </li>
                
            <li>
              <a href="#">Alternative Ads</a>
            </li>
          </ul>
        </li>
        
        <li class="nav__item nav__item--extra">
          <h2 class="nav__title">Technology</h2>
          
          <ul class="nav__ul nav__ul--extra">
            <li>
              <a href="#">Hardware Design</a>
            </li>
            
            <li>
              <a href="#">Software Design</a>
            </li>
            
            <li>
              <a href="#">Digital Signage</a>
            </li>
            
            <li>
              <a href="#">Automation</a>
            </li>
            
            <li>
              <a href="#">Artificial Intelligence</a>
            </li>
            
            <li>
              <a href="#">IoT</a>
            </li>
          </ul>
        </li>
        
        <li class="nav__item">
          <h2 class="nav__title">Legal</h2>
          
          <ul class="nav__ul">
            <li>
              <a href="#">Privacy Policy</a>
            </li>
            
            <li>
              <a href="#">Terms of Use</a>
            </li>
            
            <li>
              <a href="#">Sitemap</a>
            </li>
          </ul>
        </li>
      </ul>
      
      <div class="legal">
        <p>&copy; 2019 Something. All rights reserved.</p>
        
        <div class="legal__links">
          <span>Barber Appointments</span>
        </div>
      </div>
    </footer>
</body>
</html>