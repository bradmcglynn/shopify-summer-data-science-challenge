def median_order_value():
    import pandas as pd
    
    df = pd.read_csv("2019 Winter Data Science Intern Challenge Data Set.csv")

    median_order = df["order_amount"].median()

    print(median_order)

median_order_value()
