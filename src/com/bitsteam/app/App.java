package com.bitsteam.app;

import com.bitsteam.app.model.Person;
import com.bitsteam.app.help.Math;

public class App {
	
	public static void main(String[] args){
		//System.out.println("Hello world, How's it going?");
		Person p = new Person("Nico", 25);
		System.out.println(p.getName() + "-" + p.getAge());
		
		System.out.println("2+2=" + Math.sum(2, 2));
	}
}