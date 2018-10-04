package com.qlt.dto;

public class GetInfoPrd {
	private String productCd;
	private String productName;
	private int costPrice;
	private int retailPrice;

	public String getProductCd() {
		return productCd;
	}

	public void setProductCd(String productCd) {
		this.productCd = productCd;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getRetailPrice() {
		return retailPrice;
	}

	public void setRetailPrice(int retailPrice) {
		this.retailPrice = retailPrice;
	}

	public GetInfoPrd() {
		super();
	}

	public int getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(int costPrice) {
		this.costPrice = costPrice;
	}

	public GetInfoPrd(String productCd, String productName, int costPrice, int retailPrice) {
		super();
		this.productCd = productCd;
		this.productName = productName;
		this.costPrice = costPrice;
		this.retailPrice = retailPrice;
	}

	@Override
	public String toString() {
		return "GetInfoPrd [productCd=" + productCd + ", productName=" + productName + ", costPrice=" + costPrice
				+ ", retailPrice=" + retailPrice + "]";
	}

}
