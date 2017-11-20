package cz.muni.fi.pa165.monsterslayers.service;

import cz.muni.fi.pa165.monsterslayers.dao.HeroRepository;
import cz.muni.fi.pa165.monsterslayers.dao.UserRepository;
import cz.muni.fi.pa165.monsterslayers.entities.Hero;
import cz.muni.fi.pa165.monsterslayers.entities.MonsterType;
import cz.muni.fi.pa165.monsterslayers.entities.enums.PowerElement;
import java.util.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Implementation of hero service interface
 * 
 * @author Tomáš Richter
 */
@Service
public class HeroServiceImpl implements HeroService {
    
    @Autowired
    private HeroRepository heroRepository;
    
    @Override
    public Hero findHeroById(Long id) {
        return heroRepository.findOne(id);
    }

    @Override
    public Collection<Hero> getAllHeroes() {
        return (Collection<Hero>) heroRepository.findAll();
    }

    @Override
    public void removeHero(Hero hero) {
        heroRepository.delete(hero);
    }
    
    @Override
    public void saveHero(Hero hero) {
        heroRepository.save(hero);
    }

    @Override
    public Hero findHeroByName(String heroName) {
        return heroRepository.findByHeroName(heroName);
    }

    @Override
    public PowerElementsMatch countHeroSuitabilityAgainstMonsterType(Hero hero, MonsterType monsterType) {
        int usefulElements = 0;
        for (PowerElement monsterWeakness : monsterType.getWeaknesses()) {
            if (hero.hasElement(monsterWeakness)) {
                usefulElements++;
            }
        }
        
        //elements which can be used by hero, but monster type is not weak against them
        int uselessElements = hero.getElements().size() - usefulElements;
        
        //count of useless elements is not bigger than total count of monster weaknesses
        //therefore, useful elements plays primary role everytime
        return new PowerElementsMatch(usefulElements, uselessElements);
    }
}