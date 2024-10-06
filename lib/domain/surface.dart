enum SurfaceType {
  km,
  m,
  h,
}

class Surface {
  final double amount;
  final SurfaceType type;

  Surface({required this.amount, required this.type});
}
