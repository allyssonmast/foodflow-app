import 'package:flutter/material.dart';

import '../../../restaurante_details/domain/model/produto_model.dart';


class ProdutoCard extends StatelessWidget {

  final ProdutoModel produto;
  final VoidCallback onTap;

  const ProdutoCard({
    super.key,
    required this.produto,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),

      child: ListTile(

        onTap: onTap,

        contentPadding: const EdgeInsets.all(16),

        title: Row(

          children: [

            Expanded(
              child: Text(
                produto.nome,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),

              decoration: BoxDecoration(
                color: produto.disponivel
                    ? Colors.green
                    : Colors.red,

                borderRadius:
                BorderRadius.circular(8),
              ),

              child: Text(
                produto.disponivel
                    ? 'Disponível'
                    : 'Indisponível',

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(
            top: 12,
          ),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              Text(
                produto.descricao,
              ),

              const SizedBox(height: 12),

              Text(
                'R\$ ${produto.preco.toStringAsFixed(2)}',

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 12),

              if (produto.categorias.isNotEmpty)

                Wrap(
                  spacing: 8,
                  runSpacing: 8,

                  children: produto.categorias
                      .map(
                        (categoria) => Chip(
                      label: Text(categoria),
                    ),
                  )
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}