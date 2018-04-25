
package Controlador;

import java.util.ArrayList;
import Modelo.Libro;

public class Servicio {
    
    ArrayList<Libro> listaLibro = new ArrayList();
    
        public void añadirLibros(){
        Libro objLib1 = new Libro("00001","La casa verde",25.00,"Novela","La casa verde.jpg");
        Libro objLib2 = new Libro("00002","Todas las sangres",25.00,"Novela","Todas las sangres.jpg");
        Libro objLib3 = new Libro("00003","Los perros hambrientos",25.00,"Novela","Los perros hambrientos.jpg");
        
        registrarLibro(objLib1);
        registrarLibro(objLib2);
        registrarLibro(objLib3);
         }
    
     public void registrarLibro(Libro objLibro){
        listaLibro.add(objLibro);
    }
         public ArrayList<Libro> getListaLibro(){
        return this.listaLibro;
    }
     
         
         
         public void listarProductos(){
               System.out.println("**** Lista de Libros ****");
        for (int i=0; i<this.listaLibro.size(); i++){
            System.out.println("Código : "+this.listaLibro.get(i).getCodigo());
            System.out.println("Nombre : "+this.listaLibro.get(i).getNombre());
            System.out.println("Precio : "+this.listaLibro.get(i).getPrecio());
            System.out.println("Genero : "+this.listaLibro.get(i).getGenero());
         }
         
         }

}
