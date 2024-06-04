package crollingTest;

import java.io.IOException;

import org.jsoup.select.Elements;

import org.jsoup.Connection;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.Jsoup;

public class test {
	
	public static void main(String[] args) {
		String URL = "https://baltonj.com/product/detail.html?product_no=2592&cate_no=154&display_group=1";
		Connection conn =  Jsoup.connect(URL);
		try {
			Document doc = conn.get();
			Elements element = doc.select("strong#span_product_price_text");
			System.out.println(element.text());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
