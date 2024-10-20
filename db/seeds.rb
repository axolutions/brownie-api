### Tasks 

Task.create!(
  title: "Comprar leite",
  coins: 2
)
Task.create!(
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


