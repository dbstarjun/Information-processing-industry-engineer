package DTO;

import java.sql.Date;

public class MoneyDTO {

	private int custno;
	private int salenol;
	private int pcost;
	private int amount;
	private int pcode;
	private Date sdate;
	
	public  MoneyDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public MoneyDTO(int custno, int salenol, int pcost, int amount, int pcode, Date sdate) {
		super();
		this.custno = custno;
		this.salenol = salenol;
		this.pcost = pcost;
		this.amount = amount;
		this.pcode = pcode;
		this.sdate = sdate;
	}
	public int getCustno() {
		return custno;
	}
	public void setCustno(int custno) {
		this.custno = custno;
	}
	public int getSalenol() {
		return salenol;
	}
	public void setSalenol(int salenol) {
		this.salenol = salenol;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPcode() {
		return pcode;
	}
	public void setPcode(int pcode) {
		this.pcode = pcode;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
}
