package FileHandling;
import java.io.*;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Arrays;

public class ReadFiles {

static HashMap<String, ArrayList<Double>> mp;

ReadFiles(){
	mp=new HashMap<>();
	mp.put("DEL", new ArrayList<Double>(Arrays.asList(10.0,16.5)));
	mp.put("GOA", new ArrayList<Double>(Arrays.asList(14.0,17.5)));
	mp.put("UP", new ArrayList<Double>(Arrays.asList(12.0,14.5)));
	mp.put("AP", new ArrayList<Double>(Arrays.asList(13.0,15.5)));
	mp.put("TN", new ArrayList<Double>(Arrays.asList(18.0,10.5)));
}

public  double calculateRate(String s, double sal) {
	if(sal<=50000.00) 
	return mp.get(s).get(0);
	return mp.get(s).get(1);
	}
public  void readfile(File f, File w) throws IOException{
	//reads file
	FileReader fr = new FileReader(f);
	FileWriter wr = new FileWriter(w);
	//reads characters
	BufferedReader br = new BufferedReader(fr);
	BufferedWriter bw =new BufferedWriter(wr);
	String line=br.readLine();
	while(line!= null) {
		String[] arr = line.split(",");
		double tax=calculateRate(arr[2],Double.valueOf(arr[3]))/100;
		double salaryTax = Double.valueOf(arr[3])*tax;
		double bonusTax =0.68*Double.valueOf(arr[4])*tax;
		double totalTax = salaryTax+bonusTax;
	    wr.write(line+","+Double.toString(totalTax)+"\n");
		line=br.readLine();
	}
	br.close();
	fr.close();
	bw.close();
	wr.close();
}
public static  void main(String[] args) {
	
	File f = new File("C:\\Users\\delll\\Desktop\\demo.txt");
	File w = new File("C:\\Users\\delll\\Desktop\\demo_out.txt");
	try {
		ReadFiles ob = new ReadFiles();
		ob.readfile(f,w);
	//	readfile(f,w);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		System.out.println("Program executed!!!");
	}
}
}
