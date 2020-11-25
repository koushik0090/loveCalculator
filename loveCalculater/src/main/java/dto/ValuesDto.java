package dto;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class ValuesDto {
	@NotBlank(message = "name should not be blank")
	@Size(min=3,max=15, message="should be between 3-15 letters")
	private String name;
	@NotBlank(message = "crush name should not be blank")
	@Size(min=3,max=15, message="should be between 3-15 letters")
	private String crush;
	@AssertTrue(message="u have agree to use this app")
	private Boolean termsAndConditions;
	private CommunicationDto com;
	public CommunicationDto getCom() {
		return com;
	}
	public void setCom(CommunicationDto com) {
		this.com = com;
	}
	public Boolean getTermsAndConditions() {
		return termsAndConditions;
	}
	public void setTermsAndConditions(Boolean termsAndConditions) {
		this.termsAndConditions = termsAndConditions;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCrush() {
		return crush;
	}
	public void setCrush(String crush) {
		this.crush = crush;
	}
	

}
