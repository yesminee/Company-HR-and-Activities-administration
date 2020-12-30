package entity;

public class Activite {
	
	private int code;


	private int direction;
	private int annee;
	private int theme;
	private String intitule;
	private String indicateur;
	private String SI;//Source d'information
	private int partenaire;
	private String SF;//Source financiere
	private String periode;//Chaine de caractere qu'est compose de t1,t2,t3,t4
	
	public String getPeriode() {
		return periode;
	}

	public void setPeriode(String periode) {
		this.periode = periode;
	}

	private String etat;

	
	public void setCode(int code) {
		this.code = code;
	}
	
	public int getDirection() {
		return direction;
	}

	public void setDirection(int direction) {
		this.direction = direction;
	}

	public int getAnnee() {
		return annee;
	}

	public void setAnnee(int annee) {
		this.annee = annee;
	}

	public int getTheme() {
		return theme;
	}

	public void setTheme(int theme) {
		this.theme = theme;
	}

	public String getIntitule() {
		return intitule;
	}

	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}

	public String getIndicateur() {
		return indicateur;
	}

	public void setIndicateur(String indicateur) {
		this.indicateur = indicateur;
	}

	public String getSI() {
		return SI;
	}

	public void setSI(String sI) {
		SI = sI;
	}


	public int getPartenaire() {
		return partenaire;
	}

	public void setPartenaire(int partenaire) {
		this.partenaire = partenaire;
	}

	public String getSF() {
		return SF;
	}

	public void setSF(String sF) {
		SF = sF;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public int getCode() {
		return code;
	}
	
	

}
