import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Iniciar extends StatelessWidget {
  const Iniciar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/alimentos.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.5),
        appBar: AppBar(
          title: const Text('Menu de opciones'),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 134, 223),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assets/alimentos.jpg')),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Composicion Alimentos'),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: const Text(
                    'Alimentos 1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: const Icon(Icons.local_dining_outlined,
                  size: 40,
                  ),
                  /*const CircleAvatar(
                      backgroundImage: AssetImage('assets/alimentos.jpg')),*/
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/alimentos1',
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: const Text(
                    'Alimentos 2',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.wysiwyg_sharp,
                  size: 40,
                  ),
                  /*const CircleAvatar(
                      backgroundImage: AssetImage('assets/alimentos.jpg')),*/
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/alimentos2',
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: const Text(
                    'Alimentos Novartis',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading:const Icon(Icons.local_dining_outlined,
                  size: 40,
                  ), 
                  /*const CircleAvatar(
                      backgroundImage: AssetImage('assets/alimentos.jpg')),*/
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/novartis',
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: const Text(
                    'Indice Glucémico',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading:const Icon(Icons.blender_outlined,
                  size: 40,
                  ),
                  /* const CircleAvatar(
                      backgroundImage: AssetImage('assets/alimentos.jpg')),*/
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/indiceglucemico',
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: const Text(
                    'Lista Indice Glucémico',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading:const Icon(Icons.blender_outlined,
                  size: 40,
                  ),
                  /* const CircleAvatar(
                      backgroundImage: AssetImage('assets/alimentos.jpg')),*/
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      '/listaindiceglucemico',
                    );
                  },
                ),
              ),




              Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: const Text(
                    'Salir',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.exit_to_app,
                  size: 40,
                  ),
                 /* const CircleAvatar(
                      backgroundImage: AssetImage('assets/alimentos.jpg')),*/
                  onTap: () {
                    SystemNavigator.pop();
                  },
                ),
              )
            ],
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INDICEGLUCÉMICO & CARGAGLUCÉMICA',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(
                'Indice Glucemico',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Medida del aumento de la concentración de glucosa (un tipo de azúcar) en la sangre como resultado del consumo de un carbohidrato específico (alimento que contiene azúcar) en comparación con el consumo de una cantidad normal de glucosa.',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'La carga glucémica se calcula multiplicando el índice glucémico del alimento por la cantidad de hidratos en gramos que tiene esa porción y dividiéndolo entre 100. Así, el dato que obtenemos es más real sobre la forma en que una determinada cantidad de alimento va a influir en nuestros niveles de glucosa.De este modo vemos cómo la carga glucémica es más práctica que el índice glucémico.'
,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left),
              ) 
            ],
          ),
        ),
      ),
    );
  }
}
