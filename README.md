# 🧬 Multimodal IVF Embryo Implantation Prediction Using Blastocyst Image Processing and Clinical Data Fusion

A multimodal machine learning framework for predicting **IVF embryo implantation success** by integrating **blastocyst image texture features** with **clinical IVF parameters**. The proposed system combines image processing, feature engineering, data fusion, and an optimized XGBoost classifier to provide accurate and interpretable implantation outcome prediction.

---

## 📌 Overview

Embryo implantation prediction is one of the most critical challenges in **In Vitro Fertilization (IVF)**. Conventional embryo selection relies heavily on manual morphological assessment, which is subjective and varies among embryologists.

This project presents a multimodal machine learning pipeline that integrates:

- 🖼️ Blastocyst microscopy image analysis
- 📊 Clinical IVF patient data
- 🤖 Machine learning-based implantation prediction

The framework extracts handcrafted texture features from embryo images using the **Gray-Level Co-occurrence Matrix (GLCM)** and combines them with structured clinical features to improve implantation outcome prediction.

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

```text
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
- Binary implantation outcome classes:
  - Pregnant
  - Non-Pregnant

### Final Fused Dataset

| Property | Value |
|-----------|------:|
| Total Samples | 2,056 |
| Clinical Features | 36 |
| Image Features | 6 |
| Total Features | 42 |

---

# 🖼️ Image Preprocessing

Each blastocyst image undergoes the following preprocessing pipeline:

- Convert RGB image to grayscale
- Resize to **224 × 224 pixels**
- Apply **CLAHE (Contrast Limited Adaptive Histogram Equalization)**

CLAHE enhances local image contrast, improving visibility of embryo texture patterns before feature extraction.

---

# 🔬 Texture Feature Extraction

Texture descriptors are extracted using the **Gray-Level Co-occurrence Matrix (GLCM)**.

The following Haralick texture features are computed:

- Contrast
- Dissimilarity
- Homogeneity
- Energy
- Correlation
- Angular Second Moment (ASM)

These handcrafted descriptors capture morphological characteristics of blastocysts while remaining computationally efficient and highly interpretable.

---

# 📊 Clinical Data Preprocessing

Clinical records undergo several preprocessing operations:

- Missing value imputation using mean values
- Feature cleaning
- English column translation
- StandardScaler normalization

The processed clinical features are then merged with the extracted image features to create a unified multimodal feature representation.

---

# 🔗 Feature Fusion

The final feature vector consists of:

```text
36 Clinical Features
        +
6 GLCM Texture Features
        =
42 Features
```

The fused representation enables the classifier to jointly learn relationships between embryo morphology and patient clinical characteristics.

---

# ⚖️ Handling Class Imbalance

Successful embryo implantation cases are naturally underrepresented.

To improve predictive performance, **Synthetic Minority Oversampling Technique (SMOTE)** is applied **only to the training dataset**, ensuring balanced class distributions while preventing information leakage.

---

# 🤖 Machine Learning Model

Prediction is performed using an optimized **Extreme Gradient Boosting (XGBoost)** classifier.

## Hyperparameters

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

The optimal classification threshold is determined using the validation dataset to maximize predictive performance.

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

The proposed multimodal framework demonstrates strong discrimination capability while maintaining excellent precision and specificity.

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

# 🚀 Future Work

- Integrate deep CNN-based feature extraction.
- Investigate Vision Transformer (ViT) architectures.
- Apply Explainable AI methods such as SHAP.
- Extend the framework to time-lapse embryo sequence analysis.
- Deploy accelerated inference on FPGA (PYNQ-Z2).
- Develop a real-time clinical decision support system.
- Validate on larger multi-center IVF datasets.
- Explore federated learning for privacy-preserving collaborative training.

---

# 🌟 Key Features

- ✅ Multimodal fusion of clinical and blastocyst image features
- ✅ CLAHE-based image enhancement
- ✅ GLCM texture feature extraction
- ✅ Clinical data preprocessing and normalization
- ✅ SMOTE-based class balancing
- ✅ Optimized XGBoost classifier
- ✅ Threshold optimization
- ✅ High-performance implantation prediction
- ✅ Deployment-ready inference pipeline

---

# 👨‍💻 Authors

- **Akshaya Ramesh**
- **Vibha I S**
- **Ashitha M**
- **Sireesha T S**

**Department of Electronics and Communication Engineering**  
**BMS Institute of Technology and Management**  
**Bengaluru, Karnataka, India**

---
