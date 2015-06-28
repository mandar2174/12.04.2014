package com.subex.analytic.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root
public class AnalysisModel {

	@Element(name = "Profiles")
	private ProfilesDetailModel profiles;

	@Element(name = "AnalysisPackConfiguration")
	private AnalysisPackConfigurationModel analysisPackConfigurationModel;

	@Element(name = "DataSources")
	private DataSourcesModel dataSources;

	public ProfilesDetailModel getProfiles() {
		return profiles;
	}

	public void setProfiles(ProfilesDetailModel profiles) {
		this.profiles = profiles;
	}

	public AnalysisPackConfigurationModel getAnalysisPackConfigurationModel() {
		return analysisPackConfigurationModel;
	}

	public void setAnalysisPackConfigurationModel(
			AnalysisPackConfigurationModel analysisPackConfigurationModel) {
		this.analysisPackConfigurationModel = analysisPackConfigurationModel;
	}

	public DataSourcesModel getDataSources() {
		return dataSources;
	}

	public void setDataSources(DataSourcesModel dataSources) {
		this.dataSources = dataSources;
	}

	@Override
	public String toString() {
		return "AnalysisModel [profiles=" + profiles
				+ ", analysisPackConfigurationModel="
				+ analysisPackConfigurationModel + ", dataSources="
				+ dataSources + "]";
	}

}
