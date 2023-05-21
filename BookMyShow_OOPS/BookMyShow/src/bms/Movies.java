package bms;

public class Movies {
	 private String name;
	 private double rating;
	 String releaseDate;
	 private String lang;
	 String MovieId;

	 void setName(String name) {
		 this.name = name;
		
		 }
	  void setRating(double rating)
	 {
		 this.rating = rating;
	 }
	  void setreleaseDate(String releaseDate)
	 {
		 this.releaseDate= releaseDate;
	 }
	  void setlang(String lang)
	 {
		 this.lang=lang;
	 }
	  void setMovieId(String MovieId)
	  {
		  this.MovieId=MovieId;
	  }
	  void getMoviesDetails()
	 {  System.out.println();
		System.out.println("Name : "+name);
		System.out.println("Rating : "+rating);
		System.out.println("Release Date : "+releaseDate);
		System.out.println("Available Language : "+lang);
		System.out.println("Movie ID : "+MovieId);
	 }
	 
}
