<snippet>
  <content>
# Group Project Proposal
## Name of the project:
| Project | Application Name |
| ------- | ----------- |
| Facebook-clone | SocialCommunity |

## Members :

| Name                        | Github Username     |
| --------------------------- | ------------ |
| Apoorva Kumar Channankaiah  | Apoorva25    |
| Arpit Parikh                | arpithparikh |
| Navreet Kaur                | navreetKaur  |
| Rajat Vij                   | rajatvij     |
| Xiaobei Yu                  | xiaobeiYu    |

## Summary of the project:
In this project we are trying to create a social networking website. We have decidede to call our website 'Pengyou'. Our application would have different users and they can use this site by signing up for it. We would also create an admin account who can view all the users, block users, view different users etc.We are also planning to provide the search functionality to users who are connected with each other.We call as connections instead of friend.If both users are connected with each other.The website would have love and like feature if the person want to post or share their photoes.The website would be having the security setting where the person can restrict some non-sharable items.

## Steps to Run the Project
1. git clone https://github.com/GWU-KIM-CSCI/facebook-clone.git
2. Open the project in Eclipse
3. Export jar of SocialCommunityDao project.
4. Build the path by adding SocialCommunityDao Jar in SocialCommunityService Project.
5. Export jar of SocialCommunityService project.
6. Build the path by adding SocialCommunityDao and SocialCommunityService Jar in SocialCommunity Project.
7. Deploy path of the SocialCommunity Project and add the Dao and Serivice libraries to the project.
8. Upload the SocialCommunity database with provided schema.
9. Change the path of connection url in the Hibernate.cfg.xml file.
10. Run or deploy the dynamic project on Web Application Server.Example : Apache Tomcat or Apache Jetty. 
11. Welcome page will be found on "/SocialCommunity/lendingPage".
 
## List of functionalities:
1. Login and register - users can register first and then login with correct credentials.
2. Personal profile - users can view and edit their personal profile.
3. Connect with other users - All users can search the users.(*Connect user functionality need to be imeplement) 
4. Post comments and reply to comments - Users can post comments and reply to comments already posted.(Post feature available.)
5. Admin account - Admin can view all users, block users.

## List of technologies to be used and reason for your selection
1. Reason for choosing Java:
  * All team members are mostly familiar with java.
  * Object Oriented Language.
  * Easy to implement.
  * Number one choice for the full stack developers.
  * Platform independent.
  * It is multithreaded, distributed, secure & robust.
2. Reason for choosing Spring:
  * Easily available resources and an active community around the Framework.
  * Extensibility, the fact that Spring or another framework can be built on top and extend to other mini-frameworks.
  * Provides benefits like Aspect-Oriented Programming(AOP) and Inversion of Control (IoC).
  * Model View Controller(MVC) architecture.
  * Support classes for writing unit tests and integration tests.
3. Hibernate
  * Easy Maintainance.
  * Highly Portable(Changing of database dialect is easy.)
  * Free or Cost Effective.
  * Spring Framework supports integration with Hibernate.
4. JSP(Java Server Pages) Reason:
  * JSP supports both scripting and element-based dynamic content, and allows programmers to develop custom tag libraries to satisfy application-specific needs.
  * JSP pages are precompiled for efficient server processing.
  * JSP pages can be used in combination with servlets that handle the business logic, the model supported by Java servlet template engines.
5. Jquery Reason:
  * All functions are guaranteed to work in all supported (by jQuery) browsers.
  * It adds lots of useful lightweight utilities on top of javascript library.
  * It allows us to break the Dependency Chain.
6. Reason for choosing mySQL:
  * It's easy to use.
  * It's secure.
  * It's inexpensive, scalable and secure.
  * It manages memory well.
  * It runs on many operating systems.
 
