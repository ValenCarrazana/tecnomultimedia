void IlusionOptica () {

  background(255); //fondo       
  strokeWeight(1);

  println(frameCount);

  if (frameCount < 800) {

    for (float Ancho = frameCount++; Ancho > 0; Ancho-=300) {  // Ancho = Ancho - 250

      for (float Alto = frameCount++; Alto > 0; Alto-=300) {

        Color1 = map (mouseX, 300, 600, 100, random (0, 255)); 
        Color2 = map (mouseX, 300, 600, 100, random (0, 255)); 

        ellipseMode(CENTER); 

        fill (255, Color1, Color2);
        ellipse(width/2, height/2, Ancho, Alto);
        ellipse(width/2, height/2, Ancho, Alto);
      }
    }
  }


  if (frameCount > 800) {
    for (float Ancho = frameCount++; Ancho > 0; Ancho-=300) {  // Ancho = Ancho - 250

      for (float Alto = frameCount++; Alto > 0; Alto-=300) {

        Color1 = map (mouseX, 300, 600, 100, random (0, 255)); 
        Color2 = map (mouseX, 300, 600, 100, random (0, 255)); 

        ellipseMode(CENTER); 

        fill (0, Color1, Color2);
        ellipse(width/2, height/2, Ancho, Alto);
        ellipse(width/2, height/2, Ancho, Alto);
      }
    }
  }
}
