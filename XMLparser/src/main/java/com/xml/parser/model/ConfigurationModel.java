package com.xml.parser.model;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root
public class ConfigurationModel {

	@Attribute(required = false)
	private String id;

	@Element(name = "server", required = false)
	private ServerModel server;

	public String getConfigurationId() {
		return id;
	}

	public void setConfigurationId(String configurationId) {
		this.id = configurationId;
	}

	public ServerModel getServer() {
		return server;
	}

	public void setServer(ServerModel server) {
		this.server = server;
	}

	@Override
	public String toString() {
		return "ConfigurationModel [configurationId=" + id
				+ ", server=" + server + "]";
	}

}
