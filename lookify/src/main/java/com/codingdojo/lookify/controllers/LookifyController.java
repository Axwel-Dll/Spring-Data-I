package com.codingdojo.lookify.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.lookify.models.Song;
import com.codingdojo.lookify.services.LookifyService;

import jakarta.validation.Valid;

@Controller
public class LookifyController {
	
	public final LookifyService lookifyService;
	
	public LookifyController(LookifyService lookifyService) {
		this.lookifyService = lookifyService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "/lookify/index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = lookifyService.allSongs();
		model.addAttribute("songs", songs);
		return "/lookify/dashboard.jsp";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam("artist") String artist) {
		return "redirect:/search/"+artist;
	}
	
	@RequestMapping("/search/{artist}")
	public String search(@PathVariable("artist") String artist, Model model) {
		List<Song> songs = lookifyService.getSearchSongs(artist);
		model.addAttribute("artist", artist);
		model.addAttribute("songs", songs);
		return "/lookify/search.jsp";
	}
	
	@RequestMapping("/songs/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Song song = lookifyService.findSong(id);
		model.addAttribute("song", song);
		return "/lookify/song.jsp";
	}
	@RequestMapping("/songs/new")
	public String addNew(@ModelAttribute("add") Song song, Model model) {
		return "/lookify/new.jsp";
	}
	
	@RequestMapping(value = "/songs/new", method = RequestMethod.POST)
	public String create(@Valid @ModelAttribute("add") Song song, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "/lookify/new.jsp";
		} else {
			lookifyService.addSong(song);
			return "redirect:/dashboard";
		}
	}
	
	@RequestMapping("/search/topten")
	public String topten(Model model) {
		List<Song> songs = lookifyService.getTopTen();
		model.addAttribute("songs", songs);
		return "/lookify/topten.jsp";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		lookifyService.deleteById(id);
		return "redirect:/dashboard";
	}
}
