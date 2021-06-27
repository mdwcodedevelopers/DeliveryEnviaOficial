import 'package:envia2godelivery/pages/menu/widgets/app_bar.dart';
import 'package:envia2godelivery/pages/menu/widgets/item.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/backgrounds/background3.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // const Menu({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Stack(
       alignment: Alignment.center,
       children: [
        Background3(),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.15),
                AppBarMenu(text: 'MENÚ',),
                SizedBox(height: height * 0.01),
                Item(text: 'Categorías', imageString: 'images/Icono_Categoria.svg', color: getColor()[500], onPress: null,),
                Item(text: 'Perfil', imageString: 'images/Icono_Pefil.svg', color: getColor()[50], onPress: (){Navigator.pushNamed(context, 'profile');}),
                Item(text: 'Carrito', imageString: 'images/Icono_Carrito.svg', color: getColor()[100], onPress: null),
                Item(text: 'Estado de la orden', imageString: 'images/Icono_Reloj.svg', color: getColor()[600], onPress: null),
                Item(text: 'Historial de órdenes', imageString: 'images/Icono_Menu_Historial.svg', color: getColor()[700], onPress: null),
                Item(text: 'Direciones', imageString: 'images/Icono_Ubicación.svg', color: getColor()[800], onPress: null),
                Item(text: 'Configuración de idioma', imageString: 'images/Icono_Bandera_Idioma.svg', color: getColor()[500], onPress: null),
                Item(text: 'Chat de soporte', imageString: 'images/Icono_Chat.svg', color: getColor()[50], onPress: null),
              ],
            ),
          ),
        ),
      ]
    );
  }
}