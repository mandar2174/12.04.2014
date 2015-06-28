package com.subex.analytic.model;

import java.util.List;

import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class DataSourcesModel {

	@ElementList(entry = "DataSource", inline = true)
	private List<DataSourceModel> dataSourceList;

	public List<DataSourceModel> getDataSourceList() {
		return dataSourceList;
	}

	public void setDataSourceList(List<DataSourceModel> dataSourceList) {
		this.dataSourceList = dataSourceList;
	}

	@Override
	public String toString() {
		return "DataSourcesModel [dataSourceList=" + dataSourceList + "]";
	}

}
