<%@page import="result.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String rollNo = request.getParameter("rollNo");
String Physics = request.getParameter("Physics");
String Chemistry = request.getParameter("Chemistry");
String Mathematics = request.getParameter("Mathematics");
String Electrical = request.getParameter("Electrical");
String Electronic = request.getParameter("Electronic");
String ChemistryLab = request.getParameter("ChemistryLab");
String PhysicsLab = request.getParameter("PhysicsLab");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into result values('"+rollNo+"', '"+Physics+"', '"+Chemistry+"', '"+Mathematics+"', '"+Electrical+"', '"+Electronic+"', '"+ChemistryLab+"', '"+PhysicsLab+"')");
	response.sendRedirect("Adminresult.jsp");
}catch(Exception e){
	out.println(e);
}
%>
