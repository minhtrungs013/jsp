<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="asset/font/fontawesome-free-5.15.4-web/css/all.min.css">
<link rel="stylesheet" href="asset/css/base.css">
<link rel="stylesheet" href="asset/css/grid.css">
<link rel="stylesheet" href="asset/css/header.css">
<link rel="stylesheet" href="asset/css/footer.css">
<title>Shop</title>

</head>
<div class="grid wide navbar-light__fi">
 <%String email= session.getAttribute("email").toString(); %>
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #e3f2fd;">
  <a class="navbar-brand" href="home.jsp" style="font-size: 2rem;">Lo Go</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="mycart.jsp" style="font-size: 1.4rem;"> <i class="fas fa-cart-plus">Cart</i></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#" style="font-size: 1.4rem;">Link</a>
      </li>
      
      <li class="nav-item" style="font-size: 1.4rem;">
        <a class="nav-link disabled" href="#" >Disabled</a>
      </li>
      <li class="nav-item dropdown" style="font-size: 1.4rem;">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" style="font-size: 1.2rem;"><%out.println(email); %></a>
          <div class="dropdown-divider" style="font-size: 1.2rem;"></div>
          <a class="dropdown-item" href="#" style="font-size: 1.2rem;">Another TIẾNG ANH</a>
          <div class="dropdown-divider" ></div>
          <a class="dropdown-item" href="login.jsp" style="font-size: 1.2rem;">Something else here</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="logout.jsp" style="font-size: 1.2rem;">logOut</a>
        </div>
      </li>
    </ul>
    <form action="searchHome.jsp" method="post" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
