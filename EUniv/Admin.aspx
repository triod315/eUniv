<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EUniv.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
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
            <h4 class="site-logo"><a href="index.html">EUniv admin page</a></h4>
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
    <hr />
    <form id="form1" runat="server">
        <div>
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Students</p>
           
            <asp:GridView ID="students" runat="server" HorizontalAlign="Center"></asp:GridView>
            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Teachers</p>
            <asp:GridView ID="teachersgrid" runat="server" HorizontalAlign="Center"></asp:GridView>
            
           
            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Admins</p>
            <asp:GridView ID="adminsgrid" runat="server" HorizontalAlign="Center"></asp:GridView>
            

            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">users</p>
            <asp:GridView ID="usergrid" runat="server" HorizontalAlign="Center"></asp:GridView>
            
            <hr />
            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Courses</p>
            <asp:GridView ID="coursesgrid" runat="server" HorizontalAlign="Center"></asp:GridView>

            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Programs</p>
            <asp:GridView ID="programsgid" runat="server" HorizontalAlign="Center"></asp:GridView>

            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Test attempts</p>
            <asp:GridView ID="testattgrid" runat="server" HorizontalAlign="Center"></asp:GridView>


        </div>
    </form>
</body>
</html>
