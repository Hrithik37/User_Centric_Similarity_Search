<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Comments...</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {color: #9900CC}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">User-Centric Similarity Search</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span> Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span> Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span> Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  
	  <h2 class="style5 style125 style1 style2">View All Comments</h2>
	  
 <table width="604" height="88" border="2" cellpadding="2" cellspacing="2">
             <tr bgcolor="#0099FF">
			 <td width="113" height="30"><div align="center" class="style129">ID</div></td>
			 <td width="113" height="30"><div align="center" class="style129">Post Name</div></td>
              <td width="113" height="30"><div align="center" class="style129">User</div></td>
              <td width="333"><div align="center" class="style130">
                  <div align="center"><strong>Comment</strong></div>
              </div></td>
              <td width="128"><div align="center" class="style118"><span class="style128">Date</span></div></td>
			  <td width="128"><div align="center" class="style118"><span class="style128">Image</span></div></td>
            </tr>
            <%@ include file="connect.jsp"%>
            <%	
			try
			{
				
			               String query1="select * from comments";
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								int i=rs1.getInt(1);
								String pname1=rs1.getString(2);
								String user1=rs1.getString("user");
								String comment1=rs1.getString("comment");
								String date1=rs1.getString("date");
								int p_id=rs1.getInt(6);
								%>
            <tr>
			 <td height="44"><div align="center" class="style124">
                  <%out.println(i);%>
              </div></td>
              
			  <td height="44"><div align="center" class="style124">
                  <%out.println(pname1);%>
              </div></td>
			  
			  <td height="44"><div align="center" class="style124">
                  <%out.println(user1);%>
              </div></td>
              <td><div align="center" class="style124">
                  <%out.println(comment1);%>
              </div></td>
              <td><div align="center" class="style124">
                  <%out.println(date1);%>
              </div></td>
			  <td width="229"><div style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="post_Pic.jsp?id=<%=p_id%>" style="width:50px; height:50px;" />
              </div></td>
            </tr>
            <%
			  }%>
            <tr></tr>
            <%
			  connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}%>
        </table>
		  
		  <div class="style11">
                  <div align="right"><a href="A_Main.jsp">Back</a></div>
        </div>
		  
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
