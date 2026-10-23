import pandas as pd

df = pd.read_csv('data/raw/HR-Employee-Attrition.csv.csv')
#print(df.head())
#print(df.shape)
#print(df)
#print(df.shape)
#print(df.columns)
#print(df.info())

print(df['Attrition'].value_counts())

print((df['Attrition']=='Yes').sum())
print(len(df))

attrition_count = (df['Attrition']=='Yes').sum()
total_employees = len(df)

attrition_rate = (attrition_count / total_employees) * 100

print('Employees who left:', attrition_count)
print('Total employees:', total_employees)
print('Attrition Rate:', round(attrition_rate, 2), "%")

#print(df.groupby('Department').count())

df_left = df[df['Attrition']=='Yes']
print(df_left.groupby('Department').size())

print(df.groupby('Department').size())

print((df['Attrition'] == 'Yes').groupby(df['Department']).mean() * 100)

print(df['OverTime'].value_counts())

print((df['Attrition']=='Yes').groupby(df['OverTime']).mean() * 100)

monthly_grouped = df.groupby('Department')['MonthlyIncome'].mean()
print(monthly_grouped)

avgmonth_grouped = df.groupby(['Department', 'Attrition'])['MonthlyIncome'].mean().round(2)
print(avgmonth_grouped)

# Employees who left, by job role
df_left = df[df['Attrition']=='Yes']
print(df_left.groupby('JobRole').size().sort_values(ascending=False))

#print(df['JobRole'].head(10))
#print(df['JobRole'].unique())

attrition_jobrole = ((df['Attrition']=='Yes').groupby(df['JobRole']).mean()*100).round(2).sort_values(ascending=False)
print(attrition_jobrole)

print(df['YearsAtCompany'].describe())

yearsat_attri = df.groupby('Attrition')['YearsAtCompany'].mean().round(2)
print(yearsat_attri)

df['TenureGroup'] = pd.cut(df['YearsAtCompany'], bins=[-1, 2, 5, float('inf')], labels=['0-2 years', '3-5 years', '6+ years'])
print(df[['YearsAtCompany', 'TenureGroup']].head(10))
print(df['TenureGroup'].value_counts().sort_index())

attriton_by_tenure = ((df['Attrition']=='Yes').groupby(df['TenureGroup']).mean() * 100).round(2)
print(attriton_by_tenure)

print(df['JobSatisfaction'].value_counts().sort_index())

cal_attriton_js = ((df['Attrition'] == 'Yes').groupby(df['JobSatisfaction']).mean() * 100).round(2)
print(cal_attriton_js)

count_attri_js = df[df['Attrition'] == 'Yes'].groupby('JobSatisfaction').size()
print(count_attri_js)

#-------------- Pratice---------------------------

df_overtime = df[df['OverTime'] == 'Yes']

overtime_cal = ((df_overtime['Attrition'] == 'Yes').groupby(df_overtime['Department']).mean() * 100).round(2).sort_values(ascending=False)
print(overtime_cal)