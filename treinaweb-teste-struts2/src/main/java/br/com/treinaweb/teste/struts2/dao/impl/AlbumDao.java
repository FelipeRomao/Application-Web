package br.com.treinaweb.teste.struts2.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.treinaweb.teste.struts2.dao.interfaces.IDaoGenerico;
import br.com.treinaweb.teste.struts2.models.Album;

public class AlbumDao implements IDaoGenerico<Album, Integer> {

	@SuppressWarnings("unchecked")
	@Override
	public List<Album> todos() {
		List<Album> albuns = null;
		/*SessionFactory sf = HibernateSessionFactoryUtils.getSessionFactory();
		Session session = sf.openSession();
		albuns = (List<Album>) session.createQuery("from Album").list();
		session.close();*/
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		albuns = entityManager.createQuery("from Album").getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return albuns;
	}

	@Override
	public Album porId(Integer id) {
		Album album = null;
		/*SessionFactory sf = HibernateSessionFactoryUtils.getSessionFactory();
		Session session = sf.openSession();
		album = session.get(Album.class, id);
		session.close();*/
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		album = entityManager.find(Album.class, id);
		entityManager.close();
		entityManagerFactory.close();
		return album;
	}

	@Override
	public void inserir(Album modelo) {
		/*SessionFactory sf = HibernateSessionFactoryUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction transacao = session.beginTransaction();
		session.save(modelo);
		transacao.commit();
		session.close();*/
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(modelo);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}

	@Override
	public void atualizar(Album modelo) {
		/*SessionFactory sf = HibernateSessionFactoryUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction transacao = session.beginTransaction();
		session.update(modelo);
		transacao.commit();
		session.close();*/
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.merge(modelo);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}

	@Override
	public void deletar(Album modelo) {
		/*SessionFactory sf = HibernateSessionFactoryUtils.getSessionFactory();
		Session session = sf.openSession();
		Transaction transacao = session.beginTransaction();
		session.delete(modelo);
		transacao.commit();
		session.close();*/
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TreinaWebTesteJPA");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		modelo = entityManager.merge(modelo);
		entityManager.remove(modelo);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}

}
