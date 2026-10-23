# HR Analytics — Initial Findings

## Project objective
Analyse employee attrition and explore how it varies by department, overtime status and monthly income using Python and Pandas.

## Finding 1: Attrition by department
- Sales: 20.63%
- Human Resources: 19.05%
- Research & Development: 13.84%

Sales has the highest attrition rate among the three departments.

## Finding 2: Attrition and overtime
- Employees working overtime: 30.53% attrition
- Employees not working overtime: 10.44% attrition

The overtime group has a substantially higher attrition rate. This is an association, not proof that overtime causes employees to leave.

## Finding 3: Average monthly income by department
- Sales: 6,959.17
- Human Resources: 6,654.51
- Research & Development: 6,281.25

Sales has the highest average monthly income, while Research & Development has the lowest.

## Finding 4: Average monthly income by attrition status

| Department | Stayed (No) | Left (Yes) |
|---|---:|---:|
| Human Resources | 7,345.98 | 3,715.75 |
| Research & Development | 6,630.33 | 4,108.08 |
| Sales | 7,232.24 | 5,908.46 |

In each department, employees who left had a lower average monthly income than employees who stayed. Other factors may also explain this pattern.


## Finding 5: Attrition by job role

The highest number of departures occurred among:
- Laboratory Technicians: 62
- Sales Executives: 57
- Research Scientists: 47

These are departure counts, not attrition rates.

## Finding 6: Attrition rate by job role

| Job Role | Attrition Rate |
|---|---:|
| Sales Representative | 39.76% |
| Laboratory Technician | 23.94% |
| Human Resources | 23.08% |
| Sales Executive | 17.48% |
| Research Scientist | 16.10% |
| Manufacturing Director | 6.90% |
| Healthcare Representative | 6.87% |
| Manager | 4.90% |
| Research Director | 2.50% |

Sales Representatives had the highest attrition rate, while Research Directors had the lowest. HR should investigate possible contributing factors rather than assuming the job role itself causes attrition.

## Finding 7: Years at Company vs. Attrition

| Employee Status | Average Years at Company |
|---|---:|
| Stayed (No) | 7.37 |
| Left (Yes) | 5.13 |

Employees who left had a lower average tenure (5.13 years) than employees who stayed (7.37 years), a difference of 2.24 years.

**Recommendation:** Investigate whether early-tenure employees face challenges related to onboarding, role expectations, workload or manager support. These averages show an association and do not establish the cause of attrition.

## Finding 8: Attrition by tenure group

| Years at Company | Employees | Attrition Rate |
|---|---:|---:|
| 0–2 years | 342 | 29.82% |
| 3–5 years | 434 | 13.82% |
| 6+ years | 694 | 10.81% |

Employees with 0–2 years of tenure have the highest attrition rate. The rate is considerably lower among employees with longer tenure.

**Recommendation:** Investigate the early employee experience, including onboarding, expectations, workload, job satisfaction and manager support. Further analysis is required before attributing attrition to any specific factor.

## Finding 9: Job Satisfaction vs. Attrition

| Job Satisfaction Score | Attrition Rate |
|---|---:|
| 1 | 22.84% |
| 2 | 16.43% |
| 3 | 16.52% |
| 4 | 11.33% |

Employees with a job satisfaction score of 1 had the highest attrition rate (22.84%), while those with a score of 4 had the lowest (11.33%).

**Recommendation:** Investigate the experiences of employees reporting low job satisfaction, including workload, management support, recognition and career development. These results show an association, not proof of causation.

## Finding 10: Number of Departures by Job Satisfaction

| Job Satisfaction Score | Employees Who Left |
|---|---:|
| 1 | 66 |
| 2 | 46 |
| 3 | 73 |
| 4 | 52 |

Employees with a satisfaction score of 3 had the largest number of departures (73). However, employees with a score of 1 had the highest attrition rate (22.84%). Departure counts and attrition rates provide different perspectives because group sizes vary.

**Recommendation:** Consider both employee counts and attrition rates when prioritising HR investigations.
