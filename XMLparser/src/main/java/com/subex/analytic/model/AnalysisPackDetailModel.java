package com.subex.analytic.model;

import java.util.Map;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.Root;

@Root
public class AnalysisPackDetailModel {
	@Attribute(required = false)
	private String id;

	@ElementMap(entry = "Properties", key = "key", attribute = true, inline = true)
	private Map<String, String> propertyMap;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Map<String, String> getPropertyMap() {
		return propertyMap;
	}

	public void setPropertyMap(Map<String, String> propertyMap) {
		this.propertyMap = propertyMap;
	}

	@Override
	public String toString() {
		return "AnalysisPackDetailModel [id=" + id + ", propertyMap="
				+ propertyMap + "]";
	}

}
