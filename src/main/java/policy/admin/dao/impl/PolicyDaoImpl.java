package policy.admin.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import policy.admin.dao.PolicyDao;
import policy.admin.model.Policy;

@Repository
public class PolicyDaoImpl extends JdbcDaoSupport implements PolicyDao {

	@Autowired
	DataSource dataSource;

	@PostConstruct
	private void initialize() {
		setDataSource(dataSource);
	}

	@Override
	public void insertPolicy(Policy policy) {
		String sql = "INSERT INTO policy " + "(policyNumber, insuredPerson) VALUES (?, ?)";
		getJdbcTemplate().update(sql, new Object[] { policy.getPolicyNumber(), policy.getInsuredPerson() });

	}

	@Override
	public List<Policy> getAllPolicies() {
		String sql = "SELECT * FROM policy";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		
		List<Policy> result = new ArrayList<Policy>();
		for(Map<String, Object> row:rows){
			Policy policy = new Policy();
			policy.setPolicyNumber((String)row.get("policyNumber"));
			policy.setInsuredPerson((String)row.get("insuredPerson"));
			result.add(policy);
		}
		
		return result;
	}

}
