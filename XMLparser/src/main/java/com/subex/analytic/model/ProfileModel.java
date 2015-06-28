package com.subex.analytic.model;

import java.util.ArrayList;
import java.util.List;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class ProfileModel {

	@Attribute(required = false)
	private String id;

	@ElementList(entry = "Entity", inline = true)
	private List<EntityModel> entityList = new ArrayList<EntityModel>();

	@Element(name = "AnalysisPacks")
	private AnalysisPacksModel analysisPacks;

	@Override
	public String toString() {
		return "ProfileModel [id=" + id + ", entityList=" + entityList
				+ ", analysisPacks=" + analysisPacks + "]";
	}

}
