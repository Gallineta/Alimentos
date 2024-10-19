import 'package:flutter/material.dart';



class BuscarAlimentoDelegate extends SearchDelegate {
  final List items;
  List filtro = [];
  BuscarAlimentoDelegate(this.items);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = '')
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: filtro.length,
      itemBuilder: (context, i){
        return  ListTile(
          title: Text(filtro[i]),
        );
      }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    filtro = items.where((items) {
      return items.toLowerCase().contains(query.trim().toLowerCase());
    }).toList();
    return ListView.builder(
      itemCount: filtro.length,
      itemBuilder: (context, i){
        return  ListTile(
          title: Text(filtro[i]),
        );
      }
    );
  }
}
