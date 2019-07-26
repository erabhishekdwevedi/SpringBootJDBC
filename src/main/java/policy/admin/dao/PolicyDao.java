package policy.admin.dao;

import java.util.List;

import policy.admin.model.Policy;

public interface PolicyDao {
		
	void insertPolicy(Policy policy);
	List<Policy> getAllPolicies();
	Policy getPolicyById(String id);

}
