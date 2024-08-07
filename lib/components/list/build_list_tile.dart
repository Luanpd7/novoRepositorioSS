import 'package:flutter/material.dart';

///[buildListTile] é um widget chamado no componente QueryItems,
///para verificar qual informação sera passada para criar um
///listTile;

Widget buildListTile({
  required BuildContext context,
  required String title,
  required String subtitle,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsetsDirectional.only(
        start: 10, end: 10, top: 15, bottom: 3),
    child: Container(
      decoration: BoxDecoration(
        color: Theme.of(context).hintColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset.fromDirection(0, 5),
          )
        ],
      ),
      width: double.infinity,
      height: 100,
      child: Center(
        child: ListTile(
          title: Text(title, overflow: TextOverflow.ellipsis,),
          subtitle: Text(subtitle, overflow: TextOverflow.ellipsis),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
          onTap: onTap,
        ),
      ),
    ),
  );
}
