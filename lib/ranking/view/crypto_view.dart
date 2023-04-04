import 'package:cryptocurrency_ranking_app/ranking/cubit/crypto_cubit.dart';
import 'package:cryptocurrency_ranking_app/ranking/cubit/crypto_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoView extends StatelessWidget {
  const CryptoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CryptoCubit, CryptoState>(
        builder: (context, state) {
          switch (state.status) {
            case CryptoStatus.initial:
              return const SizedBox.shrink();
            case CryptoStatus.loading:
              return const CircularProgressIndicator();
            case CryptoStatus.completed:
              return _listCrypto(state as CryptoCompleted);
            case CryptoStatus.error:
              return Text(state.toString());
          }
        },
        listener: (context, state) {
          if (state is CryptoError) {
            print("hata olustu");
            return;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CryptoCubit>().ranking();
        },
      ),
    );
  }

  ListView _listCrypto(CryptoCompleted state) {
    return ListView.builder(
      itemCount: state.response.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(state.response[index].id.toString()),
          trailing: Text(state.response[index].quote.uSD.price.toString()),
        );
      },
    );
  }
}
