package com.subex.analytic.model;

import java.util.List;

import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class AnalysisPacksModel {

	@ElementList(inline = true, entry = "AnalysisPack")
	private List<AnalysisPackModel> analysisPackId;

	public List<AnalysisPackModel> getAnalysisPackId() {
		return analysisPackId;
	}

	public void setAnalysisPackId(List<AnalysisPackModel> analysisPackId) {
		this.analysisPackId = analysisPackId;
	}

	@Override
	public String toString() {
		return "AnalysisPacksModel [analysisPackId=" + analysisPackId + "]";
	}

}
