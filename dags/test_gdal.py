import datetime

from airflow import DAG
from airflow.operators.python import PythonOperator

def test_rasterio():
    import rasterio
    print(rasterio.__version__)



my_dag = DAG(
     dag_id="my_dag_name",
     start_date=datetime.datetime(2021, 1, 1),
     schedule=None,
 )

PythonOperator(task_id="task", dag=my_dag, python_callable=test_rasterio)