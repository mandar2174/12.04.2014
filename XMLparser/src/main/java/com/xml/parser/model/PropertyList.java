package com.xml.parser.model;

import java.util.List;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class PropertyList {

	@ElementList(name = "list")
	private List<com.xml.parser.model.Entry> listElement;

	@Attribute
	private String name;

	public List<com.xml.parser.model.Entry> getList() {
		return listElement;
	}

	public void setList(List<com.xml.parser.model.Entry> list) {
		this.listElement = list;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "PropertyList [list=" + listElement + ", name=" + name + "]";
	}

}
