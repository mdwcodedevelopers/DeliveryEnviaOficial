import 'package:envia2godelivery/widgets/buttons/button1.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/../colors.dart' as appColors;

class RegisterForm extends StatelessWidget
{
	bool	_iagree = false;
	
	@override
	Widget build(BuildContext context)
	{
		var size = MediaQuery.of(context).size;
		return Scaffold(
			body: SafeArea(
				child: Container(
					padding: EdgeInsets.only(top: 80),
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
				mainAxisAlignment: MainAxisAlignment.start,
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: [
					Row(
						children: [
							CircleAvatar(
								radius: 20,
								backgroundColor: appColors.mainColors['blue'],
								child: InkWell(
									child: Icon(
										Icons.arrow_back,
										color: Colors.white,
									)
								)
							),
							SizedBox(width: 10),
							Expanded(
								child: Text('Ingresa tu numero', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
							),
						]
					),
					SizedBox(height: 10),
					
					Text('Para iniciar, ingresa tu numero de teléfono.', 
						textAlign: TextAlign.center, 
						style: TextStyle(
							color: appColors.mainColors['blue'],
							fontWeight: FontWeight.normal
						)
					),
					Text('Te enviaremos un código de verificación',
						textAlign: TextAlign.center, 
						style: TextStyle(
							color: appColors.mainColors['blue'], 
							fontSize: 14,
							fontWeight: FontWeight.bold
						)
					),
					SizedBox(height: 25),
					Form(
						child: Column(
							children: [
								TextFormField(
									
								),
								SizedBox(height: 40),
								Row(
									children: [
										Checkbox(
											value: this._iagree,
										),
										SizedBox(width: 10),
										RichText(
											text: TextSpan(
												text: 'He leido y acepto ',
												style: TextStyle(
													fontWeight: FontWeight.bold,
													color: appColors.mainColors['blue']
												),
												children: [
													TextSpan(
														text: 'términos y condiciones',
														style: TextStyle(
															fontWeight: FontWeight.normal,
														)
													)
												]
											)
										)
									]
								)
							]
						)
					),
					SizedBox(height: 15),
					ButtonWidget1(
						text: 'Continuar',
						color: appColors.mainColors['green'],
						onClicked: ()
						{
						}
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
