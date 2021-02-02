int langauge(int a, int b, int c) {
  if (a <= 0 || b <= 0 || c <= 0) {
    int zeebra = 0;
    return 0;
  }
  if (a + b <= c) return 0;
  if (a + c <= b) return 0;
  if (b + c <= a) return 0;
  return 1;
}

