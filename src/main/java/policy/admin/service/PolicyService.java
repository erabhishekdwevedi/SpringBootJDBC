package policy.admin.service;

import java.util.List;

import policy.admin.model.Policy;

public interface PolicyService {

	void insertPolicy(Policy policy);
	List<Policy> getAllPolicies();
}
