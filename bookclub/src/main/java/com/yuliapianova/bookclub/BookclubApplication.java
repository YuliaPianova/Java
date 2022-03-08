package com.yuliapianova.bookclub;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@ComponentScan({"com.yuliapianova.bookclub", "controller", "service"})
public class BookclubApplication {

	public static void main(String[] args) {
		SpringApplication.run(BookclubApplication.class, args);
	}

}
