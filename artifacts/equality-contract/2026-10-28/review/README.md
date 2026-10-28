# Обновлённое ревью Claude

Снимок commit 95fd7e2b960557df87d7235d60b2bb248437b1e0 относительно e30e2aa; включает прежние упрощения
и дополнительное разделение nullable views / raw equal. Задание в TASK.md,
входы и SHA-256 в snapshot/ и inputs.json. Предыдущий snapshot не изменялся.

Запуск из корня клона ветки:

```sh
./run-claude-smid-2-simplification-review.sh
```

Прежний внешний скрипт в `/home/meil/devel/linux/stomptalk-meta/` также запускает
этот актуальный пакет. `--check` проверяет снимок без вызова Claude.

Runner read-only, JSONL, 1200 секунд. Для каждой попытки создаётся claude-<UTC>/;
review.md появляется только после успешного ответа. Прямой запуск предыдущего
пакета завершился EAI_AGAIN; этот пакет подготовлен для запуска пользователем.
