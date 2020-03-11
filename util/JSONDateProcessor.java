package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

public class JSONDateProcessor implements JsonValueProcessor {

	@Override
	public Object processArrayValue(Object arg0, JsonConfig arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object processObjectValue(String property, Object value,
			JsonConfig arg2) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = null;
		if (value instanceof Date) {
			dateString = sdf.format(value);
		}

		return dateString;
	}

}
