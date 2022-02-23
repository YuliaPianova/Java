package com.yuliapianova.dojosAndNinjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yuliapianova.dojosAndNinjas.models.Dojo;
import com.yuliapianova.dojosAndNinjas.models.Ninja;
import com.yuliapianova.dojosAndNinjas.repositories.DojoRepository;
import com.yuliapianova.dojosAndNinjas.repositories.NinjaRepository;

@Service
public class AppService {
	
	
	@Autowired
	private NinjaRepository ninjaRepo;
	@Autowired
	private DojoRepository dojoRepo;
	
	public List<Dojo> allDojos(){    //all dojos
		return this.dojoRepo.findAll();
				
	}
	
	public Dojo createDojo(Dojo dojo) { //create a new dojo
		return this.dojoRepo.save(dojo);
				
	}
	
	public Ninja createNinja(Ninja ninja) {   //
		return this.ninjaRepo.save(ninja);
	}
	
	public Dojo getDojoById(Long id) {
		return this.dojoRepo.findById(id).orElse(null); //show one dojo
		
	}

}
