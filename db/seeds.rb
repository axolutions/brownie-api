## Cleaning all entities
UserTask.delete_all
Task.delete_all
User.delete_all

### Tasks 

Task.create!(
  id: 1,
  title: "Comprar leite",
  coins: 2
)
Task.create!(
  id: 2,
  title: "Comprar pao",
  coins: 3
)
Task.create!(
  title: "Comprar açucar",
  coins: 2
)
Task.create!(
  title: "Comprar pêra",
  coins: 7
)
Task.create!(
  title: "Comprar amendoa",
  coins: 5
)
Task.create!(
  title: "Comprar lentilha",
  coins: 3
)

## Criar users

murileonsio = User.create!(
  email: "murileonsio@gmail.com",
  name: "Murileonsio",
)

alveta = User.create!(
  email: "alveta@gmail.com",
  name: "Alveta",
)

## Atrbuindo tasks a users

UserTask.create!(
  task: Task.find(1),
  user: murileonsio
)

UserTask.create!(
  task: Task.find(2),
  user: alveta
)


## Creating users coins

murileonsio.coins = 2205
alveta.coins = 1803

murileonsio.save
alveta.save