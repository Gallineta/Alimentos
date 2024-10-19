
import 'package:alimentos2/indiceglucemico.dart';
import 'package:alimentos2/listaindiceglucemico.dart';
import 'package:alimentos2/proveedores.dart';
import 'package:alimentos2/tablaalimentos.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

 
import 'alimentosnovartis.dart';
 
import 'iniciar.dart';
import 'listafiltro.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
         providers: [
         ChangeNotifierProvider(create: (_) => SignalMode()),
         ChangeNotifierProvider(create: (_) => DatosFuture())
         ],
          child: MaterialApp(
          
          //child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            initialRoute: '/',
            routes: {
              '/': (context) => const Iniciar(),//HomePage(),
              '/alimentos1': (context) => const AlimentosCompo(),
              '/listafiltro': (context) => const ListaFiltro(),
             // '/alimentos2': (context) => const Alimentos2(),
              '/novartis': (context) => const AlimentosNovartis(),
              '/indiceglucemico': (context) => const IndiceGlucemico(),
              '/listaindiceglucemico': (context) => const ListaIndiceGlicemico(),  
            },
          ),
        );
     
    
  }
}
