import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'on_boarding_current_page_state.dart';

class OnBoardingCurrentPageCubit extends Cubit<OnBoardingCurrentPageState> {
  OnBoardingCurrentPageCubit() : super(OnBoardingCurrentPageInitial());
  final PageController pageController = PageController();
  int currentPage = 0 ;
  getCurrentPageViewIndex(c){
    currentPage=c;
    // print(currentPage);
    emit(ChangePageCounterState());
  }
}
