package com.adlist.model.dao;

import java.util.List;

import org.bson.Document;

import com.adlist.model.Post;
import com.adlist.model.db.ConnectionManager;
import com.mongodb.BasicDBList;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class PostDaoImpl implements PostDao {

	private MongoClient mongoClient;
	
	@Override
	public void create(Post post) {
		mongoClient = ConnectionManager.getMongo();
		MongoDatabase database = ConnectionManager.getDb("adlist");
		MongoCollection<Document> collection = database.getCollection("posts");
		List<Object> replies = new BasicDBList();
		Document dbUser = new Document()
							.append("title", post.getTitle())
							.append("area", post.getArea())
							.append("postalCode", post.getPostalCode())
							.append("category", post.getArea())
							.append("description", post.getDescription())
							.append("email", post.getEmail())
							.append("phone", post.getPhone())
							.append("postedDate", post.getPostedDate())
							.append("emailMe", post.isEmailMe())
							.append("callMe", post.isCallMe())
							.append("textMe", post.isTextMe())
							.append("replies", replies);
		System.out.println(dbUser);
		collection.insertOne(dbUser);
		
	}

}
