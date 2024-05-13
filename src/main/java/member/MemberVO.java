package member;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private int mb_no;
	private String mb_name, mb_id, mb_pw, phone, email, address, admin, salt, social;
	public int getMb_no() {
		return mb_no;
	}
	public void setMb_no(int mb_no) {
		this.mb_no = mb_no;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pw() {
		return mb_pw;
	}
	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getSocial() {
		return social;
	}
	public void setSocial(String social) {
		this.social = social;
	}
	
}
