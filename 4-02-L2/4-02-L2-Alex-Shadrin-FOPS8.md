Задание 1.
Адрес канального уровня – MAC адрес – это 6 байт, первые 3 из которых называются OUI – Organizationally Unique Identifier или уникальный идентификатор организации.

Какому производителю принадлежит MAC 38:f9:d3:55:55:79?

Приведите ответ в свободной форме.

OUI    38-F9-D3

MAC range    38-F9-D3-00-00-00 - 38-F9-D3-FF-FF-FF

Company    Apple, Inc.

Задание 2.
Какой ключ нужно добавить в tcpdump, чтобы он начал выводить не только заголовки, но и содержимое фреймов в:

текстовом виде;

-x либо -xx (с заголовками)

текстовом и шестнадцатиричном виде?

--X либо --XX (с заголовками)

Задание 3.
Можно ли изменить MAC-адрес вашего Linux сервера?

Можно

Если да, то какой командой, если нет - почему?

1 способ, будет работать до перезагрузки:

sudo ip link set down dev <interface>
sudo ip link set dev <interface> address <XX:XX:XX:XX:XX:XX>
sudo ip link set up dev <interface> 

2 способ - воспользоваться утилитой macchanger, через нее можно сменить mac на постоянный, рандомный, рандомный того же производителя, вернуть исходный

macchanger -r - меняет на ранодмный

Для чего может понадобиться изменять MAC-адреса?

Например скрыть свой реальный адрес или обойти фильтр ма вдресов

Задание 4.
Каким образом можно зафиксировать соответствие IP-MAC и избежать установления этого соответствия по протоколу ARP?
Каковы положительные и отрицательные стороны такой настройки?

Можно добавить статическую запись в arp таблицу.

+: Протокол ARP является незащищённым, использование статических записей в arp таблицах позволяет защититься от атак типа arp-spoofing'а, т.к. статическая запись в arp таблице приоритетней динамической; меньше широковещательных запросов с целью установить соотвествие ip-mac

-: при любом изменении соотвествия mac-ip придется вручную корректировать таблицы

Задание 5.
Какой механизм проверки на наличие ошибок используется в Ethernet?
Приведите ответ в свободной форме.

В последнее поле кадра Ethernet помещается контрольная сумма. На принимающем устройстве она вычисляется заново и сравнивается с той, что пришла в кадре.
Если они не совпадают - кадр считается испорченым. 

Задание 6.
Как вы думаете, почему серверы в большинстве случаев подключают проводом, а не через WiFi?
Приведите как можно больше доводов в свободной форме.

- надежность
- скорость
- безопасность
- провод более устойчив к помехам



Задание 7.
Сколько доменов коллизий изображено на рисунке?

Примечение:

нижнее устройство - хаб, работающий на 1-м уровне, которые переадресовывает всё, что приходит во все порты сразу, ничего не анализируя;
в центре - коммутатор, работает на 2-м уровне.
круглое устройство - маршрутизатор, работает на 3-м уровне модели OSI.

4 домена коллизий

![](https://github.com/AleksShadrin/netology/blob/main/4-02-L2/7.png)

Задание 8.
Сколько широковещательных доменов изображено на рисунке?

Примечение: круглое устройство - маршрутизатор, работает на 3-м уровне модели OSI.


3 широковещательных домена

![](https://github.com/AleksShadrin/netology/blob/main/4-02-L2/8.png)