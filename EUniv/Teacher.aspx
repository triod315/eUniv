<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="EUniv.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EUniv teacher</title>
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
            <h4 class="site-logo"><a href="index.html">EUniv teacher page</a></h4>
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
            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Your info</p>
            <asp:GridView ID="teachersgrid" runat="server" HorizontalAlign="Center"></asp:GridView>
            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Courses</p>
            <asp:GridView ID="coursesgrid" runat="server" HorizontalAlign="Center"></asp:GridView>


            <hr />
            <p style="text-align: center; height: 23px; margin-bottom: 2px">Uncheched test attempts</p>
            <asp:GridView ID="testattgrid" runat="server" HorizontalAlign="Center"></asp:GridView>

            <hr />

            <p style="text-align: center; height: 23px; margin-bottom: 2px">Create course</p>
        </div>
        <asp:Panel ID="Panel1" runat="server" Width="324px" style="display:block;margin-left:auto; margin-right:auto;" Height="313px">
            <asp:Label ID="Label1" runat="server" Text="Course name" style="display:block;text-align:center;margin-left:auto; margin-right:auto;"></asp:Label>
            
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" style="margin-top: 9px" Width="315px" ></asp:TextBox>
            
            <asp:Label ID="Label4" runat="server" Text="type" style="display:block;text-align:center;margin-left:auto; margin-right:auto;"></asp:Label>

            <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="94px">
                <asp:ListItem>N</asp:ListItem>
                <asp:ListItem>O</asp:ListItem>
            </asp:DropDownList>

             <asp:Label ID="Label5" runat="server" Text="Program name" style="display:block;text-align:center;margin-left:auto; margin-right:auto;"></asp:Label>

            <asp:DropDownList ID="DropDownList2" runat="server" Height="42px" Width="324px"></asp:DropDownList>

            <asp:Button ID="Create" runat="server" Height="37px" style="margin-top: 10px" Text="Button" Width="323px" OnClick="Create_Click" />

        </asp:Panel>
    </form>
</body>
</html>
