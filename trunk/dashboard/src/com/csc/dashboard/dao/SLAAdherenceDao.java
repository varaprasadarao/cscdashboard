package com.csc.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import com.csc.dashboard.domain.SLAAdherence;

public interface SLAAdherenceDao {

	public List<SLAAdherence> getSLAAdherence(int account, int month, int year) throws SQLException;
	
}
