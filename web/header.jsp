<%-- 
    Document   : header
    Created on : Feb 24, 2021, 3:29:43 PM
    Author     : hieuphan
--%>


<div class="header-top">
    <div class="container">
        <a class="nav ${active == "home" ? "text-bold" : ""}" href="Home">My front page</a>
        <a class="nav ${active == "gallery1" ? "text-bold" : ""}" href="Gallery?id=1">Gallery 1</a>
        <a class="nav ${active == "gallery2" ? "text-bold" : ""}" href="Gallery?id=2">Gallery 2</a>
        <a class="nav ${active == "gallery3" ? "text-bold" : ""}" href="Gallery?id=3">Gallery 3</a>
        <a class="nav ${active == "contact" ? "text-bold" : ""}" href="Contact">Contact</a>
    </div>
</div>
<div class="header-bottom">
    <div class="container">
        <div class="flex flex-row">
            <img height="75" src="./public/images/camera-logo.jpg" />
            <div>
                <div class="header-title">Photographer</div>
                <div class="header-subtitle">Welcome to this website</p>
                </div>
            </div>
        </div>
    </div>
</div>    

