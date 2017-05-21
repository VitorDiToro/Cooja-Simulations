# -*- coding: utf-8 -*-
"""
Spyder Editor

Author: Vitor R. Di Toro.

"""



from pymobility.models.mobility import random_waypoint, random_walk, truncated_levy_walk, random_direction, gauss_markov
 
import matplotlib.pyplot as plt




'''
Define here the model to be used
'''

RANDOM_WAY_POINT = True
RANDOM_WALK = False
TRUNCATED_LEVY_WALK=False
RANDOM_DIRECTION = False
GAUSS_MARKOV = False

# number of nodes
nr_nodes = 10

# number of interactions
nr_steps = 10000

# initial time (in seconds)
time = 0.0

# time interval (in seconds)
steptime = 0.87

# simulation area (units)
MAX_X, MAX_Y = 100, 100

# max and min velocity
MIN_V, MAX_V = 0.1, 1.

# max waiting time
MAX_WT = 1.0

fig = plt.figure()
ax = fig.add_subplot(111)
plt.ion() 


## Random Walk model
if  RANDOM_WALK:
    mob_model = random_walk(nr_nodes, dimensions=(MAX_X, MAX_Y))
elif TRUNCATED_LEVY_WALK:
## Truncated Levy Walk model
    mob_model = truncated_levy_walk(nr_nodes, dimensions=(MAX_X, MAX_Y))
elif RANDOM_DIRECTION:
## Random Direction model
    mob_model = random_direction(nr_nodes, dimensions=(MAX_X, MAX_Y))
elif GAUSS_MARKOV:
## Gauss-Markov model
    mob_model = gauss_markov(nr_nodes, dimensions=(MAX_X, MAX_Y), alpha=0.99)
else:
    mob_model = random_waypoint(nr_nodes, dimensions=(MAX_X, MAX_Y), velocity=(MIN_V, MAX_V), wt_max=MAX_WT)




'''
Open file in write mode
'''
file = open("positions.dat","w")
file.write("#node time(s) x y\n")       #Header
file.write("0 0.0 50 50\n")             #First Node -> Fixed node




#for positions in rw:
for step in range(nr_steps):

    positions = next(mob_model)
   
    for i in range(nr_nodes):
        file.write(str(i+1)+" ")             #Node
        file.write(str(time)+" ")            #Time(s)
        file.write(str(positions[i][0])+" ") #X position
        file.write(str(positions[i][1])+" ") #Y position
        file.write('\n')                     #Break line
    
    time = time + steptime                   #Time incrment

    step+=1
    ax.scatter(positions[:,0], positions[:,1], c='r', marker='o')

file.close()
