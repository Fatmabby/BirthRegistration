package bean;

public class MaternityBean {
	private int maternity_id, patent_id;
	private String pressure,hb,fhr,fundal_height,contraction,cervix;
	
	public  MaternityBean() {
		
	}
	public int getMaternity_id() {
		return maternity_id;
	}

	public void setMaternity_id(int maternity_id) {
		this.maternity_id = maternity_id;
	}

	public int getPatent_id() {
		return patent_id;
	}

	public void setPatent_id(int patent_id) {
		this.patent_id = patent_id;
	}

	public String getPressure() {
		return pressure;
	}

	public void setPressure(String pressure) {
		this.pressure = pressure;
	}
 
	public String getHb() {
		return hb;
	}

	public void setHb(String hb) {
		this.hb = hb;
	}

	public String getFhr() {
		return fhr;
	}

	public void setFhr(String fhr) {
		this.fhr = fhr;
	}

	public String getFundal_height() {
		return fundal_height;
	}

	public void setFundal_height(String fundal_height) {
		this.fundal_height = fundal_height;
	}

	public String getContraction() {
		return contraction;
	}

	public void setContraction(String contraction) {
		this.contraction = contraction;
	}

	public String getCervix() {
		return cervix;
	}

	public void setCervix(String cervix) {
		this.cervix = cervix;
	}



}
