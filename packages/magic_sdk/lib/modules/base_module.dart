import 'dart:async';

import 'package:magic_sdk/provider/rpc_provider.dart';
import 'package:magic_sdk/provider/types/rpc_request.dart';

class BaseModule {
  late RpcProvider provider;

  BaseModule(this.provider);

  /// Returns <object> here to handle cases when results are dynamic
  Future<Object> sendToProvider({required String method, dynamic params}) async {

    RPCRequest request = RPCRequest(method: method, params: [params]);
    return provider.send(request: request, completer: Completer<Object>());
  }
}
