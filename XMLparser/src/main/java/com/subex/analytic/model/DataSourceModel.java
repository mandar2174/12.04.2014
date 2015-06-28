package com.subex.analytic.model;

import java.util.List;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class DataSourceModel {

	@Attribute(required = false)
	private String type;

	@ElementList(entry = "DataSourceDetail", inline = true)
	private List<DataSourceDetail> dataSourceDetail;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<DataSourceDetail> getDataSourceDetail() {
		return dataSourceDetail;
	}

	public void setDataSourceDetail(List<DataSourceDetail> dataSourceDetail) {
		this.dataSourceDetail = dataSourceDetail;
	}

	@Override
	public String toString() {
		return "DataSourceModel [type=" + type + ", dataSourceDetail="
				+ dataSourceDetail + "]";
	}

}
