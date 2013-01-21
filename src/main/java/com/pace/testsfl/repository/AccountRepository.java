package com.pace.testsfl.repository;

import com.pace.testsfl.domain.Account;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Account.class)
public interface AccountRepository {

    List<com.pace.testsfl.domain.Account> findAll();
}
