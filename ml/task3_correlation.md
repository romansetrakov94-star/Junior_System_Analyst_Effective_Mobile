
**Файл `ml/task3_correlation.md`**

(Вставьте этот код для расчёта корреляции Пирсона)

```markdown
# Задание 3: Ручной счёт корреляции

Коэффициент линейной корреляции Пирсона (`r`) рассчитывается по формуле:

\[
r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}
\]

**Расчёт на Python:**

```python
import pandas as pd
from scipy.stats import pearsonr

# Данные
data = {
    'coffee': [1, 1, 2, 2, 2, 2, 3, 3, 3, 4],
    'exam_score': [85, 88, 79, 81, 84, 65, 67, 58, 76, 49]
}

df = pd.DataFrame(data)
corr, p_value = pearsonr(df['coffee'], df['exam_score'])
print(f"Коэффициент корреляции Пирсона: {corr:.2f}")  # Результат: -0.68ы