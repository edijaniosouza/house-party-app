import 'package:house_party/http/interceptors/logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_client_with_interceptor.dart';

//URL das requisições
const String url = 'http://192.168.1.107:8080';

final Client client = HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);
