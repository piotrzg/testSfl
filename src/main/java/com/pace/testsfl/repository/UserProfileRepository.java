package com.pace.testsfl.repository;

import com.pace.testsfl.domain.UserProfile;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = UserProfile.class)
public interface UserProfileRepository {

    List<com.pace.testsfl.domain.UserProfile> findAll();
}
