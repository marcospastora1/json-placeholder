import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/response.model.dart';
import 'package:get/get.dart' hide Response;

class Connect implements IHttpConnect {
  final GetConnect _connect;
  const Connect({required GetConnect connect}) : _connect = connect;

  @override
  Future<Response<T>> get<T>(
    String url, {
    required T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.get(url, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> post<T>(
    String url,
    Map<String, dynamic> body, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.post(url, body, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> patch<T>(
    String url,
    Map<String, dynamic> body, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.patch(url, body, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> delete<T>(
    String url, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.delete(url, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> put<T>(
    String url,
    Map<String, dynamic> body, {
    T Function(dynamic)? decoder,
  }) async {
    final response = await _connect.put(url, body, decoder: decoder);
    final obj = Response(
      statusCode: response.statusCode!,
      payload: response.body,
    );
    return obj;
  }

  @override
  Future<Response<T>> postMultipartFile<T>(
    String url,
    form, {
    required T Function(dynamic p1) decoder,
  }) {
    throw UnimplementedError();
    //    if (_dioConnect != null) {
    //     if (form is FormData) {
    //       final response = await _dioConnect!.post(
    //         url,
    //         data: form,
    //       );

    //       verifyResponse(statusText: response.statusMessage);

    //       final obj = Response<T>(
    //         statusCode: response.statusCode!,
    //         payload: decoder.call(response.data),
    //       );

    //       return obj;
    //     }

    //     throw DefaultException(message: 'Form é necessário ser um FormData');
    //   }

    //   throw DefaultException(message: 'Dio não instanciado');
    // }
  }
}
