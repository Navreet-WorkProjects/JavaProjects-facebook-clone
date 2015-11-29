package com.socialcommunity.dao;

import org.hibernate.Session;

import com.socialcommunity.dao.HibernateUtil;
import com.socialcommunity.domain.Person;

public class App 
{
    public static void main( String[] args )
    {
        System.out.println("Maven + Hibernate + MySQL");
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        session.beginTransaction();
        Person person = new Person();
        
        person.setUsername("a");        
        //session.save(stock);
       
        person.setId(1);
        System.out.println("hi");
        
        session.save(person);
        //session.delete(stock);
        
        session.getTransaction().commit();
        System.out.println("hi");
        
        
        
    }
}
