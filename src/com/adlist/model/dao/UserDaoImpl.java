package com.adlist.model.dao;

import org.bson.Document;

import com.adlist.model.User;
import com.adlist.model.db.ConnectionManager;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class UserDaoImpl implements UserDao {

	private MongoClient mongoClient;

	@Override
	public void create(User user) {

		mongoClient = ConnectionManager.getMongo();
		MongoDatabase database = ConnectionManager.getDb("adlist");
		MongoCollection<Document> collection = database.getCollection("users");
		Document dbUser = new Document().append("email", user.getEmail()).append("firstName", user.getFirstName())
				.append("lastName", user.getLastName()).append("password", user.getPassword())
				.append("registerDate", user.getRegisterDate());
		collection.insertOne(dbUser);
	}

	@Override
	public User findByEmail(String email) {
		mongoClient = ConnectionManager.getMongo();
		MongoDatabase database = ConnectionManager.getDb("adlist");
		MongoCollection<Document> collection = database.getCollection("users");
		MongoCursor<Document> cursor = collection.find(Filters.eq("email", email)).iterator();
		User user = null;
		if (cursor.hasNext()) {
			Document doc = cursor.next();
			user = new User(doc.getString("email"), doc.getString("firstName"), doc.getString("lastName"),
					doc.getString("password"), doc.getDate("registerDate"));
		}
		return user;
	}

}
