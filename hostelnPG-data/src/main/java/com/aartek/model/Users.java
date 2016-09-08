package com.aartek.model;

import java.util.Collection;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author Dinesh Rajput
 *
 */
@XmlRootElement(name="users")
@XmlAccessorType(XmlAccessType.NONE)
public class Users {
 @XmlElement(name="users")
 private Collection<UserRegistration> userregistration;

 public Collection<UserRegistration> getusers() {
  return userregistration;
 }

 public void users(Collection<UserRegistration> userregistration) {
  this.userregistration = userregistration;
 }
}