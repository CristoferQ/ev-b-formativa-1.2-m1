package com.everis.form12.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class FomularioController {
	

	@RequestMapping("/")
	public String alumnos() {
		return "index.jsp";
	}
	
	@RequestMapping("/formulario")
	public String alumnos(@RequestParam(value="nombre", required = true)String nombreBack,
			@RequestParam(value="apellido", required = true)String apellidoBack,
			@RequestParam(value="limite", required = true)String limiteBack,
			@RequestParam(value="codigoPostal", required = true)String codigoPostalBack,
			Model model) {
		
		int validacion = 0;
		
		if (nombreBack == null || nombreBack == ""){
			model.addAttribute("error", "El nombre esta vacio");
     		return "index.jsp";
      	}else {
      		validacion++;
      	}
 		if (apellidoBack == null || apellidoBack == ""){
 			model.addAttribute("error", "El apellido esta vacio");
 		}else {
 			validacion++;
 		}
 		if (limiteBack == null || limiteBack == ""){
 			model.addAttribute("error", "El limite esta vacio");
 			return "index.jsp";
 		}else {
 			validacion++;
 		}
 		if (codigoPostalBack == null  || codigoPostalBack == ""){
 			model.addAttribute("error", "El codigo postal esta vacio");
 			return "index.jsp";
 		}else {
 			validacion++;
 		}
 		
 		
 		
		if (nombreBack.length() > 0 && nombreBack.length() < 11){
			validacion++;
     	}else {
     		model.addAttribute("error", "El largo del nombre no es valido");
     		return "index.jsp";
     	}
        
     	if (apellidoBack.length() > 0 && apellidoBack.length() < 11){
         	validacion++;
     	}else {
     		model.addAttribute("error", "El largo del apellido no es valido");
     		return "index.jsp";
     	}
     	
     	
     	
 		
 		
		if (Integer.parseInt(limiteBack) > -1) {
			validacion++;
		}else {
			model.addAttribute("error", "El limite es negativo");
			return "index.jsp";
		}
		
		if (limiteBack.length() < 6) {
			validacion++;
		}else {
			model.addAttribute("error", "El largo del limite no es valido");
			return "index.jsp";
		}
		
		if (codigoPostalBack.length() == 8) {
			validacion++;
		}else {
			model.addAttribute("error", "El largo del codigo postal no es valido");
			return "index.jsp";
		}
		
		if(validacion == 9) {
			model.addAttribute("nombreBack", nombreBack);
			model.addAttribute("apellidoBack", apellidoBack);
			model.addAttribute("limiteBack", limiteBack);
			model.addAttribute("codigoPostalBack", codigoPostalBack);
			return "datos.jsp";
		}else {
			return "index.jsp";
		}
		
	}
}
