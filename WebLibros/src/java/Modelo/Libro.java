package Modelo;

public class Libro extends Producto{
    String genero;
    String portada;

    public Libro(String codigo, String nombre, double precio,String genero,String portada) {
        super(codigo, nombre, precio);
        this.genero = genero;
        this.portada = portada;
    }

    public String getGenero() {
        return genero;
    }
    public String getPortada() {
        return portada;
    }



    
}