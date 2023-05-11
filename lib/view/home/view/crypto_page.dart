import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/product/widget/appbar/home_app_bar.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/view/home_view.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto/crypto_cubit.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocProvider(
        create: (context) => CryptoCubit(CryptoRepository())..ranking(),
        child: const HomeView(),
      ),
    );
  }
}
