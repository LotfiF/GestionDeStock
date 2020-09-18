package com.stock.mvc.controllers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stock.mvc.entities.Article;
import com.stock.mvc.entities.Client;
import com.stock.mvc.entities.CommandeClient;
import com.stock.mvc.entities.LigneCommandeClient;
import com.stock.mvc.model.ModelCommandeClient;
import com.stock.mvc.services.IArticleService;
import com.stock.mvc.services.IClientService;
import com.stock.mvc.services.ICommandeClientService;
import com.stock.mvc.services.ILigneCommandeClientService;


@Controller
@RequestMapping(value = "/commandeClient")
public class CommandeClientController {
	
	@Autowired
	private ICommandeClientService commandeService;
	
	@Autowired
	private ILigneCommandeClientService ligneCdeService;
	
	@Autowired
	private IClientService clientService;
	
	@Autowired
	private IArticleService articleService;
	
	@Autowired
	private ModelCommandeClient modelCommande;	
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		
		List<CommandeClient> commandesClient = commandeService.selectAll();
		
		if (commandesClient.isEmpty()) {
			commandesClient = new ArrayList<CommandeClient>(); 
		} else {
			for (CommandeClient commandeClient: commandesClient){
				
				List<LigneCommandeClient> ligneCdeClt = ligneCdeService.getByIdCommande(commandeClient.getIdCommandeClient());
				commandeClient.setLigneCommandeClients(ligneCdeClt);
			}
				
		}
		
		model.addAttribute("commandesClient", commandesClient);
		return "commandeClient/commandeClient";		
	}
	
	
	@RequestMapping(value = "/nouveau")
	public String nouvelleCommande(Model model) {
		List<Client> clients = clientService.selectAll();
		if (clients.isEmpty()) {
			clients = new ArrayList<Client>();
		}
		modelCommande.creerCommande();
		model.addAttribute("code", modelCommande.getCommande().getCode());
		model.addAttribute("dateCde", modelCommande.getCommande().getDateCommande());
		model.addAttribute("clients", clients);
		return "commandeClient/nouvelleCommande";
			
	}
	
	@RequestMapping(value = "/creerCommande")
	@ResponseBody
	public String creerCommande(final Long idClient) {
		if(idClient == null) {
			return null;
		}
		Client client = clientService.getById(idClient);
		modelCommande.modifierCommande(client);
		if (client == null){
			return null;
		}
		return "Ok";
	}
	
	@RequestMapping(value = "/ajouterLigne")
	@ResponseBody
	public LigneCommandeClient getArticleByCode(final Long codeArticle) {
		if (codeArticle == null) {
			return null;
		}
		Article article = articleService.findOne("codeArticle", ""+codeArticle);
		if (article == null) {
			return null;
		}
		return modelCommande.ajouterLigneCommande(article);
		
	}	
	
	@RequestMapping(value = "/supprimerLigne")
	@ResponseBody
	public LigneCommandeClient supprimerLigneCommande(final Long idArticle) {
		if(idArticle == null) {
			return null;
		}
		Article article = articleService.getById(idArticle);
		if (article == null) {
			return null;
		}
		return modelCommande.supprimerLigneCommande(article);
	}
	
	@RequestMapping(value = "/enregistrerCommande")
	public String enregistrerCommande(HttpServletRequest request) {
		CommandeClient nouvelleCommande = null;
		if (modelCommande.getCommande() != null) {
			nouvelleCommande = commandeService.save(modelCommande.getCommande());
		}
		if(nouvelleCommande != null) {
			Collection<LigneCommandeClient> ligneCommandes = modelCommande.getLignesCommandeClient(nouvelleCommande);
			if(ligneCommandes !=null && !ligneCommandes.isEmpty()) {
			for (LigneCommandeClient ligneCommandeClient : ligneCommandes) {
				ligneCdeService.save(ligneCommandeClient);
			}
			modelCommande.init();
		  }
		}
		return "redirect:/commandeClient/";		
		
	}	
}
