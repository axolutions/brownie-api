## Tasks

* Attributes: 

```bash
[1] pry(main)> Task.column_names
=> ["id", "title", "coins", "user_id", "created_at", "updated_at", "status"]

[3] pry(main)> Task.statuses
=> {"todo"=>0, "in_progress"=>1, "done"=>2}
```

* Index

```bash
curl --get "http://localhost:4000/tasks" | jq .
```

* Create

```bash
curl -X POST "http://localhost:4000/tasks" \
  -H "Content-Type: application/json" \
  -d '{"status": "done", "user_id": "2"}' | jq .
```

* Show

```bash
curl --get "http://localhost:4000/tasks/1" | jq .
```

* Update

```bash
curl -X PUT "http://localhost:4000/tasks/1" \
  -H "Content-Type: application/json" \
  -d '{"status": "done", "user_id": "2"}' | jq .
```
* Delete

```bash
curl -X DELETE "http://localhost:4000/tasks/1" \
  -H "Content-Type: application/json" | jq .
```

