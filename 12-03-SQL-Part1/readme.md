# Домашнее задание к занятию «SQL. Часть 1» - Шадрин Алексей
---

Задание можно выполнить как в любом IDE, так и в командной строке.

### Задание 1

Получите уникальные названия районов из таблицы с адресами, которые начинаются на “K” и заканчиваются на “a” и не содержат пробелов.

![](https://github.com/AleksShadrin/netology/blob/main/12-03-SQL-Part1/1.png)

### Задание 2

Получите из таблицы платежей за прокат фильмов информацию по платежам, которые выполнялись в промежуток с 15 июня 2005 года по 18 июня 2005 года **включительно** и стоимость которых превышает 10.00.

![](https://github.com/AleksShadrin/netology/blob/main/12-03-SQL-Part1/2.png)

### Задание 3

Получите последние пять аренд фильмов.

![](https://github.com/AleksShadrin/netology/blob/main/12-03-SQL-Part1/3.png)

### Задание 4

Одним запросом получите активных покупателей, имена которых Kelly или Willie. 

Сформируйте вывод в результат таким образом:
- все буквы в фамилии и имени из верхнего регистра переведите в нижний регистр,
- замените буквы 'll' в именах на 'pp'.

![](https://github.com/AleksShadrin/netology/blob/main/12-03-SQL-Part1/4.png)

## Дополнительные задания (со звёздочкой*)
Эти задания дополнительные, то есть не обязательные к выполнению, и никак не повлияют на получение вами зачёта по этому домашнему заданию. Вы можете их выполнить, если хотите глубже шире разобраться в материале.

### Задание 5*

Выведите Email каждого покупателя, разделив значение Email на две отдельных колонки: в первой колонке должно быть значение, указанное до @, во второй — значение, указанное после @.

![](https://github.com/AleksShadrin/netology/blob/main/12-03-SQL-Part1/5.png)

### Задание 6*

Доработайте запрос из предыдущего задания, скорректируйте значения в новых колонках: первая буква должна быть заглавной, остальные — строчными.

```sql
SELECT 
    CONCAT(UPPER(SUBSTR(email, 1, 1)),LOWER(SUBSTR(email, 1, POSITION('@' in email)-1))) AS post, 
    CONCAT(UPPER(SUBSTR(email, POSITION('@' in email)+1,1)),LOWER(SUBSTR(email,POSITION('@' in email)+2, CHAR_LENGTH(EMAIL)))) AS domain 
    FROM customer 
    LIMIT 20;
```

![](https://github.com/AleksShadrin/netology/blob/main/12-03-SQL-Part1/6.png)