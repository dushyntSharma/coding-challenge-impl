package com.mindtree.controller;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mindtree.model.Player;
import com.mindtree.utility.DBConnection;

/**
 * Servlet implementation class PlayerDetails
 */
public class PlayerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlayerDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		Connection con = DBConnection.getConnection();
		String sql = "select * from player";
		List<Player> p2 = new ArrayList<Player>();

		PreparedStatement st = null;
		ResultSet res = null;
		FileWriter writer = null;
		PrintWriter out1 = null;

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		try {
			st = con.prepareStatement(sql);
			res = st.executeQuery();

			while (res.next()) {
				int id = res.getInt("id");
				String name = res.getString("name");
				short age = (short) Integer.parseInt(res.getString("age"));
				String gender = res.getString("gender");
				String team = res.getString("team");

				Player p1 = new Player(id, name, age, gender, team);
				p2.add(p1);
				Collections.sort(p2, new Comparator<Player>() {

					@Override
					public int compare(Player o1, Player o2) {
						return o1.getName().compareTo(o2.getName());
					}

				});

			}
			out1 = response.getWriter();
			Gson gson = new Gson();
			String playerJSON = gson.toJson(p2);
			response.setStatus(200);
			out1.println(playerJSON);
			out1.flush();
			try {
				writer = new FileWriter("D:\\Script Workspace\\WebCodingChallenge\\playerdetails.json");

				writer.write(playerJSON + System.lineSeparator());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
