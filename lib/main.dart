import 'dart:async';
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'LUGARES TURISTICOS';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/Quito.jpg'),
              TitleSection(name: "Quito", location: "Sierra ecuatoriana"),
              ButtonSection(),
              TextSection(description: 
                'Quito, oficialmente conocida como San Francisco de Quito, es la capital de Ecuador y una de las ciudades más antiguas de América del Sur.'
                'Se ubica en la región andina del país,' 
                'a una altitud de aproximadamente 2.850 metros sobre el nivel del mar, lo que la convierte en una de las capitales más altas del mundo.'
              ),

              ImageSection(image: 'images/mitadmundo.jpeg'),
              TitleSection(name: "Mitad del Mundo", location: "San Antonio de Pichincha, Quito"),
              ButtonSection(),
              TextSection(description: 
                'Monumento emblemático que marca la línea ecuatorial. Permite estar con un pie en el hemisferio norte y otro en el sur.' 
              ),

              ImageSection(image: 'images/gala.jpeg'),
              TitleSection(name: "Islas Galápagos", location: "Provincia de Galápagos (archipiélago en el Pacífico)"),
              ButtonSection(),
              TextSection(description: 
                'Patrimonio Natural de la Humanidad. Famosas por su biodiversidad única y por inspirar la teoría de la evolución de Darwin.' 
              ),

              ImageSection(image: 'images/banos.jpeg'),
              TitleSection(name: "Baños de Agua Santa", location: "Provincia de Tungurahua"),
              ButtonSection(),
              TextSection(description: 
                'Ciudad conocida por sus aguas termales, cascadas (como el Pailón del Diablo), deportes extremos y rutas ecológicas.' 
              ),

              ImageSection(image: 'images/coto.jpeg'),
              TitleSection(name: "Parque Nacional Cotopaxi", location: "Provincia de Cotopaxi"),
              ButtonSection(),
              TextSection(description: 
                'Hogar del volcán Cotopaxi, uno de los más altos del mundo. Ideal para senderismo y observación de fauna andina.' 
              ),

              ImageSection(image: 'images/cuenca.jpeg'),
              TitleSection(name: "Cuenca (Centro Histórico)", location: "Provincia de Azuay"),
              ButtonSection(),
              TextSection(description: 
                'Ciudad colonial con arquitectura patrimonial, iglesias históricas, y una vibrante escena cultural.' 
              ),

              ImageSection(image: 'images/yasuni.jpeg'),
              TitleSection(name: "Parque Nacional Yasuní", location: "Provincias de Orellana y Pastaza"),
              ButtonSection(),
              TextSection(description: 
                'Una de las zonas con mayor biodiversidad del planeta. Hogar de comunidades indígenas y especies únicas.' 
              ),

              ImageSection(image: 'images/quilotoa.jpeg'),
              TitleSection(name: "Laguna Quilotoa", location: "Provincia de Cotopaxi"),
              ButtonSection(),
              TextSection(description: 
                'Cráter volcánico con una laguna de color turquesa. Popular para caminatas, acampadas y turismo comunitario.' 
              ),

              ImageSection(image: 'images/motanita.jpeg'),
              TitleSection(name: "Montañita", location: "Provincia de Santa Elena"),
              ButtonSection(),
              TextSection(description: 
                'Destino playero famoso por su ambiente festivo, surf, vida nocturna y comunidad mochilera.' 
              ),

              ImageSection(image: 'images/cajas.jpeg'),
              TitleSection(name: "Parque Nacional Cajas", location: "Provincia de Azuay"),
              ButtonSection(),
              TextSection(description: 
                'Ecosistema andino con lagunas glaciares, senderos y especies endémicas. Muy visitado por excursionistas.' 
              ),

              ImageSection(image: 'images/diablo.jpeg'),
              TitleSection(name: "Nariz del Diablo (Tren Turístico)", location: "Provincia de Chimborazo"),
              ButtonSection(),
              TextSection(description: 
                'Antigua ruta ferroviaria con descensos espectaculares en zigzag por la montaña. Una maravilla de ingeniería.' 
              ),

              ImageSection(image: 'images/otavalo.jpeg'),
              TitleSection(name: "Otavalo (Mercado Artesanal)", location: "Provincia de Imbabura"),
              ButtonSection(),
              TextSection(description: 
                'Uno de los mercados indígenas más grandes de Sudamérica, ideal para comprar artesanías, textiles y arte tradicional.' 
              ),

              ImageSection(image: 'images/salinas.jpeg'),
              TitleSection(name: "Playas de Salinas", location: "Provincia de Santa Elena"),
              ButtonSection(),
              TextSection(description: 
                'Uno de los balnearios más populares del país, con playas modernas, hoteles y actividades acuáticas.' 
              ),

              ImageSection(image: 'images/mindo.jpeg'),
              TitleSection(name: "Mindo", location: "Provincia de Pichincha"),
              ButtonSection(),
              TextSection(description: 
                'Bosque nublado ideal para ecoturismo, observación de aves, mariposas, cascadas y tirolesa.' 
              ),

              ImageSection(image: 'images/incas.jpeg'),
              TitleSection(name: "Ingapirca (Ruinas Incas)", location: "Provincia de Cañar"),
              ButtonSection(),
              TextSection(description: 
                'Sitio arqueológico más importante del Ecuador. Incluye el Templo del Sol y estructuras de la cultura Cañari e Inca.' 
              ),

              ImageSection(image: 'images/malecon.jpeg'),
              TitleSection(name: "Malecón 2000", location: "Guayaquil, Provincia del Guayas"),
              ButtonSection(),
              TextSection(description: 
                'Renovado paseo a lo largo del río Guayas, con jardines, monumentos, museos y atracciones familiares.' 
              ),

            ],
          ),
        ),
      ),
    );
  }
}




class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          Icon(Icons.star, color: Colors.red[500]),
          const Text('3'),
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget{
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {

    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color:color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color:color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color:color, icon: Icons.share, label: 'SHARE')
        ],
      ),
    );

  }

}


class ButtonWithText extends StatelessWidget{
  const ButtonWithText({
    
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    
  });


  final Color color;
  final IconData icon;
  final String label;  


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}





class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}



class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}