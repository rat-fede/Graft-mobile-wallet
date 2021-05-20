import 'dart:ffi';
import 'dart:io';

final DynamicLibrary graftApi = Platform.isAndroid
    ? DynamicLibrary.open('libgraft_coin.so')
    : DynamicLibrary.process();
