enum SurfaceType {
  km,
  m,
  h,
}

class Surface {
  final String id;
  final double amount;
  final SurfaceType type;

  Surface({required this.id, required this.amount, required this.type});

  double normalize() {
    double result = amount;

    if (type == SurfaceType.m) {
      result /= 1000;
      result *= 100;
    }
    
    if (type == SurfaceType.km) {
      result *= 100;
    }

    return result;
  }
}
