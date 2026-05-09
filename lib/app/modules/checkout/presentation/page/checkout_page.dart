import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/dependence_injection/injection.dart';
import '../../domain/checkout_model.dart';
import '../bloc/checkout_bloc.dart';
import '../bloc/checkout_event.dart';
import '../bloc/checkout_state.dart';

@RoutePage()
class CheckoutPage extends StatelessWidget {
  final CheckoutModel checkout;

  const CheckoutPage({super.key, required this.checkout});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CheckoutBloc>(param1: checkout),
      child: Scaffold(
        appBar: AppBar(title: const Text("Checkout")),
        body: BlocConsumer<CheckoutBloc, CheckoutState>(
          listener: (context, state) {
            state.response?.let((response) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Pedido #${response.pedidoId} realizado com sucesso",
                  ),
                ),
              );
            });

            state.error?.let((error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(error)));
            });
          },
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...checkout.itens.map(
                        (item) => Card(
                          child: ListTile(
                            title: Text(item.produto.nome),
                            subtitle: Text("Quantidade: ${item.quantidade}"),
                            trailing: Text(
                              "R\$ ${(item.produto.preco * item.quantidade).toStringAsFixed(2)}",
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      const Text(
                        "Método de pagamento",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 8),

                      RadioListTile<MetodoPagamento>(
                        value: MetodoPagamento.pix,
                        groupValue: state.metodoPagamento,
                        onChanged: (value) {
                          if (value != null) {
                            context.read<CheckoutBloc>().add(
                              CheckoutEvent.changeMetodo(value),
                            );
                          }
                        },
                        title: const Text("PIX"),
                      ),

                      RadioListTile<MetodoPagamento>(
                        value: MetodoPagamento.cartao,
                        groupValue: state.metodoPagamento,
                        onChanged: (value) {
                          if (value != null) {
                            context.read<CheckoutBloc>().add(
                              CheckoutEvent.changeMetodo(value),
                            );
                          }
                        },
                        title: const Text("Cartão"),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 10, color: Colors.black12),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total", style: TextStyle(fontSize: 16)),
                          Text(
                            "R\$ ${checkout.total.toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: state.isLoading
                              ? null
                              : () {
                                  context.read<CheckoutBloc>().add(
                                    const CheckoutEvent.finalizar(),
                                  );
                                },
                          child: state.isLoading
                              ? const SizedBox(
                                  width: 22,
                                  height: 22,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Text("Finalizar pagamento"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

extension NullableExtension<T> on T? {
  void let(void Function(T value) callback) {
    final value = this;

    if (value != null) {
      callback(value);
    }
  }
}
