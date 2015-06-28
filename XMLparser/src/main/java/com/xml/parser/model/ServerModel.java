package com.xml.parser.model;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root
public class ServerModel {

	@Attribute(required = false)
	private String port;

	@Element(name="host", required=false)
	private String host;

	@Element(name="security", required=false)
	private SecurityModel security;

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public SecurityModel getSecurity() {
		return security;
	}

	public void setSecurity(SecurityModel security) {
		this.security = security;
	}

	@Override
	public String toString() {
		return "ServerModel [port=" + port + ", host=" + host + ", security="
				+ security + "]";
	}

}
