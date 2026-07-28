# 🧬 Multimodal IVF Embryo Implantation Prediction Using Blastocyst Image Processing and Clinical Data Fusion

A multimodal machine learning framework for predicting **IVF embryo implantation success** by integrating **blastocyst image texture features** with **clinical IVF parameters**. The proposed system combines image processing, feature engineering, data fusion, and an optimized XGBoost classifier to provide accurate and interpretable implantation outcome prediction.

---

## 📌 Overview

Embryo implantation prediction is one of the most critical challenges in **In Vitro Fertilization (IVF)**. Conventional embryo selection relies heavily on manual morphological assessment, which is subjective and varies among embryologists.

This project introduces a multimodal machine learning pipeline that combines:

- 🖼️ Blastocyst microscopy image analysis
- 📊 Clinical IVF data
- 🤖 Machine learning-based prediction

The system extracts handcrafted texture features from embryo images using **Gray-Level Co-occurrence Matrix (GLCM)** and combines them with structured clinical features to improve implantation outcome prediction.

---

## 🎯 Objectives

- Develop a multimodal framework for IVF implantation prediction.
- Enhance blastocyst images using CLAHE.
- Extract discriminative texture features using GLCM.
- Integrate image-derived and clinical features.
- Handle class imbalance using SMOTE.
- Train and optimize an XGBoost classifier.
- Create a deployment-ready prediction pipeline for future FPGA implementation.

---

# 🏗️ Methodology

The complete workflow consists of the following stages:

```
Blastocyst Images
        │
        ▼
Image Preprocessing (CLAHE)
        │
        ▼
GLCM Texture Feature Extraction
        │
        ├────────────────────┐
        │                    │
        ▼                    ▼
Clinical IVF Data      Image Features
        │                    │
        └──────────┬─────────┘
                   ▼
           Feature Fusion
                   ▼
 Train / Validation / Test Split
                   ▼
           Feature Selection
                   ▼
               SMOTE
                   ▼
          StandardScaler
                   ▼
         Optimized XGBoost
                   ▼
     Threshold Optimization
                   ▼
      Implantation Prediction
```

---

# 📂 Dataset

The project utilizes two complementary datasets.

## Clinical Dataset

- **2,542 IVF clinical records**
- **36 clinical features**
- Female hormonal profile
- Male semen analysis
- Treatment cycle information

## Blastocyst Image Dataset

- **2,056 blastocyst microscopy images**
- Binary classes:
  - Pregnant
  - Non-Pregnant

### Final Fused Dataset

| Property | Value |
|----------|------:|
| Total Samples | 2,056 |
| Clinical Features | 36 |
| Image Features | 6 |
| Total Features | 42 |

---

# 🖼️ Image Preprocessing

Each blastocyst image undergoes the following preprocessing steps:

- Convert to grayscale
- Resize to **224 × 224 pixels**
- Contrast enhancement using **CLAHE (Contrast Limited Adaptive Histogram Equalization)**

CLAHE improves local contrast and enhances embryo texture visibility, enabling more robust texture feature extraction.

---

# 🔬 Texture Feature Extraction

Texture information is extracted using the **Gray-Level Co-occurrence Matrix (GLCM)**.

The following Haralick texture features are computed:

- Contrast
- Dissimilarity
- Homogeneity
- Energy
- Correlation
- Angular Second Moment (ASM)

These handcrafted descriptors provide interpretable morphological information while remaining computationally efficient.

---

# 📊 Clinical Data Preprocessing

Clinical records are processed using:

- Mean value imputation
- StandardScaler normalization
- Feature cleaning
- English column translation

The processed clinical features are then merged with the extracted image features to create a unified multimodal feature representation.

---

# 🔗 Feature Fusion

The final feature representation consists of:

```
36 Clinical Features
        +
6 GLCM Texture Features
        =
42 Features
```

This multimodal representation enables the model to learn relationships between embryo morphology and patient clinical characteristics.

---

# ⚖️ Handling Class Imbalance

IVF datasets naturally contain fewer successful implantation cases.

To improve model performance, **Synthetic Minority Oversampling Technique (SMOTE)** is applied exclusively to the training dataset, producing a balanced class distribution before model training.

---

# 🤖 Machine Learning Model

The prediction model is based on **Extreme Gradient Boosting (XGBoost)**.

### Hyperparameters

| Parameter | Value |
|-----------|------:|
| n_estimators | 400 |
| learning_rate | 0.03 |
| max_depth | 4 |
| min_child_weight | 3 |
| subsample | 0.85 |
| colsample_bytree | 0.80 |
| gamma | 0.20 |
| reg_alpha | 1.0 |
| reg_lambda | 2.0 |

The classification threshold is optimized using the validation dataset to maximize predictive performance.

---

# 📈 Results

| Metric | Test Performance |
|---------|----------------:|
| Accuracy | **88.03%** |
| Precision | **89.72%** |
| Recall | **78.69%** |
| Specificity | **94.12%** |
| F1-Score | **83.84%** |
| ROC-AUC | **93.31%** |

The proposed framework demonstrates excellent discrimination capability while maintaining high precision and specificity.

---

# 📊 Confusion Matrix

| Actual / Predicted | Non-Pregnant | Pregnant |
|--------------------|-------------:|---------:|
| Non-Pregnant | 176 | 11 |
| Pregnant | 26 | 96 |

---

# 🛠️ Technologies Used

- Python
- Pandas
- NumPy
- OpenCV
- Scikit-image
- Scikit-learn
- XGBoost
- Imbalanced-learn (SMOTE)
- Matplotlib
- Joblib

---

# 📁 Project Structure

```
├── data/
│   ├── clinical_data/
│   └── blastocyst_images/
│
├── notebooks/
│
├── src/
│   ├── preprocessing.py
│   ├── feature_extraction.py
│   ├── feature_fusion.py
│   ├── train.py
│   └── predict.py
│
├── models/
│   └── final_ivf_xgboost_model.joblib
│
├── results/
│
├── requirements.txt
│
└── README.md
```

---

# 🚀 Future Work

- Integrate CNN-based feature extraction for blastocyst images.
- Investigate Vision Transformer (ViT) architectures for embryo assessment.
- Incorporate Explainable AI techniques such as SHAP.
- Extend the framework to time-lapse embryo sequence analysis.
- Accelerate inference using FPGA (PYNQ-Z2).
- Develop a real-time clinical decision support system.
- Validate the framework on larger multi-center IVF datasets.
- Explore federated learning for privacy-preserving collaborative training.

---

# 🌟 Key Features

- ✅ Multimodal fusion of clinical and blastocyst image features
- ✅ CLAHE-based image enhancement
- ✅ GLCM texture feature extraction
- ✅ SMOTE-based class balancing
- ✅ Optimized XGBoost classifier
- ✅ Decision threshold optimization
- ✅ Deployment-ready inference pipeline

---

# 👨‍💻 Authors

- **Akshaya Ramesh**
- **Vibha I S**
- **Ashitha M**
- **Sireesha T S**

**Department of Electronics and Communication Engineering**  
**BMS Institute of Technology and Management, Bengaluru**
