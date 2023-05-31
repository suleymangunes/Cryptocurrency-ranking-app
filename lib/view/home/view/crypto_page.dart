import 'package:cryptocurrency_ranking_app/product/widget/appbar/home_app_bar.dart';
import 'package:cryptocurrency_ranking_app/view/_product/service/i_crypto_data_source.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/crypto/crypto_repository.dart';
import 'package:cryptocurrency_ranking_app/view/home/view/home_view.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ICryptoDataSource dataSource = CryptoDataSourceWithHttp();
    final ICryptoDataSource dataSourceDio = CryptoDataSourceWithDio();
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocProvider(
        create: (context) => CryptoCubit(dataSource)..ranking(),
        child: const HomeView(),
      ),
    );
  }
}
