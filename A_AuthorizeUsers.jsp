<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>view Authorize User...</title>
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
.style3 {font-size: 36px; color: #FF00FF; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style1">User-Centric Similarity Search</h1>
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
	<h2> <span class="style3">View Users and Authorize</span>. </h2>
      <div class="mainbar">
	  <table width="913" align="center"  cellpadding="0" cellspacing="0">
            <tr bgcolor="#9999FF">
              <td width="51" height="37" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>ID</strong></div></td>
              <td width="157" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>User Image</strong></div></td>
              <td width="121" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>User Name</strong></div></td>
              <td width="142" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>Email</strong></div></td>
              <td width="135" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>Mobile</strong></div></td>
              <td width="121" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>Location</strong></div></td>
              <td width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style65 style105 style27"><strong>Status</strong></div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString("location");
								s4=rs.getString(10);
								
					%>
            <tr>
              <td height="122" align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style70 style71"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" ><div class="style57 style86 style55 style54 style37 style70 style71" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle"  style="color:#000000;"align="center"><div align="center" class="style20 style30 style37 style86 style70 style71">
                  <div align="center"><a href="Authentication.jsp?value=<%="userstatus"%>&amp;id=<%=i%>" class="style3">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72">
                  <%out.println(s4);%>
              </div></td>
              <%
						}
						
						%>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
        </table>
	  <div align="right">
            <p>&nbsp;</p>
            <p align="right"><a href="A_Main.jsp" class="style53 style54 style56 style66">Back</a></p>
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
