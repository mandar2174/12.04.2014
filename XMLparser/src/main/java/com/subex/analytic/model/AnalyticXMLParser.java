package com.subex.analytic.model;

import java.io.File;

import org.codehaus.jackson.map.ObjectMapper;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

public class AnalyticXMLParser {

	public static void main(String[] args) {

		Serializer serializer = new Persister();
		File source = new File(args[0]);

		try {
			AnalysisModel example = serializer
					.read(AnalysisModel.class, source);

			ObjectMapper objectMapper = new ObjectMapper();

			/*
			 * objectMapper.writeValue(new File("resources/json/analysis.json"),
			 * example);
			 */System.out.println("Converted the json format");

			System.out.println(example);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
