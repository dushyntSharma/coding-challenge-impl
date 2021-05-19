
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mindtree.model.Player"%>
<%@page import="com.mindtree.utility.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
String team = request.getParameter("val");
if (team == null || team.trim().equals("")) {
	out.print("<p>Please enter team name!</p>");
} else {
	try {
		Connection con = DBConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from player where team like '" + team + "%'");
		ResultSet rs = ps.executeQuery();
		List<Player> p2 = new ArrayList<Player>();

		if (!rs.isBeforeFirst()) {
	out.println("<p>No Record Found!</p>");
		} else {
	out.print("<table border='1' cellpadding='2' width='100%'>");
	out.print("<tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Team</th></tr>");
	while (rs.next()) {

		int id = rs.getInt("id");
		String name = rs.getString("name");
		short age = (short) Integer.parseInt(rs.getString("age"));
		String gender = rs.getString("gender");
		String team1 = rs.getString("team");

		Player p1 = new Player(id, name, age, gender, team1);
		p2.add(p1);
		Collections.sort(p2, new Comparator<Player>() {

			@Override
			public int compare(Player o1, Player o2) {
				return o1.getName().compareTo(o2.getName());
			}

		});

		out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3)
				+ "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td></tr>");
	}
	out.print("</table>");
		} //end of else for rs.isBeforeFirst  
		con.close();
	} catch (Exception e) {
		out.print(e);
	}
} //end of else
%>
