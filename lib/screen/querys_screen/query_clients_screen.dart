import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/query/query_items.dart';
import '../../provider/client_provider.dart';

///[QueryClientsScreen] é a tela resposável pela consulta
///de todos os clientes

class QueryClientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultar Clientes',
            style: Theme.of(context).textTheme.titleMedium),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: Consumer<ClientProvider>(
        builder: (context, clientProvider, _) {
          if (clientProvider.isLoading == true) {
            return const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 5,
                ),
                Text('Carregando...'),
              ],
            ));
          }
          if (clientProvider.list.isNotEmpty) {
            return QueryItems(
              list: clientProvider.list,
              isClient: true,
            );
          } else {
            return const Center(
              child: Text('Nenhum Cliente Cadastrado!'),
            );
          }
        },
      ),
    );
  }
}
