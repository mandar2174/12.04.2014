package com.subex.analytic.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root
public class AnalysisPackModel {

	@Element(name = "AnalysisPackID")
	private String analysisPackID;

	public String getAnalysisPackID() {
		return analysisPackID;
	}

	public void setAnalysisPackID(String analysisPackID) {
		this.analysisPackID = analysisPackID;
	}

	@Override
	public String toString() {
		return "AnalysisPackModel [analysisPackID=" + analysisPackID + "]";
	}

}
