import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:graft_coin/graft_coin_structs.dart';
import 'package:graft_coin/src/exceptions/creation_transaction_exception.dart';
import 'package:graft_coin/src/graft_api.dart';
import 'package:graft_coin/src/structs/ut8_box.dart';
import 'package:graft_coin/src/util/signatures.dart';
import 'package:graft_coin/src/util/types.dart';

final stakeCountNative = graftApi
    .lookup<NativeFunction<stake_count>>('stake_count')
    .asFunction<StakeCount>();

final stakeGetAllNative = graftApi
    .lookup<NativeFunction<stake_get_all>>('stake_get_all')
    .asFunction<StakeGetAll>();

final stakeCreateNative = graftApi
    .lookup<NativeFunction<stake_create>>('stake_create')
    .asFunction<StakeCreate>();

final canRequestUnstakeNative = graftApi
    .lookup<NativeFunction<can_request_unstake>>('can_request_stake_unlock')
    .asFunction<CanRequestUnstake>();

final submitStakeUnlockNative = graftApi
    .lookup<NativeFunction<submit_stake_unlock>>('submit_stake_unlock')
    .asFunction<SubmitStakeUnlock>();

PendingTransactionDescription createStakeSync(
    String serviceNodeKey, String amount) {
  final serviceNodeKeyPointer = Utf8.toUtf8(serviceNodeKey);
  final amountPointer = amount != null ? Utf8.toUtf8(amount) : nullptr;
  final errorMessagePointer = allocate<Utf8Box>();
  final pendingTransactionRawPointer = allocate<PendingTransactionRaw>();
  final created = stakeCreateNative(serviceNodeKeyPointer, amountPointer,
          errorMessagePointer, pendingTransactionRawPointer) !=
      0;

  free(serviceNodeKeyPointer);

  if (amountPointer != nullptr) {
    free(amountPointer);
  }

  if (!created) {
    final message = errorMessagePointer.ref.getValue();
    free(errorMessagePointer);
    throw CreationTransactionException(message: message);
  }

  return PendingTransactionDescription(
      amount: pendingTransactionRawPointer.ref.amount,
      fee: pendingTransactionRawPointer.ref.fee,
      hash: pendingTransactionRawPointer.ref.getHash(),
      pointerAddress: pendingTransactionRawPointer.address);
}

PendingTransactionDescription submitStakeUnlockSync(String serviceNodeKey) {
  final serviceNodeKeyPointer = Utf8.toUtf8(serviceNodeKey);
  final errorMessagePointer = allocate<Utf8Box>();
  final pendingTransactionRawPointer = allocate<PendingTransactionRaw>();
  final created = submitStakeUnlockNative(serviceNodeKeyPointer,
          errorMessagePointer, pendingTransactionRawPointer) !=
      0;

  free(serviceNodeKeyPointer);

  if (!created) {
    final message = errorMessagePointer.ref.getValue();
    free(errorMessagePointer);
    throw CreationTransactionException(message: message);
  }

  return PendingTransactionDescription(
      amount: pendingTransactionRawPointer.ref.amount,
      fee: pendingTransactionRawPointer.ref.fee,
      hash: pendingTransactionRawPointer.ref.getHash(),
      pointerAddress: pendingTransactionRawPointer.address);
}
