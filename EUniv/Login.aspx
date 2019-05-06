<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EUniv.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EUniv Auth</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700" rel="stylesheet">

    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">

    <link rel="stylesheet" href="/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

    <header role="banner">
      

      <div class="container logo-wrap">
        <div class="row pt-5">
          <div class="col-12 text-center">
            <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button" aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines"></span></a>
            <h1 class="site-logo"><a href="index.html">EUniv Auth</a></h1>
          </div>
        </div>
      </div>
      
      <nav class="navbar navbar-expand-md  navbar-light bg-light">
        <div class="container">
          
         
          <div class="collapse navbar-collapse" id="navbarMenu">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item">
                <a class="nav-link active" href="/index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="/EUniv/EUniv/Login.aspx">eUniv</a>
              </li>
              

              
              <li class="nav-item">
                <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html">Contact</a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
    </header>
    <!-- END header -->

    <form id="form1" runat="server">
        <div>
            <p style="text-align: center; height: 23px; margin-bottom: 2px">
            Login or mail</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" style="display:block; text-align: center; margin-left: auto; margin-right:auto; margin-top: 0px" Width="262px"></asp:TextBox>
        </p>
        <p style="text-align: center; height: 23px; margin-bottom: 2px">
            Password</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="27px" style="display:block; text-align: center; margin-left: auto; margin-right:auto;margin-top: 0px" Width="259px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="display:block;margin-right:auto; margin-left: auto;" Text="Login" Width="126px" />
 
        </div>

    </form>
</body>
</html>
