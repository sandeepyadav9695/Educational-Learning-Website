<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>StudyFlow</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="img/favicon.ico" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300|Nunito:400,700&display=swap"
        rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="vendor/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="vendor/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Main Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
    .wlc{
            text-align: center;
            color: DarkOrange;
    }
    </style>
</head>

<body>
    <!-- Header Section Start -->
    <header class="header">
        <div class="container-fluid">
            <div class="logo pull-left">
                <h1><a href="index.html"><b>StudyFlow</b> </a></h1>
                <!-- <a href="#"><img src="img/logo.png" alt="" title="" /></a>-->
            </div>

            <nav id="nav-menu-container">
                <ul class="nav-menu">
                    <li class="menu-active"><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="service.html">Courses</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="price.html">Price</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="quiz.html">Quiz</a></li>
                    <li><a href="signUp.jsp">SignUp</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    
                </ul>
            </nav>
        </div>
    </header>
    <!-- Header Section End -->

 

    <!-- Slider Section Start-->
    <section class="slider">
        <div class="slider-container">
            <div id="carousel" class="carousel  slide carousel-fade" data-ride="carousel">

                <ol class="carousel-indicators"></ol>

                <div class="carousel-inner" role="listbox">

                    <div class="carousel-item active">
                        <div class="carousel-background"><img src="img/slider-1.jpg" alt=""></div>
                        <div class="carousel-container">
                            <div class="carousel-content">
                            <%
        
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && session.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session.getAttribute("username");
    %>

      <div class="container">
        <h1 class="wlc">Welcome, <%= username %>!</h1>
       <a href="Index.html">LOGOUT</a> securely.
    </div>

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
                                <h3 style="color: aliceblue;">Learn with AI-Enhanced Education </h3>
                                <p>

                                    StudyFlow uses AI to create personalized learning experiences, generate courses,
                                    and help you master any subject with custom quizzes and interactive content.
                                </p>
                                <h6 style="color: oklch(.707 .022 261.325); margin-left: 120;"><img src="img/learner_logo.png" alt="" height="30px"> Learn with experts</h6>
                                <h6 style="color: oklch(.707 .022 261.325); margin-left: 120;"><img src="img/certificate-image.png" alt="" height="30px"> Get certificate</h6>
                                
                                <a href="login.html" class="btn-get-started">Get Started</a>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- Slider Section End-->

    <!-- About Us Section Start-->
    <section class="about">
        <div class="container">
            <header class="section-header">
                <h3>About Us</h3>
                <p>
                    At StudyFlow, we believe learning should be simple, engaging, and accessible to everyone. Our
                    platform is built to help students stay organized, improve productivity, and achieve their academic
                    goals with confidence.
                </p>
            </header>

            <div class="row align-items-center about-row">
                <div class="col-md-6">
                    <img src="img/about.jpg" alt="" class="img-fluid">
                </div>
                <div class="col-md-6">
                    <h2 class="title"><a href="#">Welcome to Our Site</a></h2>
                    <p>At StudyFlow, we make learning simple, engaging, and effective. Our smart tools are designed to
                        help you stay focused, save time, and achieve your academic goals with confidence.

                    </p>
                    <div class="read-more">
                        <!-- <a href="#">Read More</a> -->
                    </div>
                </div>
            </div>

            <div class="row about-cols">
                <div class="col-md-4">
                    <div class="about-col">
                        <div class="img">
                            <img src="img/about-mission.jpg" alt="" class="img-fluid">
                            <div class="icon"><i class="ion-ios-disc"></i></div>
                        </div>
                        <h2 class="title"><a href="#">Our Mission</a></h2>
                        <p>
                            <!-- To make education smarter by--> To combining technology with effective study methods,
                            enabling learners to study anywhere, anytime.
                        </p>
                        <div class="read-more">
                            <!-- <a href="#">Read More</a> -->
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="about-col">
                        <div class="img">
                            <img src="img/about-vision.jpg" alt="" class="img-fluid">
                            <div class="icon"><i class="ion-ios-eye"></i></div>
                        </div>
                        <h2 class="title"><a href="#">Our Vision</a></h2>
                        <p>
                            To empower every learner with smarter, simpler, and more effective tools for academic
                            success.
                        </p>
                        <div class="read-more">
                            <!-- <a href="#">Read More</a> -->
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="about-col">
                        <div class="img">
                            <img src="img/about-objective.jpg" alt="" class="img-fluid">
                            <div class="icon"><i class="ion-ios-options"></i></div>
                        </div>
                        <h2 class="title"><a href="#">Our Objective</a></h2>
                        <p>
                            To simplify learning through smart, accessible and Helping students to achieve success with
                            effective study solutions
                        </p>
                        <div class="read-more">
                            <!-- <a href="#">Read More</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us Section End -->

    <!-- Services Section Start -->
    <section id="services" class="services">
        <div class="container">
            <header class="section-header">
                <h3>What we are?</h3>
                <p>
                    E-Learning Platform A modern, easy-to-use platform designed to make online learning simple and
                    effective.
                </p>
            </header>
            <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="single-service">
                        <i class="ion-ios-desktop"></i>
                        <h4><a href="">Web Design</a></h4>
                        <p>We create clean, modern, and responsive designs to ensure your learning experience looks
                            great on any device.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="single-service">
                        <i class="ion-ios-laptop"></i>
                        <h4><a href="">Web Development</a></h4>
                        <p>From concept to deployment, we build fast and secure platforms tailored for education and
                            productivity.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="single-service">
                        <i class="ion-ios-tablet-portrait"></i>
                        <h4><a href="">App Design</a></h4>
                        <p>Beautiful, intuitive mobile app interfaces that make studying on the go simple and enjoyable.
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="single-service">
                        <i class="ion-ios-phone-portrait"></i>
                        <h4><a href="">App Development</a></h4>
                        <p>We develop powerful mobile applications with seamless performance to keep learning accessible
                            anytime, anywhere.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Services Section End -->

    <!-- Call To Action Start -->
    <section class="call-to-action">
        <div class="container text-center">
            <header class="section-header">
                <h3>Call to Action</h3>
                <p>
                    Access high-quality courses designed by industry experts. Upgrade your skills and stay ahead in your
                    career.
                </p>
            </header>
            <a class="cta-btn" href="service.html">Call To Action</a>
        </div>
    </section>
    <!-- Call To Action End -->

    <!--Pricing Section start-->
    <section class="pricing">
        <div class="container">
            <header class="section-header">
                <h3>Our Pricing</h3>
                <p>
                We offer flexible and affordable pricing plans designed to meet the needs of individuals, students, and businesses.
                </p>
            </header>
            <div class="row">
                <div class="col-md-4">
                    <div class="price-content">
                        <div class="price-plan">
                            <p class="price-title">Silver</p>
                            <h2 class="price-amount">9.<span>99</span></h2>
                            <p class="price-date">Per Month</p>
                        </div>
                        <ul class="price-details">
                            <li><i class="ion-md-checkmark"></i><strong>HTML5</strong> and <strong>CSS3</strong></li>
                            <li><i class="ion-md-checkmark"></i><strong>Bootstrap 4</strong></li>
                            <li><i class="ion-md-checkmark"></i><strong>Well-commented</strong> code</li>
                            <li><i class="ion-md-close"></i><strong>IonIcons</strong> integrated</li>
                            <li><i class="ion-md-close"></i>Free <strong>Google Font</strong> integrated</li>
                            <li><i class="ion-md-close"></i><strong>Responsive</strong> design</li>
                        </ul>
                        <a href="#" class="btn mian-btn price-btn">Buy Now</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="price-content features-price">
                        <div class="price-plan">
                            <p class="price-title">Gold</p>
                            <h2 class="price-amount">19.<span>99</span></h2>
                            <p class="price-date">Per Month</p>
                        </div>
                        <ul class="price-details">
                            <li><i class="ion-md-checkmark"></i><strong>HTML5</strong> and <strong>CSS3</strong></li>
                            <li><i class="ion-md-checkmark"></i><strong>Bootstrap 4</strong></li>
                            <li><i class="ion-md-checkmark"></i><strong>Well-commented</strong> code</li>
                            <li><i class="ion-md-checkmark"></i><strong>IonIcons</strong> integrated</li>
                            <li><i class="ion-md-checkmark"></i>Free <strong>Google Font</strong> integrated</li>
                            <li><i class="ion-md-close"></i><strong>Responsive</strong> design</li>
                        </ul>
                        <a href="#" class="btn mian-btn price-btn features-price-btn">Buy Now</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="price-content">
                        <div class="price-plan">
                            <p class="price-title">Platinum</p>
                            <h2 class="price-amount">29.<span>99</span></h2>
                            <p class="price-date">Per Month</p>
                        </div>
                        <ul class="price-details">
                            <li><i class="ion-md-checkmark"></i><strong>HTML5</strong> and <strong>CSS3</strong></li>
                            <li><i class="ion-md-checkmark"></i><strong>Bootstrap 4</strong></li>
                            <li><i class="ion-md-checkmark"></i><strong>Well-commented</strong> code</li>
                            <li><i class="ion-md-checkmark"></i><strong>IonIcons</strong> integrated</li>
                            <li><i class="ion-md-checkmark"></i>Free <strong>Google Font</strong> integrated</li>
                            <li><i class="ion-md-checkmark"></i><strong>Responsive</strong> design</li>
                        </ul>
                        <a href="#" class="btn mian-btn price-btn">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Pricing Section End-->

    <!-- Skills Section Start-->
    <section class="skills">
        <div class="container">
            <header class="section-header">
                <h3>Our Skills</h3>
                <p>
                    We specialize in web development, UI/UX design, digital marketing, and creative solutions, delivering high-quality results with innovation and expertise.
                </p>
            </header>

            <div class="skills-content">
                <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                        aria-valuemax="100">
                        <span class="skill">HTML <i class="val">100%</i></span>
                    </div>
                </div>

                <div class="progress">
                    <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0"
                        aria-valuemax="100">
                        <span class="skill">CSS <i class="val">90%</i></span>
                    </div>
                </div>

                <div class="progress">
                    <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                        aria-valuemax="100">
                        <span class="skill">jQuery <i class="val">80%</i></span>
                    </div>
                </div>

                <div class="progress">
                    <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                        aria-valuemax="100">
                        <span class="skill">PHP <i class="val">70%</i></span>
                    </div>
                </div>
            </div>

            <div class="row counters">
                <div class="col-lg-3 col-6 text-center">
                    <h2 data-toggle="counter-up">100</h2>
                    <p>Our Staffs</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <h2 data-toggle="counter-up">200</h2>
                    <p>Our Clients</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <h2 data-toggle="counter-up">300</h2>
                    <p>Completed Projects</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <h2 data-toggle="counter-up">400</h2>
                    <p>Running Projects</p>
                </div>
            </div>
        </div>
    </section>
    <!-- Skills Section End-->

    <!-- Portfolio Section Start -->
    <section class="portfolio">
        <div class="container">

            <header class="section-header">
                <h3 class="section-title">Our Portfolio</h3>
                <p>
                    Our portfolio showcases the diverse range of projects we have successfully delivered across various industries. From innovative web applications to creative design solutions, each project reflects our commitment to quality, creativity, and excellence. Take a look at our work and see how we bring ideas to life.
                </p>
            </header>

            <div class="row">
                <div class="col-lg-12">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".web-des">Web Design</li>
                        <li data-filter=".web-dev">Web Development</li>
                        <li data-filter=".app-des">App Design</li>
                        <li data-filter=".app-dev">App Development</li>
                    </ul>
                </div>
            </div>

            <div class="row portfolio-container">
                <div class="col-lg-4 col-md-6 portfolio-item web-des">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/portfolio-1.jpg" class="img-fluid" alt="Portfolio">
                            <a href="img/portfolio-1.jpg" data-lightbox="portfolio" data-title="Lorem ipsum dolor"
                                class="link-preview" title="Preview"><i class="ion-md-eye"></i></a>
                            <a href="" class="link-details" title="More Details"><i class="ion-md-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4>E-Commerce Website Design</h4>
                            <p>Web Design</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item web-dev">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/portfolio-2.jpg" class="img-fluid" alt="Portfolio">
                            <a href="img/portfolio-2.jpg" class="link-preview" data-lightbox="portfolio"
                                data-title="Nulla ullamcorper pharetra" title="Preview"><i class="ion-md-eye"></i></a>
                            <a href="" class="link-details" title="More Details"><i class="ion-md-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4>Personal Finance Dashboard</h4>
                            <p>Web Development</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item app-des">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/portfolio-3.jpg" class="img-fluid" alt="Portfolio">
                            <a href="img/portfolio-3.jpg" class="link-preview" data-lightbox="portfolio"
                                data-title="Phasellus eget dictum" title="Preview"><i class="ion-md-eye"></i></a>
                            <a href="" class="link-details" title="More Details"><i class="ion-md-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4>Mobile Banking App UI</h4>
                            <p>App Design</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item app-dev">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/portfolio-4.jpg" class="img-fluid" alt="Portfolio">
                            <a href="img/portfolio-4.jpg" data-lightbox="portfolio" data-title="Lorem ipsum dolor"
                                class="link-preview" title="Preview"><i class="ion-md-eye"></i></a>
                            <a href="" class="link-details" title="More Details"><i class="ion-md-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4>Code Your Future App</h4>
                            <p>App Development</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item web-des">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/portfolio-5.jpg" class="img-fluid" alt="Portfolio">
                            <a href="img/portfolio-5.jpg" class="link-preview" data-lightbox="portfolio"
                                data-title="Nulla ullamcorper pharetra" title="Preview"><i class="ion-md-eye"></i></a>
                            <a href="" class="link-details" title="More Details"><i class="ion-md-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4>E-Commerce Website Design</h4>
                            <p>Web Design</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 portfolio-item web-dev">
                    <div class="portfolio-wrap">
                        <figure>
                            <img src="img/portfolio-6.jpg" class="img-fluid" alt="Portfolio">
                            <a href="img/portfolio-6.jpg" class="link-preview" data-lightbox="portfolio"
                                data-title="Phasellus eget dictum" title="Preview"><i class="ion-md-eye"></i></a>
                            <a href="" class="link-details" title="More Details"><i class="ion-md-open"></i></a>
                        </figure>

                        <div class="portfolio-info">
                            <h4>Personal Finance Dashboard</h4>
                            <p>Web Development</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Clients Section End -->

    <!-- Contact Section Start -->
    <section class="contact">
        <div class="container">
            <div class="section-header">
                <h3 class="section-title">Contact Us</h3>
                <p>
                    We are glad to have you around and look forward to hearing from you!
                </p>
            </div>

            <div class="row contact-info">
                <div class="col-md-4">
                    <div class="contact-address">
                        <i class="ion-md-pin"></i>
                        <h3>Address</h3>
                        <address>Psit Campus,Kanpur,India</address>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-phone">
                        <i class="ion-md-call"></i>
                        <h3>Phone Number</h3>
                        <p><a href="tel:+12356-789">7268860217<br>9326580318</a></p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-email">
                        <i class="ion-md-mail"></i>
                        <h3>Email</h3>
                        <p><a href="mailto:mohdaamir0360@gmail.com">mohdaamir0360@gmail.com <br>sy8673484@gmail.com</a></p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="map">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26361250.667320687!2d-113.75533773453304!3d36.24128894212527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sbd!4v1574923227698!5m2!1sen!2sbd"
                            frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form">
                        <form class="contactForm">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" placeholder="Your Name" />
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" placeholder="Your Email" />
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Subject" />
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="5" placeholder="Message"></textarea>
                            </div>
                            <div><button type="submit">Send Message</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Footer Start -->
    <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 footer-info">
                        <h3>StudyFlow</h3>
                        <p>
                            At StudyFlow, we believe learning should be simple, engaging, and accessible to everyone.
                            Our platform provides high-quality courses, expert guidance, and practical resources to help
                            students and professionals achieve their goals.
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>About Us</h4>
                        <ul>
                            <li><i class="ion-md-arrow-dropright"></i> <a href="index.html">Home</a></li>
                            <li><i class="ion-md-arrow-dropright"></i> <a href="about.html">About us</a></li>
                            <li><i class="ion-md-arrow-dropright"></i> <a href="service.html">Our Courses</a></li>
                            <li><i class="ion-md-arrow-dropright"></i> <a href="StudyFlow_terms_privacy.pdf"name="terms">Terms & condition</a></li>
                            <li><i class="ion-md-arrow-dropright"></i> <a href="StudyFlow_terms_privacy.pdf"name="terms">Privacy policy</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-contact">
                        <h4>Contact Us</h4>
                        <p>
                            Psit Campus<br>
                            Kanpur<br>
                            India <br>
                            <strong>Phone:</strong>91+7268860217<br>
                            <strong>Email:</strong> mohdaamir0360@gmail.com<br>
                            sy8673484@gmail.com<br>
                        </p>

                        <div class="social-links">
                            <a href="https://x.com/MOHDAAM22788883?t=71HlAzIwQeVZLbrV8GzVtw&s=08"><i
                                    class="ion-logo-twitter"></i></a>
                            <a href="https://www.linkedin.com/in/mohd-aamir--/"><i class="ion-logo-linkedin"></i></a>
                            <a href="https://www.instagram.com/mohammad_aamir_07860?igsh=MTlqOXM4NXAzMjY2Yw=="><i
                                    class="ion-logo-instagram"></i></a>

                        </div>

                    </div>

                    <!-- <div class="col-lg-3 col-md-6 footer-newsletter">
                            <h4>Subscription</h4>
                            <p>Subscribe now and never miss out on new courses, learning tips, and special offers designed to support your educational journey.</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit"  value="Subscribe">
                            </form>
                        </div> -->
                    <div class="col-lg-3 col-md-6 footer-newsletter">
                        <h4>Subscription</h4>
                        <p>Subscribe now and never miss out on new courses, learning tips, and special offers designed
                            to support your educational journey.</p>
                        <input type="email" name="email" required>
                        <button onclick="window.location.href='login.html'" style="background:rgb(29, 191, 115); color: aliceblue; font-size:12PX ; height: 20px;">Subscribe</button>
                    </div>


                </div>
            </div>
        </div>

        <div class="container">
            <div class="copyright">
                &copy; Copyright <a href="https://www.linkedin.com/in/mohd-aamir--/">Sandeep Yadav</a>. All Rights Reserved<br>
                <!-- Template By <a href="https://www.linkedin.com/in/mohd-aamir--/">mohdaamir0360@gmail.com</a> -->
            </div>
        </div>
    </footer>
    <!-- Footer End -->

    <a href="#" class="back-to-top"><i class="ion-md-arrow-dropup"></i></a>

    <!-- Vendor JS Files -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery/jquery-migrate.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/easing/easing.min.js"></script>
    <script src="vendor/superfish/hoverIntent.js"></script>
    <script src="vendor/superfish/superfish.min.js"></script>
    <script src="vendor/waypoints/waypoints.min.js"></script>
    <script src="vendor/touchSwipe/jquery.touchSwipe.min.js"></script>
    <script src="vendor/counterup/counterup.min.js"></script>
    <script src="vendor/owlcarousel/owl.carousel.min.js"></script>
    <script src="vendor/isotope/isotope.pkgd.min.js"></script>
    <script src="vendor/lightbox/js/lightbox.min.js"></script>

    <!-- Main Javascript File -->
    <script src="js/main.js"></script>
    <script src='https://www.noupe.com/embed/0198c163a0327ae19b103d9706e8d6d7d0c4.js'></script>


   

</body>
</html>