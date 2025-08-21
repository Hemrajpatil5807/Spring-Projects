package com.nt.entity;

public class Branch {

	private int branchId;
	private String branchName;
	private String branchAddress;
	private String IFSCNo;
	
	public Branch() {	}

	public Branch(int branchId, String branchName, String branchAddress, String iFSCNo) {
		this.branchId = branchId;
		this.branchName = branchName;
		this.branchAddress = branchAddress;
		IFSCNo = iFSCNo;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchAddress() {
		return branchAddress;
	}

	public void setBranchAddress(String branchAddress) {
		this.branchAddress = branchAddress;
	}

	public String getIFSCNo() {
		return IFSCNo;
	}

	public void setIFSCNo(String iFSCNo) {
		IFSCNo = iFSCNo;
	}

	@Override
	public String toString() {
		return "Branch [branchId=" + branchId + ", branchName=" + branchName + ", branchAddress=" + branchAddress
				+ ", IFSCNo=" + IFSCNo + "]";
	}
	
	
	
	
	
}
