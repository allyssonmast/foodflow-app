import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../restaurante_details/domain/model/produto_model.dart';
import '../../data/model/produto_request.dart';
import '../bloc/restaurante_bloc.dart';
import '../bloc/restaurante_event.dart';
import '../bloc/restaurante_state.dart';

class ProdutoFormDialog extends StatefulWidget {
  final ProdutoModel? produto;

  const ProdutoFormDialog({super.key, this.produto});

  @override
  State<ProdutoFormDialog> createState() => _ProdutoFormDialogState();
}

class _ProdutoFormDialogState extends State<ProdutoFormDialog> {
  final nomeController = TextEditingController();

  final descricaoController = TextEditingController();

  final precoController = TextEditingController();

  final categoriasController = TextEditingController();

  bool disponivel = true;

  @override
  void initState() {
    super.initState();

    final produto = widget.produto;

    if (produto != null) {
      nomeController.text = produto.nome;

      descricaoController.text = produto.descricao;

      precoController.text = produto.preco.toString();

      categoriasController.text = produto.categorias.join(',');

      disponivel = produto.disponivel;
    }
  }

  @override
  Widget build(BuildContext context) {
    final editing = widget.produto != null;

    return BlocListener<RestauranteBloc, RestauranteState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            Navigator.pop(context);
          },

          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
        );
      },

      child: AlertDialog(
        title: Text(editing ? 'Editar Produto' : 'Novo Produto'),

        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              TextField(
                controller: nomeController,

                decoration: const InputDecoration(labelText: 'Nome'),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: descricaoController,

                maxLines: 3,

                decoration: const InputDecoration(labelText: 'Descrição'),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: precoController,

                keyboardType: TextInputType.number,

                decoration: const InputDecoration(labelText: 'Preço'),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: categoriasController,

                decoration: const InputDecoration(labelText: 'Categorias'),
              ),

              const SizedBox(height: 16),

              SwitchListTile(
                contentPadding: EdgeInsets.zero,

                value: disponivel,

                onChanged: (value) {
                  setState(() {
                    disponivel = value;
                  });
                },

                title: const Text('Disponível'),
              ),
            ],
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },

            child: const Text('Cancelar'),
          ),

          ElevatedButton(
            onPressed: () {
              final categorias = categoriasController.text
                  .split(',')
                  .map((e) => e.trim())
                  .where((e) => e.isNotEmpty)
                  .toList();

              final request = ProdutoRequest(
                nome: nomeController.text,

                descricao: descricaoController.text,

                preco: double.parse(precoController.text),

                disponivel: disponivel,

                categorias: categorias,
              );

              if (editing) {
                context.read<RestauranteBloc>().add(
                  UpdateProduto(widget.produto!.id, request),
                );
              } else {
                context.read<RestauranteBloc>().add(CreateProduto(request));
              }
            },

            child: Text(editing ? 'Atualizar' : 'Cadastrar'),
          ),
        ],
      ),
    );
  }
}
