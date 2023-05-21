package org.CreateCSVFile;

import com.opencsv.CSVReader;
import com.opencsv.CSVWriter;
import com.opencsv.exceptions.CsvValidationException;

import java.io.*;

public class Main {
    public static double computeTax(double salary, double bonus){
        bonus=bonus*0.32;
        if(salary<60000){
            return bonus;
        }
        else if(salary >= 60000 && salary < 75000){
            return (salary)*0.1 +bonus;
        }
        else if(salary>=75000 && salary<100000){
            return (salary)*0.15+bonus;
        }
        else if(salary>=100000 && salary<125000){
            return (salary)*0.2+bonus;
        }
        else  return (salary )*0.3+ bonus;
    }
    public static void main(String[] args) throws IOException, CsvValidationException {
        // input()
        //createFile();
        CSVReader reader=new CSVReader(new FileReader("C:\\Projects\\PrinceCSVProj\\InputFile.csv"));
        CSVWriter writer=new CSVWriter(new FileWriter("C:\\Projects\\PrinceCSVProj\\output.csv"));
        File file=new File("C:\\Projects\\PrinceCSVProj\\output.csv");
        if(file.exists()){
            try(PrintWriter pw=new PrintWriter(file)){}
            catch (IOException e){}
        }

        String header="ID,NAME,STATE CODE,SALARY,BONUS,TOTAL TAX, ACTUAL SALARY";
        writer.writeNext(header.split(","));
        writer.writeNext("\n".split(""));
        String[] line;
        line=reader.readNext(); line=reader.readNext(); // in my case, I do have a header and a line space right after header
        line=reader.readNext();
        while (line!=null){
            double salary=Double.parseDouble(line[3]);
            double bonus = Double.parseDouble(line[4]);
            double totalTax=computeTax(salary,bonus);
            double actualSalary= (salary+bonus)-totalTax;
            StringBuilder newLine = new StringBuilder();
            for(String data : line){
                assert false;
                newLine.append(data).append(",");
            }
            newLine.append(totalTax).append(",");
            newLine.append(actualSalary);
            writer.writeNext(newLine.toString().split(","));
            line=reader.readNext();
        }
        reader.close();
        writer.close();
    }
}