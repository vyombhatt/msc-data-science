The submission contains the following files:
1. The final thesis report
2. The turnitin plagiarism report - the current view report includes the entire thesis followed by the plagiarism scorecard at the end of the pdf
3. The 2 jupyter notebook files with the project code
4. Datasets

Dataset:
The base dataset for this study is really large (over 300MB), hence is not attached in the dataset zip file.
Sharing the G-drive link to the base datastet here: https://drive.google.com/drive/folders/1HpdqO-C2iyJ676isjPSJslD64zsSK8ce?usp=sharing
Instead, the dataset folder contains the cleaned version of the original dataset (the final output of the first code file)

The jupyter notebooks:
The project code is present in 2 different notebooks, that need to be executed in a specific order.

The first code file: "1. Reading the Clicks (Open-Source) Data.ipynb"
This file contains the code that reads the base dataset, and performs all the necessary cleaning and pre-processing steps on the file.
The code ends with a cleaned version of the dataset that is saved as an intermediary file called "filtered_dataset.csv"

The second code file: "2. EDA, Modelling.ipynb"
This file loads the "filtered_dataset.csv" file that was created in the previous code file and executes its scripts on that file
The code in this file includes the following aspects of the project:
- EDA on the tabular dataset
- Transforming the tabular data to graph structure
- EDA on the graph structure
- Node2Vec modelling to generate embeddings
- Dimensionality reduction on the embeddings generated using PCA and t-SNE
- Clustering the final data points generated using 3 techniqeus (k-means, hierarchical and DBSCAN)
- Implementaion of the custom scoring criterion explained in the thesis report
- Evaluating the different sets of models to identify the best performin set
- All the necessary visualizations of the results to achieve the objectives

