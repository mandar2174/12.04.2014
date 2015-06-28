package com.xml.parser.main;

import java.io.File;

import org.codehaus.jackson.map.ObjectMapper;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

import com.xml.parser.model.ConfigurationModel;
import com.xml.parser.model.PropertyList;

public class ReadXmlParser {

	public static void main(String[] args) {

		Serializer serializer = new Persister();
		File source = new File(args[0]);

		try {
			ConfigurationModel example = serializer.read(
					ConfigurationModel.class, source);
			PropertyList propertyList = serializer.read(PropertyList.class,
					new File(args[1]));
			System.out.println(example);
			System.out.println(propertyList);

			ObjectMapper objectMapper = new ObjectMapper();

			// objectMapper.writeValue(new File(args[1]), example);
			objectMapper.writeValue(new File(args[2]), propertyList);
			System.out.println("Converted the json format");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
