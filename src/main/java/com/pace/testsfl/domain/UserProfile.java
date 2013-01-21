package com.pace.testsfl.domain;

import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooMongoEntity
public class UserProfile {

    @NotNull
    @OneToOne
    private Account account;
}
