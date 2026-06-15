<<<<<<< HEAD
SELECT 
    id,
    scores,
    ROW_NUMBER() OVER (ORDER BY scores DESC) AS position
FROM examination
ORDER BY position;
=======
	sql<br>-- Задание 1: Абитуриенты (создание колонки с позицией в рейтинге)<br>-- Используем оконную функцию ROW_NUMBER() для нумерации по убыванию баллов<br><br>SELECT <br> id,<br> scores,<br> ROW_NUMBER() OVER (ORDER BY scores DESC) AS position<br>FROM examination<br>ORDER BY position;<br>
>>>>>>> 6072b97515edcb726b5ff070f5e8b80f13f462a2
