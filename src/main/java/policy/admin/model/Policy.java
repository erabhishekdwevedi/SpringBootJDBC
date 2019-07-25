package policy.admin.model;

public class Policy {
	
	private String policyNumber;
	private  String insuredPerson;
	
	public String getPolicyNumber() {
		return policyNumber;
	}
	public void setPolicyNumber(String policyNumber) {
		this.policyNumber = policyNumber;
	}
	public String getInsuredPerson() {
		return insuredPerson;
	}
	public void setInsuredPerson(String insuredPerson) {
		this.insuredPerson = insuredPerson;
	}
	
	@Override
	public String toString() {
		return "Policy [policyNumber=" + policyNumber + ", insuredPerson=" + insuredPerson + "]";
	}
	

}
