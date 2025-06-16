import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/core/app_colors.dart';
import 'package:numbers/data/repository/number_repository.dart';
import 'package:numbers/view/history/ui/history_screen.dart';
import 'package:numbers/view/home/cubit/number_cubit.dart';
import 'package:numbers/view/number_fact/ui/number_fact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NumberCubit(numberRepository: NumberRepository())..init(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('MENU'),
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: 16),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
                );
              },
              icon: Icon(Icons.history),
            ),
          ],
        ),
        body: BlocConsumer<NumberCubit, NumberState>(
          listener: (context, state) {
            if (state is NumberStateError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.error.toString())));
            }
            if (state is NumberStateLoading && state.numberData != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      NumberFactScreen(numberData: state.numberData!),
                ),
              ).whenComplete(() => context.read<NumberCubit>().init());
            }
          },
          builder: (context, state) {
            if (state is NumberStateLoading) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.white),
              );
            } else if (state is NumberStateLoaded) {
              return _HomeScreenContent(
                cubit: context.read<NumberCubit>(),
                state: state,
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent({required this.cubit, required this.state});

  final NumberCubit cubit;
  final NumberStateLoaded state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      children: [
        Container(
          height: 70,
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            spacing: 8,
            children: [
              Expanded(
                child: TextFormField(
                  cursorColor: AppColors.firstColor,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: cubit.enterNumber,
                  onEditingComplete: cubit.getNumberFact,
                  decoration: InputDecoration(
                    hoverColor: Colors.white,
                    fillColor: AppColors.secondColor,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                    hint: Text(
                      'Enter number',
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: state.number == null ? 0.6 : 1,
                child: GestureDetector(
                  onTap: cubit.getNumberFact,
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: AppColors.firstColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.search, color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        InkWell(
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          onTap: cubit.getRandomNumberFact,
          child: Container(
            height: 38,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.secondColor, width: 2),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                'Random number',
                style: TextStyle(
                  color: AppColors.secondColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
