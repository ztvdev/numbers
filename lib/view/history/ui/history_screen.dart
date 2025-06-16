import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/core/app_colors.dart';
import 'package:numbers/data/repository/number_repository.dart';
import 'package:numbers/view/history/cubit/history_cubit.dart';
import 'package:numbers/view/number_fact/ui/number_fact_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HISTORY')),
      body: BlocProvider(
        create: (context) =>
            HistoryCubit(numberRepository: NumberRepository())..getNumbers(),
        child: BlocBuilder<HistoryCubit, HistoryState>(
          builder: (context, state) {
            if (state is HistoryStateLoading) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.white),
              );
            } else if (state is HistoryStateLoaded) {
              return ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NumberFactScreen(
                            numberData: state.numbers[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
                        state.numbers[index].fact,
                        style: TextStyle(
                          color: AppColors.firstColor,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 12),
                itemCount: state.numbers.length,
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
