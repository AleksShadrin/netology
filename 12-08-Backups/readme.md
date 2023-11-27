# Домашнее задание к занятию «Резервное копирование баз данных» - Шадрин Алексей

### Задание 1. Резервное копирование

### Кейс
Финансовая компания решила увеличить надёжность работы баз данных и их резервного копирования. 

Необходимо описать, какие варианты резервного копирования подходят в случаях: 

1.1. Необходимо восстанавливать данные в полном объёме за предыдущий день.

*В данной ситуации подошел бы вариант дифференциального бэкапа - например делать фул баэкап 1 раз в неделю и ежедневный дифференциальный бэкап.*
*Из плюсов данного вида бэкапов - занимает меньше места и выполняется быстрее, чем полный бэкап. Не зависит от целлостности блоков в цепочке, как при инкрементном*
*Для восстановления понадобится лишь полный бэкап, и последний дифференциальный бэкап*

1.2. Необходимо восстанавливать данные за час до предполагаемой поломки.

*В данной ситуации подошел бы инкрементный бэкап внутри дня, с расписанием например каждый час. Выполняется быстрее и занимает меньше места, чем полный*  
*Содержит данные только за период, за который делается бэкап - т.е. в этом случае будет содержать данные за час, в отличии от дифференциального бэкапа, в котором при том же расписании накопятся данные за весь день*

---

### Задание 2. PostgreSQL

2.1. С помощью официальной документации приведите пример команды резервирования данных и восстановления БД (pgdump/pgrestore).

#### pg_dump
*pg_dump — это программа для создания резервных копий базы данных Postgres. Она создаёт целостные копии, даже если база параллельно используется. Программа pg_dump не препятствует доступу других пользователей к базе данных (ни для чтения, ни для записи)*
*Синтаксис: pg_dump [параметр-подключения...] [параметр...] [имя_бд]*

#### pg_restore
*Утилита pg_restore предназначена для восстановления базы данных Postgres из архива, созданного командой pg_dump в любом из не текстовых форматов. Она выполняет команды, необходимые для восстановления того состояния базы данных, в котором база была сохранена. При наличии файлов архивов, pg_restore может восстанавливать данные избирательно или даже переупорядочить объекты перед восстановлением. Заметьте, что разработанный для файлов архива формат не привязан к архитектуре.*
*pg_restore [параметр-подключения...] [параметр...] [имя_файла]*

---

### Задание 3. MySQL

3.1. С помощью официальной документации приведите пример команды инкрементного резервного копирования базы данных MySQL. 

*MySQL поддерживает инерементные бэкапы через бинарный лог. Файлы двоичного журнала предоставляют информацию, необходимую для репликации изменений в базе данных, внесенных после момента выполнения резервного копировани Для того чтобы сделать инкрементный бэкап - нужно сперва сделать полный командой mysqldump, а затем выполнить ротацию двоичного журнала с помощью FLUSH LOGS. После этого скопировать в место полного бэкапа все бинарные журналы, начиная с момента последнего полного или инкрементального резервного копирования и заканчивая предпоследним. Эти файлы и будут инкрементным бэкапом*

*Для восстановления БД из инкрементного бэкапа сперва восстанавливаем полный, а затем применяем события из бинарного лога командой mysqlbinlog. Применение событий из двоичного журнала приводит к повторному выполнению изменений данных, которые они представляют. Это позволяет восстановить изменения данных за заданный промежуток времени.*