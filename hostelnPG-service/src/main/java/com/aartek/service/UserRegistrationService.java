package com.aartek.service;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 import com.aartek.model.*;
/**
 * Service for processing UserRegistrations
 * 
 * @author Krams at {@link http://krams915@blogspot.com
 */
@Service("UserRegistrationService")
@Transactional
public class UserRegistrationService {
 
 
  
 @Resource(name="sessionFactory")
 private SessionFactory sessionFactory;
  
 /**
  * Retrieves all UserRegistrations
  * 
  * @return a list of UserRegistrations
  */
 public List<UserRegistration> getAll() {
 
   
  // Retrieve session from Hibernate
  Session session = sessionFactory.getCurrentSession();
 
  // Create a Hibernate query (HQL)
  Query query = session.createQuery("FROM UserRegistration");
   
  // Retrieve all
  return  query.list();
 }
  
 /**
  * Retrieves a single UserRegistration
  */
 public UserRegistration get( Integer id ) {
  // Retrieve session from Hibernate
  Session session = sessionFactory.getCurrentSession();
   
  // Retrieve existing UserRegistration
  // Create a Hibernate query (HQL)
  Query query = session.createQuery("FROM UserRegistration as p LEFT JOIN FETCH  p.UserDetails WHERE p.id="+id);
   
  return (UserRegistration) query.uniqueResult();
 }
  
 /**
  * Adds a new UserRegistration
  */
 public void add(UserRegistration UserRegistration) {
  
   
  // Retrieve session from Hibernate
  Session session = sessionFactory.getCurrentSession();
   
  // Persists to db
  session.save(UserRegistration);
 }
  
 /**
  * Deletes an existing UserRegistration
  * @param id the id of the existing UserRegistration
  */
 public void delete(Integer id) {
  
   
  // Retrieve session from Hibernate
  Session session = sessionFactory.getCurrentSession();
   
  // Create a Hibernate query (HQL)
  Query query = session.createQuery("FROM UserRegistration as p LEFT JOIN FETCH  p.UserDetails WHERE p.id="+id);
  
  // Retrieve record
  UserRegistration UserRegistration = (UserRegistration) query.uniqueResult();
   
  List<UserDetails> UserDetails =UserRegistration.getUserDetails();
   
  // Delete UserRegistration
  session.delete(UserRegistration);
   
  // Delete associated credit cards
  for (UserDetails UserDetailss: UserDetails) {
   session.delete(UserDetailss);
  }
 }
  
 /**
  * Edits an existing UserRegistration
  */
 public void edit(UserRegistration UserRegistration) {
 
   
  // Retrieve session from Hibernate
  Session session = sessionFactory.getCurrentSession();
   
  // Retrieve existing UserRegistration via id
  UserRegistration existingUserRegistration = (UserRegistration) session.get(UserRegistration.class, UserRegistration.getId());
   
  // Assign updated values to this UserRegistration
  existingUserRegistration.setFirstName(UserRegistration.getFirstName());
  existingUserRegistration.setLastName(UserRegistration.getLastName());
  existingUserRegistration.setMobile(UserRegistration.getMobile());
 
  // Save updates
  session.save(existingUserRegistration);
 }
}