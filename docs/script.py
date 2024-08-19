import numpy as np
import pandas as pd
import matlabplot.pyplot as plt

# stations
df=pd.read_csv('allstation2021_2023.txt',sep='\s+',header=None)
adjusted_df = df.iloc[:, [5, 4, 2, 0]]

IA_data = adjusted_df[adjusted_df.iloc[:, 3] == 'IA']
IA_data.to_csv('IA_stations.csv', index=False, header=None, sep=' ')

# 获取不同network
networks_list = df.iloc[:, 0].unique()


# events 
df=pd.read_csv('allevents2021_2023.txt',sep='\s+',header=None)
adjusted_df = df.iloc[:, [2, 1, 3, 4]]
adjusted_df.to_csv('events.csv', sep=' ', index=False, header=None)
