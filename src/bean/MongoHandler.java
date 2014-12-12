package bean;





import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

public class MongoHandler {
	public List<Disease> getDiseaseFromMongo(String keyword){
		String diseaseDetails=null;
		String diseaseName = null;
		List<Disease> d = new ArrayList<Disease>() ;// =  new Disease[10];
		 try{   
			 // To connect to mongodb server
		     //    MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://vaibhav:tupe@ds041190.mongolab.com:41190/IbmCloud_an69sd86_jpe8s633") );
			 
			 MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://cmpe272:cmpe272@ds063160.mongolab.com:63160/cmpe-272-project") );
		         // Now connect to your databases
		         DB db = mongoClient.getDB( "cmpe-272-project" );
		         if(db!=null){
			 System.out.println("Connect to database successfully");}
		                  
		         DBCollection coll = db.getCollection("cmpe272");
		         
		         if(coll!=null)
		         System.out.println("Collection mycol selected successfully");
		         
		         DBCursor cursor = coll.find();
		         
		       
		         
		       //  d = new Disease();
		         int i = 0;
		         while (cursor.hasNext()) { 
		        	 
		        	 System.out.println("Entered the while loop...");
		        	DBObject temp = cursor.next();
		        	
		        	if(temp==null)
		        		System.out.println("Temp is null");
		        	
		        	diseaseName = (String) temp.get("DiseaseName");
		        
		        	
		        
		        		
		        	if(diseaseName.equalsIgnoreCase(keyword)){
		        		
		        		System.out.println("into the keyword matching if");
		        		System.out.println("Disease Details:"+temp.get("DiseaseDetails"));
		        		
		        		String tmp = temp.get("DiseaseDetails").toString();
		        		String imageUrl = temp.get("AlternateMedicineImage").toString();
		        		String alternateMedicineType = temp.get("AlternateMedicineType").toString();
		        	
		        		
		        	/*	d.get(i) = new Disease();
	        		d[i].setDiseaseDetails(tmp);
	        		d[i].setImageUrl(imageUrl);
	        		d[i].setAlternateMedicineType(alternateMedicineType);
	        		d[i].setDiseaseName(diseaseName);*/
	        		
	        		d.add(new Disease());
	        		d.get(i).setDiseaseDetails(tmp);
	        		d.get(i).setImageUrl(imageUrl);
	        		d.get(i).setAlternateMedicineType(alternateMedicineType);
	        		d.get(i).setDiseaseName(diseaseName);
	        		
   		           System.out.println("i:"+i+" diseaseName: "+diseaseName); 
   		           i++;

		        	}
		        	else
		        		System.out.println("Keyword not found");
		        	}
		        	
		        	
		        	
		         
		      }catch(Exception e){
			     System.err.println( e.getClass().getName() + ": " + e.getMessage() );
			  }
		
		
		return d;
	}

	public Disease getDiseaseFromMongo(String diseaseNameParam,String alternateMedicineTypeParam){
		String alternateMedicineType;
		String diseaseName;
		Disease d = new Disease() ;// =  new Disease[10];
		 try{   
			
			 MongoClient mongoClient = new MongoClient(new MongoClientURI("mongodb://cmpe272:cmpe272@ds063160.mongolab.com:63160/cmpe-272-project") );
		         // Now connect to your databases
		         DB db = mongoClient.getDB( "cmpe-272-project" );
		         if(db!=null){
			 System.out.println("Connect to database successfully");}
		                  
		         DBCollection coll = db.getCollection("cmpe272");
		         
		         if(coll!=null)
		         System.out.println("Collection mycol selected successfully");
		         
		         DBCursor cursor = coll.find();
		         
		       
		         
		       
		         int i = 0;
		         while (cursor.hasNext()) { 
		        	 
		        	 System.out.println("Entered the while loop...");
		        	DBObject temp = cursor.next();
		        	
		        	if(temp==null)
		        		System.out.println("Temp is null");
		        	
		        	diseaseName = (String) temp.get("DiseaseName");
		            alternateMedicineType = (String) temp.get("AlternateMedicineType");
		        	
		           
		        		
		        	if(diseaseName.equalsIgnoreCase(diseaseNameParam)&& alternateMedicineType.equalsIgnoreCase(alternateMedicineTypeParam) ){
		        		
		        		System.out.println("into the keyword matching if");
		        		System.out.println("Disease Name:"+temp.get("DiseaseName"));
		        		System.out.println("Alt Med:"+temp.get("AlternateMedicineType"));
		        		String diseaseDetails = temp.get("DiseaseDetails").toString();
		        		
		        		String imageUrl= temp.get("AlternateMedicineImage").toString();
		        		System.out.println("alt string");
		        		String symptoms = temp.get("Symptoms").toString();
		        		System.out.println("sym string");
		        	    String alternateMedicineDetails = temp.get("AlternateMedicineDetails").toString();
		        	    System.out.println("alt med details string");
		        	    String alternateMedicineVideo = temp.get("AlternateMedicineVideo").toString();
		        	    System.out.println("alt med video string");
		        	    String  alternateMedicineName = (String) temp.get("AlternateMedicineName");
	        	
		        	//    System.out.println("imageurl"+diseaseDetails+imageUrl+symptoms+alternateMedicineDetails+alternateMedicineVideo);
		        	  //  d = new Disease();
	        		
	        		System.out.println("d value in if "+d);
	        		
	        		d.setDiseaseDetails(diseaseDetails);
	        		d.setImageUrl(imageUrl);
	        		d.setAlternateMedicineName(alternateMedicineName);
	        		d.setDiseaseName(diseaseName);
	        		d.setSymptoms(symptoms);
	        		d.setAlternateMedicineType(alternateMedicineType);
	        		d.setAlternateMedicineDetails(alternateMedicineDetails);
	        		d.setAlternateMedicineVideo(alternateMedicineVideo);
	        		
	        		
	        		
	        		
   		          return d;

		        	}
		        	else
		        		System.out.println("Keyword not found");
		        	}
		        	
		        	
		        	
		         
		      }catch(Exception e){
			     System.err.println( e.getClass().getName() + ": " + e.getMessage() );
			  }
		
		
		return d;
	}
	
	
	
}
