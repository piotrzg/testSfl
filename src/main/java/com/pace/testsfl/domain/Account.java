package com.pace.testsfl.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;

import java.io.Serializable;

@RooJavaBean
@RooToString
@RooMongoEntity
public class Account implements Serializable  {

    @NotNull
    @Size(min = 6, max = 40)
    private String username;

    @NotNull
    @Size(min = 6, max = 40)
    private String password;
}
