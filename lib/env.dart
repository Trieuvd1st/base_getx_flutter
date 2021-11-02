import 'package:meta/meta.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  /// The backend server.
  final String domain;
  final BuildFlavor flavor;
  final String protocol;

  BuildEnvironment._init({
    this.flavor,
    this.protocol,
    this.domain,
  });

  /// Sets up the top-level [env] getter on the first call only.
  static void init({@required flavor, @required protocol, @required domain}) =>
      _env ??= BuildEnvironment._init(
          flavor: flavor, protocol: protocol, domain: domain);
  static BuildEnvironment getInstace() {
    return _env;
  }
}
