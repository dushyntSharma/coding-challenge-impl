package com.mindtree.dao;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import com.mindtree.model.Player;

public interface PlayerDao {

	void registerPlayer(List<Player> playerList) throws NoSuchAlgorithmException;

}
