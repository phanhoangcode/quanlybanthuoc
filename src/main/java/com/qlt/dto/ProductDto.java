package com.qlt.dto;

public class ProductDto {
	private int productID;
	private String productCd;
	private String productName;
	private String productGrp;
	private int retailPrice;
	private int costPrice;

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

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

	public String getProductGrp() {
		return productGrp;
	}

	public void setProductGrp(String productGrp) {
		this.productGrp = productGrp;
	}

	public int getRetailPrice() {
		return retailPrice;
	}

	public void setRetailPrice(int retailPrice) {
		this.retailPrice = retailPrice;
	}

	public int getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(int costPrice) {
		this.costPrice = costPrice;
	}

	public ProductDto(int productID, String productCd, String productName, String productGrp, int retailPrice,
			int costPrice) {
		super();
		this.productID = productID;
		this.productCd = productCd;
		this.productName = productName;
		this.productGrp = productGrp;
		this.retailPrice = retailPrice;
		this.costPrice = costPrice;
	}

	public ProductDto() {
		super();
	}

	@Override
	public String toString() {
		return "ProductDto [productID=" + productID + ", productCd=" + productCd + ", productName=" + productName
				+ ", productGrp=" + productGrp + ", retailPrice=" + retailPrice + ", costPrice=" + costPrice + "]";
	}

}
