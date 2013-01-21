// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pace.testsfl.web;

import com.pace.testsfl.domain.Account;
import com.pace.testsfl.domain.UserProfile;
import com.pace.testsfl.repository.AccountRepository;
import com.pace.testsfl.service.UserProfileService;
import com.pace.testsfl.web.ApplicationConversionServiceFactoryBean;
import java.math.BigInteger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    AccountRepository ApplicationConversionServiceFactoryBean.accountRepository;
    
    @Autowired
    UserProfileService ApplicationConversionServiceFactoryBean.userProfileService;
    
    public Converter<Account, String> ApplicationConversionServiceFactoryBean.getAccountToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.pace.testsfl.domain.Account, java.lang.String>() {
            public String convert(Account account) {
                return new StringBuilder().append(account.getUsername()).append(' ').append(account.getPassword()).toString();
            }
        };
    }
    
    public Converter<BigInteger, Account> ApplicationConversionServiceFactoryBean.getIdToAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.pace.testsfl.domain.Account>() {
            public com.pace.testsfl.domain.Account convert(java.math.BigInteger id) {
                return accountRepository.findOne(id);
            }
        };
    }
    
    public Converter<String, Account> ApplicationConversionServiceFactoryBean.getStringToAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.pace.testsfl.domain.Account>() {
            public com.pace.testsfl.domain.Account convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), Account.class);
            }
        };
    }
    
    public Converter<UserProfile, String> ApplicationConversionServiceFactoryBean.getUserProfileToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.pace.testsfl.domain.UserProfile, java.lang.String>() {
            public String convert(UserProfile userProfile) {
                return new StringBuilder().append(userProfile.getUserName()).toString();
            }
        };
    }
    
    public Converter<BigInteger, UserProfile> ApplicationConversionServiceFactoryBean.getIdToUserProfileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.pace.testsfl.domain.UserProfile>() {
            public com.pace.testsfl.domain.UserProfile convert(java.math.BigInteger id) {
                return userProfileService.findUserProfile(id);
            }
        };
    }
    
    public Converter<String, UserProfile> ApplicationConversionServiceFactoryBean.getStringToUserProfileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.pace.testsfl.domain.UserProfile>() {
            public com.pace.testsfl.domain.UserProfile convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), UserProfile.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAccountToStringConverter());
        registry.addConverter(getIdToAccountConverter());
        registry.addConverter(getStringToAccountConverter());
        registry.addConverter(getUserProfileToStringConverter());
        registry.addConverter(getIdToUserProfileConverter());
        registry.addConverter(getStringToUserProfileConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
