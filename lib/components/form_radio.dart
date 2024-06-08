import 'package:flutter/material.dart';

class FormRadio extends StatelessWidget {

 final String _status = 'Ativo';


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Situação:', style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(width: 10,),
        Row(
       
          children: [
            Text('Ativo', style: Theme.of(context).textTheme.bodySmall),
            Radio(value: 'Ativo', 
            groupValue: _status, onChanged: (_) {})
          ],
        ),
          Row(
          children: [
            Text('Inativo', style: Theme.of(context).textTheme.bodySmall, ),
            Radio(value: 'Ativo', 
            groupValue: _status,
             onChanged: (_) {})
          ],
        ),
      ],
    );
  }
}