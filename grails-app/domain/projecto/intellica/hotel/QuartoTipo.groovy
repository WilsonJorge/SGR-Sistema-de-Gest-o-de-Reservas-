package projecto.intellica.hotel
class QuartoTipo {

    // Specify the column name for imageData
    static mapping = {
        imageData column: "custom_image_data" // Replace "custom_image_data" with the actual column name in your database
    }
    String codicoTipoQuarto
    String tipoQuarto;
    int numeroCama;


    byte[] imageData
    Double preco

    static constraints = {
        tipoQuarto nullable: true
        numeroCama  nullable: true
        preco nullable: true
        codicoTipoQuarto nullable: true

        imageData  nullable: true, maxSize: 1024 * 1024 // Set the maximum size of the image data (in bytes) as per your requirement
        // Add other constraints for codicoTipoQuarto, tipoQuarto, numeroCama, and preco if needed
    }
    def afterInsert()
    {
        int ano = Calendar.getInstance().get(Calendar.YEAR)
        def codicoTipoQuarto =this.id+"/QUARTOTIPO/"+ano

        this.setCodicoTipoQuarto(codicoTipoQuarto)
    }

    String toString() { return tipoQuarto}
}