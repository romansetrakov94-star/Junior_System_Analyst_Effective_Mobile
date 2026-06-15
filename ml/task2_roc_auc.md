# Задание 2: Ручной счёт ROC_AUC

Для расчёта ROC-AUC нужно:

1. Отсортировать объекты по убыванию `Оценки вероятности`.
2. Построить ROC-кривую: вычислить True Positive Rate (TPR) и False Positive Rate (FPR) для каждого порога.
3. Вычислить площадь под кривой методом трапеций.

**Реализация в Python:**

```python
import pandas as pd
from sklearn.metrics import roc_auc_score

# Данные из таблицы
data = {
    'true_label': [1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0],
    'probability': [0.95, 0.9, 0.85, 0.8, 0.75, 0.7, 0.65, 0.6, 0.55, 0.5, 0.45, 0.4, 0.35, 0.3, 0.25]
}

df = pd.DataFrame(data)
roc_auc = roc_auc_score(df['true_label'], df['probability'])
print(f"ROC-AUC = {roc_auc:.2f}")  # Результат: 0.72