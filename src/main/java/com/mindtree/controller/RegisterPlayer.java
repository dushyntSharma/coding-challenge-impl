package com.mindtree.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mindtree.dao.PlayerDao;
import com.mindtree.dao.PlayerDaoImpl;
import com.mindtree.model.Player;

/**
 * Servlet implementation class RegisterPlayer
 */
public class RegisterPlayer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static PlayerDao dao = new PlayerDaoImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterPlayer() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		short age = (short) Integer.parseInt(req.getParameter("age"));
		String gender = req.getParameter("gender");
		String team = req.getParameter("team");
		Player player = new Player(id, name, age, gender, team);
		List<Player> playerList = new ArrayList<Player>();
		Collections.sort(playerList, new Comparator<Player>() {

			@Override
			public int compare(Player o1, Player o2) {
				return o1.getName().compareTo(o2.getName());
			}

		});
		System.out.println(playerList.toString());

		Collections.sort(playerList);
		for (Player psgr : playerList) {
			System.out.println(psgr.getName() + " " + psgr.getAge() + " " + psgr.getTeamName());

		}
		System.out.println(playerList.toString());
		playerList.add(player);

		try {
			dao.registerPlayer(playerList);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}
		RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		rd.forward(req, res);

	}

}
