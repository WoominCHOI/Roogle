package Roogle;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Roogle_Crawling {
	
	Connection conn;
	Document doc;
	Element element;
	Elements elements;
	
	String price;
	String tempNum;
	String[] tempNumAry;
	int num;
	
	public int bigHorn(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int seoul(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("li.price > div > strong");
			price = elements.text()+"원";
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int breeders(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int theZoo(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int balto(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int woosoo(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int vanmori(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("div#shopProductPrice > .productPriceSpan");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		// return mChangeNum(price);
		return 0;
	}
	
	public int newrun(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text()+"원";
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNewrun(price);
	}
	
	public int millim(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			element = doc.selectFirst("dl.item_price strong");
			price = element.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int holic(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	public int thereptile(String URL) {
		
		try {
			conn = Jsoup.connect(URL);
			doc = conn.get();
			elements = doc.select("strong#span_product_price_text");
			price = elements.text();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return mChangeNum(price);
	}
	
	
	// 크롤링 결과가 180,000원 일경우
	public int mChangeNum(String strNum) {
		num = 0;
		if(strNum != null || strNum != "") {
			tempNum = strNum.substring(0, strNum.length()-1);
			tempNumAry = tempNum.split(",");
			tempNum = "";
			for(int i = 0; i < tempNumAry.length; i++) {
				tempNum += tempNumAry[i];
			}
			num = Integer.parseInt(tempNum);
		}
		
		return num;
	}
	
	// 크롤링 결과가 180,000 일경우
	public int mChangeNewrun(String strNum) {
		num = 0;
		if(strNum != null || strNum != "") {
			tempNum = strNum.substring(0, strNum.length()-1);
			num = Integer.parseInt(tempNum);
		}
		
		return num;
	}
}
