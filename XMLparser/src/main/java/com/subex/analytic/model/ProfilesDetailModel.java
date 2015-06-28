package com.subex.analytic.model;

import java.util.List;

import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class ProfilesDetailModel {

	@ElementList(entry = "Profile", inline = true)
	private List<ProfileModel> profile;

	public List<ProfileModel> getProfile() {
		return profile;
	}

	public void setProfile(List<ProfileModel> profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "ProfilesDetailModel [profile=" + profile + "]";
	}

}
