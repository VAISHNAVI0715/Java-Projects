package FileHandling;
import java.io.*;
public class FileDemo {

	public static void fileObjectDemo() {
		File fObj = new File("d:\\temp\\b2");
		System.out.println(fObj.exists());
		System.out.println(fObj.lastModified());
		String[] list = fObj.list();
		for(int index=0; index<list.length; index++) {
			System.out.println(list[index]);
		}
		System.out.println();
	}
	
	public static void fileTextDemo() {
		BufferedReader reader;
		BufferedWriter writer;

		try {
			reader = new BufferedReader(new FileReader("d:\\temp\\b2\\sample.txt"));
			writer = new BufferedWriter(new FileWriter("d:\\temp\\b2\\sample_out.txt"));
			String line = reader.readLine();

			while (line != null) {
				System.out.println(line);
				String newline = line + " book \n";
				writer.write(newline);
				// read next line
				line = reader.readLine();
			}

			reader.close();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		File fObj = new File("d:\\temp\\b2\\sample2.txt");
//		System.out.println(fObj.exists());
		//fileObjectDemo();
		fileTextDemo();
		
	}
}
