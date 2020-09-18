package com.stock.mvc.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import com.stock.mvc.dao.impl.FlickrDaoImpl;

public class Test {

	public static void main(String[] args) {
      FlickrDaoImpl flickr = new FlickrDaoImpl();
     /* flickr.auth();*/
       
      try {
    	  InputStream stream= new FileInputStream(new File("C:\\fichiers\\images\\Avantages.PNG"));
    	  String url = flickr.savePhoto(stream, "myImage");
    	  System.out.println(url);
      }  catch (Exception e){
    	  e.printStackTrace();      
      }    	  
	}
}
