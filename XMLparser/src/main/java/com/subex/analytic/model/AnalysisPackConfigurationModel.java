package com.subex.analytic.model;

import java.util.List;

import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class AnalysisPackConfigurationModel {

	@ElementList(inline = true, entry = "AnalysisPackDetail")
	private List<AnalysisPackDetailModel> analysisPackDetailList;

	public List<AnalysisPackDetailModel> getAnalysisPackDetailList() {
		return analysisPackDetailList;
	}

	public void setAnalysisPackDetailList(
			List<AnalysisPackDetailModel> analysisPackDetailList) {
		this.analysisPackDetailList = analysisPackDetailList;
	}

	@Override
	public String toString() {
		return "AnalysisPackConfigurationModel [analysisPackDetailList="
				+ analysisPackDetailList + "]";
	}

}
