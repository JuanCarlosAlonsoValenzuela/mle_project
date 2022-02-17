# MLE project
Creado por:
- Juan Carlos Alonso Valenzuela
- Vanessa Pradas Fernández
# Recursos desplegados
- **API:** https://ree-api-mle.herokuapp.com/predict
- **Dashboard de TensorBoard:** https://tensorboard.dev/experiment/dtXC13L5QyCRU9dADjlV4w/
# Contenido
Este repositorio contiene los siguientes archivos y directorios:
- **REE/visualization.ipynb:** Contiene todas las operaciones de análisis y visualización realizadas sobre el dataset de la REE (Red Eléctrica Española).
- **dataset:** Dataset inicial utilizado (fue descartado por su simplicidad).
- **extracted_data:** Datos extraídos de la API de la REE.
- **logs:** Logs de TensorBoard de todos los modelos. Consultar la memoria para ver cómo visualizar estos logs en local.
- **saved_model:** Modelo que ha sido empleado para el despliegue como API.
- **API logic:** Notebook con las operaciones utilizadas en la API web.
- **AR Model Optimization:** Optimización del modelo autorregresivo mediante TensorBoard.
- **Baselines:** Resultados y representación gráfica del rendimiento de los Baselines.
- **CNN Optimization:** Optimización de la CNN mediante TensorBoard.
- **Linear Model Optimization:** Optimización del modelo lineal mediante TensorBoard.
- **Preprocesado:** Operaciones de análisis y preprocesado básicas sobre el dataset inicial.
- **RNN Optimization:** Optimización de la Red Neuronal Recurrente mediante TensorBoard.
- **TensorFlow_first_dataset:** Implementación de distintos modelos predictivos en el primer dataset.
- **api_functions:** Clase de Python con todas las funciones de la API.
- **codigo_api:** Archivo comprimido con todo el contenido de la API que ha sido desplegada.
- **export_model:** Notebook usado para exportar un modelo, generando el contenido de la carpeta saved_model.
- **extract_csv, generateDataset y merge_hourly_csv:** Scripts de python utilizados para extraer el dataset de la REE, utilizando para ello la API de la Red Eléctrica Española.
- **visualization_first_dataset:** Notebook con técnicas de visualización aplicadas sobre el primer dataset.
- **window_generator:** Clase de python con toda la lógica y funciones necesarias para trabajar con ventanas de tiempo (utilizada por todos los modelos predictivos). 
