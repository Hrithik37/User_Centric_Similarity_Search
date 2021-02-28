<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Posts...</title>
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
.style2 {font-size: 36; }
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
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
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
	  <h2 class="style2">User <span class="style18 style18"><%=(String)application.getAttribute("uname")%></span> Search History </h2>
	 <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr>
          <td  width="68" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22">SI NO</div></td>
          <td  width="110" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22">Post Name </div></td>
          <td  width="117" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22">Categorie</div></td>
          <td  width="146" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22">Searched Keyword</div></td>
          <td  width="145" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22">Date</div></td>
		   <td  width="145" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style6 style8 style7 style22">Image</div></td>
        </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						
						try 
						{
						    String user = (String)application.getAttribute("uname");
							
							String p_Name="",categorie="",keyword="",date="";
							int i=1;
						    
						   	String query="select * from search_history where user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								p_Name=rs.getString(5);
								categorie=rs.getString(4);
								keyword=rs.getString(3);
								date=rs.getString(6);
							int p_id=rs.getInt(7);
					
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style6 style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <div align="center" class="style23">
                    <%out.println(i);%>
                </div>
                  </div></td>
              <td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(p_Name);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(categorie);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(keyword);%>
                </div></td>
				<td  valign="baseline" height="0"><p class="style23">&nbsp;</p>
                  <div align="center" class="style23">
                    <%out.println(date);%>
                </div></td>
				<td width="229"><div style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="productimage"%>&pname=<%=p_Name%>&id=<%=p_id%>" style="width:50px; height:50px;" />
              </div></td>
				
            </tr>
            <%
					i=i+1;	
						
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
		   <p>&nbsp;</p>
                <div class="style11">
                  <div align="right"><a href="U_Main.jsp">Back</a></div>
               
	  </div>
    </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
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
