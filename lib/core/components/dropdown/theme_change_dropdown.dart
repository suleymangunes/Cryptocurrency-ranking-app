import 'package:cryptocurrency_ranking_app/core/components/text/text_body_medium.dart';
import 'package:cryptocurrency_ranking_app/core/components/text/text_title_medium.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:cryptocurrency_ranking_app/view/settings/view-model/radio/radio_cubit.dart';
import 'package:cryptocurrency_ranking_app/view/settings/view-model/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeChangeDropdown extends StatelessWidget {
  const ThemeChangeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RadioCubit(),
      child: BlocBuilder<RadioCubit, String>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _systemRadio(state, context),
              _lightRadio(state, context),
              _darkRadio(state, context),
              _actions(context, state)
            ],
          );
        },
      ),
    );
  }

  ListTile _darkRadio(String state, BuildContext context) {
    return ListTile(
      leading: Radio(
        value: ProjectStrings.darkRadio,
        groupValue: state,
        onChanged: (value) {
          context.read<RadioCubit>().changeValue(value.toString());
        },
      ),
      title: const TextTitleMedium(text: ProjectStrings.sysDark),
    );
  }

  ListTile _lightRadio(String state, BuildContext context) {
    return ListTile(
      leading: Radio(
        value: ProjectStrings.lightRadio,
        groupValue: state,
        onChanged: (value) {
          context.read<RadioCubit>().changeValue(value.toString());
        },
      ),
      title: const TextTitleMedium(text: ProjectStrings.sysLight),
    );
  }

  ListTile _systemRadio(String state, BuildContext context) {
    return ListTile(
      leading: Radio(
        value: ProjectStrings.sysRadio,
        groupValue: state,
        onChanged: (value) {
          context.read<RadioCubit>().changeValue(value.toString());
        },
      ),
      title: const TextTitleMedium(text: ProjectStrings.sysDefault),
    );
  }

  Row _actions(BuildContext context, String state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _cancelTextButton(context),
        _okTextButton(state, context),
      ],
    );
  }

  TextButton _okTextButton(String state, BuildContext context) {
    return TextButton(
      onPressed: () {
        switch (state) {
          case ProjectStrings.lightRadio:
            BlocProvider.of<ThemeCubit>(context).makelight();
            Navigator.pop(context);
            break;
          case ProjectStrings.darkRadio:
            BlocProvider.of<ThemeCubit>(context).makeDark();
            Navigator.pop(context);
            break;
          default:
            BlocProvider.of<ThemeCubit>(context).makeSystem();
            Navigator.pop(context);
            break;
        }
      },
      child: const TextBodyMedium(text: ProjectStrings.ok),
    );
  }

  TextButton _cancelTextButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const TextBodyMedium(text: ProjectStrings.cancel),
    );
  }
}
