import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawer_bloc.freezed.dart';

@freezed
abstract class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.open() = Open;
  const factory DrawerEvent.close() = Close;
}

@freezed
abstract class DrawerState with _$DrawerState {
  const factory DrawerState.opened() = Opened;
  const factory DrawerState.closed() = Closed;
}

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const DrawerState.closed()) {
    on<Open>(openedDrawer);
    on<Close>(closedDrawer);
  }

  Future<void> openedDrawer(Open event, Emitter<DrawerState> emit) async {
    emit(DrawerState.opened());
  }

  Future<void> closedDrawer(Close event, Emitter<DrawerState> emit) async {
    emit(DrawerState.closed());
  }
}