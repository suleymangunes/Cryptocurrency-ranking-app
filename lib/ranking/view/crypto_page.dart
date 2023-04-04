import 'package:cryptocurrency_ranking_app/ranking/cubit/crypto_cubit.dart';
import 'package:cryptocurrency_ranking_app/ranking/service/fetch_data.dart';
import 'package:cryptocurrency_ranking_app/ranking/view/crypto_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CryptoCubit(CryptoRepository())..ranking(),
      child: const CryptoView(),
    );
  }
}
