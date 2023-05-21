package org.CreateCSVFile;

import com.opencsv.CSVWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Input {
    public static ArrayList<String> list=new ArrayList<>();
    static {
        list.add("UP");
        list.add("MH");
        list.add("NDLS");
        list.add("BH");
    }
    public static String[] createLine(int i){
        String name = "A"+(i+1);
        String location=list.get( i%4 );
        // int id=i;
        double salary=(i+1)*10000.0;
        double bonus= salary*(0.3);
        String[] strArr;
        String s=i +","+ name + ","+location+","+salary+","+bonus;
        strArr=s.split(",");
        //System.out.println(strArr.length);
        return strArr;
    }
    public static void main(String[] args) throws IOException {
        //BufferedWriter writer=new BufferedWriter(new FileWriter("C:\\Projects\\PrinceCSVProj\\InputFile.csv"));
        CSVWriter writer=new CSVWriter(new FileWriter("C:\\Projects\\PrinceCSVProj\\InputFile.csv"));
        String header="ID,NAME,STATE CODE,SALARY,BONUS";
        writer.writeNext(header.split(","));
        writer.writeNext("\n".split(""));
        File file=new File("C:\\Projects\\PrinceCSVProj\\InputFile.csv");
        if(file.exists()){
            try(PrintWriter pw=new PrintWriter(file)){}
            catch (IOException e){}
        }
        int i=0;
        while(i<50){
            String[] strArr;
            strArr=createLine(i);
            writer.writeNext(strArr);
            i++;
        }
        writer.close();
    }
}
