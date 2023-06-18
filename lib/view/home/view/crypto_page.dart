import 'package:cryptocurrency_ranking_app/product/widget/appbar/home_app_bar.dart';
import 'package:cryptocurrency_ranking_app/view/home/view/home_view.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto_cubit.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/get_it_instance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoPage extends StatelessWidget with GetItInstance {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocProvider(
        create: (context) => CryptoCubit(cryptoDataSource: getHttp())..ranking(),
        child: const HomeView(),
      ),
    );
  }
}
