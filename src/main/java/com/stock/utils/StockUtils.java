package com.stock.utils;

import java.math.BigDecimal;

public class StockUtils {

	public static Double calculateNonVatFromMRP(Double mrp,BigDecimal vatPercentage){
		Double denom = vatPercentage.doubleValue() + 100;
		Double numerator = vatPercentage.doubleValue() / denom.doubleValue() ;
		Double nonVat = (numerator)* mrp;
		return nonVat; 
	}
}
