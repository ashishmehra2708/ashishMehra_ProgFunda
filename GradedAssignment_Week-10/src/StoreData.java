
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class StoreData {
	public static void main(String[] args) {
		Employee emp1=new Employee("Aayush","aayush123@gmail.com","9876541230");
		Employee emp2=new Employee("Ankita","ankita234@gmail.com","9874563210");
		Employee emp3=new Employee("Ashish","ashish345@gmill.com","7896541230");
		Employee emp4=new Employee("Aakash","aakash456@gmail.com","7894563210");
		Employee emp5=new Employee("Akshat","akshat567@gmail.com","8974562310");
		
		Session session=null;
		SessionFactory sessionFactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		System.out.println("Factory object Created... Before Opening Session");
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		System.out.println("Inserting Record");
		session.persist(emp1);
		session.persist(emp2);
		session.persist(emp3);
		session.persist(emp4);
		session.persist(emp5);
		transaction.commit();
		System.out.println("Success-- Data persisted in tables..!");

		session.close();
		sessionFactory.close();
	}
}
