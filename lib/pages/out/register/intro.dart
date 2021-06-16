import 'package:envia2godelivery/widgets/buttons/button1.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/../colors.dart' as appColors;

class RegisterIntro extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		var size = MediaQuery.of(context).size;
		return Scaffold(
			body: SafeArea(
				child: Container(
					decoration: BoxDecoration(
						image: DecorationImage(
							image: AssetImage('images/Ondas_layout_1.png'),
							fit: BoxFit.fitWidth,
							alignment: Alignment.topLeft
						),
					),
					child: CarouselSlider(
						options: CarouselOptions(
							height: size.height / 0.7,
							viewportFraction: 1.0,
							initialPage: 0,
							enableInfiniteScroll: false,
						),
						items: [
							this._slide1(context),
							this._slide2(context),
						]
					)
				)
			)
		);
	}
	Widget _slide1(BuildContext context)
	{
		return Container(
			padding: EdgeInsets.all(15),
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: [
					Center(
						child: ClipRRect(
							child: Image.asset('images/i1.png', fit: BoxFit.cover)
						)
					),
					SizedBox(height: 10),
					Text('Envia2GO', 
						textAlign: TextAlign.center, 
						style: TextStyle(
							color: appColors.mainColors['green'], 
							fontSize: 50,
							fontWeight: FontWeight.bold
						)
					),
					SizedBox(height: 15),
					Text(
						'!Facilitamos los envios de nuestros clientes!', textAlign: TextAlign.center,
						style: TextStyle(
							color: appColors.mainColors['blue'], 
							fontSize: 15,
							fontWeight: FontWeight.normal
						)
					)
				]
			)
		);
	}
	Widget _slide2(BuildContext context)
	{
		return Container(
			padding: EdgeInsets.all(15),
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: [
					Center(
						child: ClipRRect(
							child: Image.asset('images/i2.png', fit: BoxFit.cover)
						)
						
					),
					Text('Envia2GO', 
						textAlign: TextAlign.center, 
						style: TextStyle(
							color: appColors.mainColors['green'], 
							fontSize: 50,
							fontWeight: FontWeight.bold
						)
					),
					SizedBox(height: 15),
					Text(
						'Ciudando cada detalle y proceso en el manejo de sus productos', textAlign: TextAlign.center,
						style: TextStyle(
							color: appColors.mainColors['blue'], 
							fontSize: 15,
							fontWeight: FontWeight.normal
						)
					),
					SizedBox(height: 15),
					ButtonWidget1(
						color: appColors.mainColors['green'],
						text: 'Empezar',
						onClicked: ()
						{
							Navigator.pushNamed(context, '/register-form');
						}
					)
				]
			)
		);
	}
}
