package com.compara.luzura;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.compara.luzura.repositories")
public class LuzuraApplication {

	public static void main(String[] args) {
		SpringApplication.run(LuzuraApplication.class, args);
	}

}
