
<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="sidemenu.jsp"></jsp:include>

<div class="container-fluid">
		<div class="content">
			<div class="row-fluid no-margin">
				<div class="span12">


<div class="box">
		  <div class="box-head">
			  <h3>Books Download </h3>
			  
			  <p><a href="book_details_form.jsp"><img src="../temp/icon/new.jpg" width="80" height="30"border="0" ></a>  </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
 <table class="table1" align="center">
  <tr>
   <th width="98"><div align="center">Book ID </div></th>
    <th width="98"><div align="center">Book Name </div></th>
    <th width="103"><div align="center">Author</div></th>
    <th width="117"><div align="center">Publishar Name</div></th>
    <th width="105"><div align="center">Upload Date </div></th>
	<th width="105"><div align="center">Books </div></th>
    <th width="97"><div align="center">Sem</div></th>
	<th width="97"><div align="center">Type</div></th>
    <th width="90"><div align="center">Upload Books</div></th>
    <th width="62"><div align="center">Delete</div></th>
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
  <%
  ResultSet rs=s.stmt.executeQuery("select * from book_details where file!='new'");
  while(rs.next())
  {
  int aid=rs.getInt("b_id");
  String book_name=rs.getString("book_name");
  session.setAttribute("book_name",book_name);
  int count=0;
  count++;
  %>
  <tr>
    <td>&nbsp;<%=aid%></td>
    
    <td>&nbsp;<%=book_name%></td>
    <td>&nbsp;<%=rs.getString("author")%></td>
    <td>&nbsp;<%=rs.getString("publisher")%></td>
    <td>&nbsp;<%=rs.getString("upload_date")%></td>
    <td>&nbsp;<a href="count.jsp?b_id=<%=aid%>" target="_blank"><img src="../temp/icon/download.png" height="40" width="40" title="Down Load The Books"></a></td>
	<td>&nbsp;<%=rs.getString("sem")%><%=count%></td>
	<td>&nbsp;<%=rs.getString("type")%></td>
	 <td><div align="center"><a href="upload_book_form.jsp?aid=<%=aid%>" onClick="return confirm('Are u sure want to upload the book..')"><img src="../temp/icon/upload2.png" width="40" height="40"border="0"></a></div></td>
     <td><div align="center"><a href="Attached_delete.jsp?aid=<%=aid%>" onClick="return confirm('Are u sure want to delete..')"><img src="../temp/icon/delete.jpg" width="80" height="30"border="0"></a></div></td>
   
  </tr>
  <%
  }
  %>
</table>
</div>

		  </div>
					</div>

					
				</div>
			</div>
		  <div class="row-fluid">		  </div>
			<div class="row-fluid">		  </div>
			<div class="row-fluid">		  </div>
		</div>	
	</div>

				
				<jsp:include page="footer.jsp"></jsp:include>	

        </div>

