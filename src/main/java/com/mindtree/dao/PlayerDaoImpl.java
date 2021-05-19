package com.mindtree.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.mindtree.exceptions.ConnectionFailedException;
import com.mindtree.model.Player;
import com.mindtree.utility.DBConnection;

public class PlayerDaoImpl implements PlayerDao {

	@Override
	public void registerPlayer(List<Player> playerList) {
		// TODO Auto-generated method stub
		Connection con = DBConnection.getConnection();
		PreparedStatement pt = null;
		String sql = "insert into player(id, name, age, gender, team) values(?,?,?,?,?);";
		Player player = playerList.get(0);

		try {

			pt = con.prepareStatement(sql);
			pt.setInt(1, player.getPlayerId());
			pt.setString(2, player.getName());
			pt.setShort(3, player.getAge());
			pt.setString(4, player.getGender());
			pt.setString(5, player.getTeamName());
			pt.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				ConnectionFailedException.closeResource(pt);
				ConnectionFailedException.closeResource(con);

			} catch (ConnectionFailedException e) {
				e.printStackTrace();

			}

		}
	}
}
