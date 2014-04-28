// POV Wand
// Bitmap to text converter
// Jonathan Jamieson
// www.jonathanjamieson.com
// unigamer@gmail.com

PImage img;
PrintWriter output;
boolean ready_to_process = false;

String image_path;
PImage pimg;
 
void setup() {
  size(5, 5);
   selectInput("Select a monochrome bitmap", "fileSelected");

}


void fileSelected(File selection)
{
 image_path = (selection.getAbsolutePath());

String[] text_file_names = {image_path,".txt"};

String text_file_name = join(text_file_names, ""); 
 
  output = createWriter(text_file_name);
img = loadImage(image_path);


output.println("Height: " + img.height);
output.println("Width: " + img.width);

output.println();
output.println();


   for (int y = 0; y < img.height; y++ ) {
  
for (int x = 0; x < img.width; x++) {
 
    // Calculate the 1D pixel location
    int loc = x + y*img.width;
    // Get the R,G,B values from image
    float r = red   (img.pixels[loc]);
    float g = green (img.pixels[loc]);
    float b = blue  (img.pixels[loc]);
 
 if ((r==0) && (g==0) && (b==0)) {
 print(1);
 output.print("1");

 
 } else {
   
    print(0);
    output.print("0");
 }
 
 print(",");
 output.print(",");
 
  } 
  
  println("");
   output.println();
}


output.flush(); // Write the remaining data
output.close(); // Finish the file

exit();
  }
  
  

 
void draw() {
  


}


void mouseClicked() {
exit();
}
