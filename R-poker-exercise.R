# Ej vectores:
#Ganancias: 
#lunes: 140
#martes: -50
#miecoles: 20
#jueves:-120
#viernes: 240
# Crea un vector con las ganancias en el poker de lunes a viernes
poker_vector <- c(140, -50, 20, -120, 240)

# Crea un vector con las ganancias en la ruleta de lunes a viernes
#Ganancias: 
#lunes: -24
#martes: -50
#miecoles: -100
#jueves:-350
#viernes: 10
roulette_vector <-  c(-24, -50, 100, -350, 10)

# Crea un vector con los días de la semana y asígnalo como nombre a los elementos de los vectores anteriores.
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days
names(roulette_vector) <- days

# Calcula el total de ganancias diarias.
total_daily <- poker_vector + roulette_vector

# Calcula el total de ganancias en el póker.
total_poker <- sum(poker_vector)

# Calcula el total de ganancias en la ruleta.
total_roulette <- sum(roulette_vector)

# Calcula el total de la semana.
total_week <- total_poker + total_roulette

# Selecciona las ganancias del miÃ©rcoles en el pÃ³ker.
poker_wednesday <- poker_vector[3]
poker_wednesday <- poker_vector["Wednesday"]

# Selecciona las ganancias del martes, miÃ©rcoles y jueves en el pÃ³ker.
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek <- poker_vector[c("Tuesday", "Wednesday", "Thursday")]

# Selecciona las ganancias desde el martes al viernes en la ruleta.
roulette_selection_vector <- roulette_vector[2:5]

#si quiero añadir el cabecero a cada valor:
names(roulette_selection_vector) <- days[2:5]
roulette_selection_vector

# Calcula la media de ganancias en el póker el lunes, martes y miércoles.

average <- mean(poker_vector[c(1:3)])
average <- mean(poker_vector[c("Monday", "Tuesday", "Wednesday")])

# ¿Que días de la semana hubo ganancias al póker?
selection_vector <- poker_vector > 0 #siempre devuelve booleano

# Haz la selección anterior sobre el vector con los datos del póker.
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days <- poker_vector[poker_vector > 0]
#si lo quiero ver más visual
names(poker_winning_days) <- days[poker_vector > 0]
poker_winning_days

# Haz lo mismo sobre el vector con los datos de la ruleta.
roulette_winning_days <- roulette_vector[roulette_vector > 0]