package com.subex.analytic.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.Root;

@Root
public class EntityModel {
	@Attribute(required = false)
	private String id;

	@Attribute(required = false)
	private String type;

	@ElementMap(entry = "Properties", key = "key", attribute = true, inline = true)
	private Map<String, String> propertyMap;

	@ElementList(entry = "Metric", inline = true)
	private List<MetricModel> metricList = new ArrayList<MetricModel>();

	@ElementList(entry = "Dimension", inline = true)
	private List<DimensionModel> dimesionList = new ArrayList<DimensionModel>();

	@Override
	public String toString() {
		return "EntityModel [id=" + id + ", type=" + type + ", propertyMap="
				+ propertyMap + ", metricList=" + metricList
				+ ", dimesionList=" + dimesionList + "]";
	}

}
