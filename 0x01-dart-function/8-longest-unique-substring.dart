String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return "";
  }

  // Map pour mémoriser la dernière position de chaque caractère
  final Map<String, int> lastIndex = {};

  int start = 0;       // début de la fenêtre courante
  int bestStart = 0;   // début de la meilleure sous-chaîne
  int bestLen = 0;     // longueur de la meilleure sous-chaîne

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];

    // Si le caractère a déjà été vu dans la fenêtre courante,
    // on déplace le début de la fenêtre après sa dernière occurrence.
    if (lastIndex.containsKey(ch) && lastIndex[ch]! >= start) {
      start = lastIndex[ch]! + 1;
    }

    lastIndex[ch] = i;

    int currentLen = i - start + 1;
    // On met à jour seulement si on trouve une sous-chaîne PLUS longue.
    // En cas d'égalité, on garde la première (pas de >=).
    if (currentLen > bestLen) {
      bestLen = currentLen;
      bestStart = start;
    }
  }

  return str.substring(bestStart, bestStart + bestLen);
}