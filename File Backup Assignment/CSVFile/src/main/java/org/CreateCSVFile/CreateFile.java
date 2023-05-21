package org.CreateCSVFile;

import java.io.File;
import java.io.IOException;

public class CreateFile {
    public static void createFile() throws IOException {
        File file=new File("C:\\Projects\\PrinceCSVProj\\output.csv");
        if(file.createNewFile()){
            System.out.println("file "+file.getName()+" is created");
        }
        else System.out.println("file "+file.getName()+" already exist");
    }
    

    public static void main(String[] args) throws IOException {
        createFile();
    }
}
