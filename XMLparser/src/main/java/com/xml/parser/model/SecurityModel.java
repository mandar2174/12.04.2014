package com.xml.parser.model;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root
public class SecurityModel {

	@Attribute(required = false)
	private String ssl;

	@Element(name = "keyStore", required = false)
	private String keyStore;

	public String getSsl() {
		return ssl;
	}

	public void setSsl(String ssl) {
		this.ssl = ssl;
	}

	public String getKeyStore() {
		return keyStore;
	}

	public void setKeyStore(String keyStore) {
		this.keyStore = keyStore;
	}

	@Override
	public String toString() {
		return "SecurityModel [ssl=" + ssl + ", keyStore=" + keyStore + "]";
	}

}
