# Домашнее задание к занятию 2 «Работа с Playbook» - Шадрин Алексей

## Основная часть

1. Подготовьте свой inventory-файл `prod.yml`.
2. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает [vector](https://vector.dev). Конфигурация vector должна деплоиться через template файл jinja2. От вас не требуется использовать все возможности шаблонизатора, просто вставьте стандартный конфиг в template файл. Информация по шаблонам по [ссылке](https://www.dmosk.ru/instruktions.php?object=ansible-nginx-install). не забудьте сделать handler на перезапуск vector в случае изменения конфигурации!
3. При создании tasks рекомендую использовать модули: `get_url`, `template`, `unarchive`, `file`.
4. Tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.
5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.

![](./files/1.png)

6. Попробуйте запустить playbook на этом окружении с флагом `--check`.

*На скриншоте результат запуска плейбука с флагом --check и параметром check-mode: false в таске Get clickhouse distrib. Запуск завершился ошибкой, т.к. таска Install clickhouse packages была запущена в чек мод, пакеты не были установлены и запускать было нечего.*

![](./files/2.png)

7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.

*Скриншот с изменениями*

![](./files/3.png)

8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.

*Скриншот, где видно, что изменений нет*

![](./files/4.png)

9. Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги. Пример качественной документации ansible playbook по [ссылке](https://github.com/opensearch-project/ansible-playbook). Так же приложите скриншоты выполнения заданий №5-8
10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-02-playbook` на фиксирующий коммит, в ответ предоставьте ссылку на него.

---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---