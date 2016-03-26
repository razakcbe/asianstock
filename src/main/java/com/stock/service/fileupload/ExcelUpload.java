package com.stock.service.fileupload;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class ExcelUpload {

	public void excelFileUpload(){

		String fileName = "SOFTWARE CODE.xlsx";
		
		Workbook workbook = null;
		try {
			FileInputStream fis = new FileInputStream(fileName);
			workbook = new HSSFWorkbook(fis);
			Sheet sheet = workbook.getSheetAt(0);
			Iterator<Row> rowIterator = sheet.iterator();
			while (rowIterator.hasNext()) 
			{
				Row row = rowIterator.next();
				Iterator<Cell> cellIterator = row.cellIterator();
				while (cellIterator.hasNext()) 
				{
					Cell cell = cellIterator.next();
					switch(cell.getCellType()){
					case Cell.CELL_TYPE_STRING:
						System.out.println(cell.getStringCellValue().trim());
						break;
					case Cell.CELL_TYPE_NUMERIC:
						System.out.println(cell.getNumericCellValue());
						break;
					default:
						break;
					}
				}
			}
			 fis.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}
}
