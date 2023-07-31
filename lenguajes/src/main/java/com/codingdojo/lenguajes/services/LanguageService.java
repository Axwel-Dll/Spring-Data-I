package com.codingdojo.lenguajes.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lenguajes.models.Language;
import com.codingdojo.lenguajes.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository languageRepository;

	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}

	public List<Language> allLanguages() {
		return languageRepository.findAll();
	}

	public Language createLanguage(Language l) {
		return languageRepository.save(l);
	}

	public void deleteById(Long id) {
		languageRepository.deleteById(id);
	}

	public Language updateLanguage(Language l) {
		return languageRepository.save(l);
	}

	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage = languageRepository.findById(id);
		if (optionalLanguage.isPresent()) {
			return optionalLanguage.get();
		} else {
			return null;
		}
	}
}
