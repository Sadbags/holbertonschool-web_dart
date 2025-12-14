bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  int n = s.length;
  String best = "none";
  int bestLen = 0;

  for (int i = 0; i < n; i++) {
    for (int j = i + 3; j <= n; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub)) {
        int len = sub.length;
        if (len > bestLen) {
          bestLen = len;
          best = sub;
        }
      }
    }
  }

  return best;
}
