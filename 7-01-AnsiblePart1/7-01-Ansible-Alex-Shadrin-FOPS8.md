Задание 1
Ответьте на вопрос в свободной форме.
Какие преимущества даёт подход IAC?

При применении данного подхода отпадает необходимость в ручной настройке инфраструктуры. Как следствие ей становится проще управлять, настраивать, масштабировать.
Поднимаемая инфраструктура всегда идентична.

Задание 2
Выполните действия и приложите скриншоты действий.
Установите Ansible.

![](https://github.com/AleksShadrin/netology/blob/main/7-01-AnsiblePart1/3.png)

Настройте управляемые виртуальные машины, не меньше двух.
Создайте файл inventory. Предлагается использовать файл, размещённый в папке с проектом, а не файл inventory по умолчанию.

![](https://github.com/AleksShadrin/netology/blob/main/7-01-AnsiblePart1/1.png)

Проверьте доступность хостов с помощью модуля ping.

![](https://github.com/AleksShadrin/netology/blob/main/7-01-AnsiblePart1/2.png)

Задание 3
Ответьте на вопрос в свободной форме.
Какая разница между параметрами forks и serial?

Если число хостов превышает количество в параметре forks, то ansible будет выполнять задачу на всех хостах пока не выполнит, а потом перейдет к следующей задаче.
Если число хостов превышает количестов в параметре serial, то ansible сперва выполнит первую задачу на части хостов (сколько указано в serial), затем на этих же хостах выполнит 2ую задачу и т.д., затем вернется к первой задаче и т.д. пока не выполнит все задачи на всех хостах.

ащклы

Задание 4
В этом задании вы будете работать с Ad-hoc коммандами.
Выполните действия и приложите скриншоты запуска команд.

Установите на управляемых хостах любой пакет, которого нет.
![](https://github.com/AleksShadrin/netology/blob/main/7-01-AnsiblePart1/4.png)

Проверьте статус любого, присутствующего на управляемой машине, сервиса.
![](https://github.com/AleksShadrin/netology/blob/main/7-01-AnsiblePart1/5.png)

Создайте файл с содержимым «I like Linux» по пути /tmp/netology.txt.
![](https://github.com/AleksShadrin/netology/blob/main/7-01-AnsiblePart1/6.png)