# Real-Time IVF Success Prediction Using FPGA-Enabled Machine Learning

A machine learning and FPGA-based system for **IVF outcome prediction using clinical features and real-time hardware inference**.

The project uses an **XGBoost Gradient Boosted Decision Tree (GBDT)** model trained on IVF clinical data and implements the trained decision trees on a **Digilent Nexys A7-100T FPGA** using fixed-point arithmetic and UART communication.

## Key Features

* IVF outcome prediction using clinical and treatment-related features
* Feature selection from an initial set of 35 features
* Lightweight XGBoost-based GBDT model
* Patient-grouped Stratified K-Fold validation
* 25-tree FPGA inference architecture
* Fixed-point feature and leaf-value representation
* UART-based feature input and prediction output
* Real-time inference on Nexys A7

## Dataset & Preprocessing

* **2,542 IVF records**
* **35 initial features**
* Median imputation for missing values
* Patient-level grouping to prevent data leakage
* Top 8 features selected for the final model

### Selected Features

```text
glucose
m_proc_IM
n_frozen
P
m_proc_density
age
m_proc_method
m_proc_NP
```

## Machine Learning

The final prediction model uses **XGBoost** for binary IVF outcome classification.

| Parameter        |             Value |
| ---------------- | ----------------: |
| Trees            |                25 |
| Maximum Depth    |                 4 |
| Learning Rate    |              0.05 |
| Objective        | `binary:logistic` |
| Scale Pos Weight |              1.63 |

### Validation

**Stratified Group K-Fold Cross-Validation**

* 5 folds
* 20 repetitions
* Patient-level grouping
* Metrics: Accuracy, ROC-AUC, PR-AUC, Precision, Recall, F1-score and Specificity

### Results

| Metric               |  Score |
| -------------------- | -----: |
| Accuracy             | 89.78% |
| ROC-AUC              | 95.55% |
| Precision            |    86% |
| Recall / Sensitivity |    88% |
| F1-Score             |    87% |
| Specificity          |    91% |

## FPGA Implementation

The trained XGBoost model is converted into a hardware-friendly **GBDT inference engine**.

```text
Host PC
   ↓
UART Receiver
   ↓
8 × 16-bit Feature Registers
   ↓
GBDT Inference Engine
   ↓
25 Decision Trees
   ↓
Tree Traversal
   ↓
Score Aggregation
   ↓
P / NP Prediction
   ↓
UART Output
```

### Fixed-Point Representation

Input features are encoded as signed 16-bit values with a scale factor of 100:

```text
12.00 → 1200
5.00  → 500
0.50  → 50
38.00 → 3800
```

Tree leaf values are represented using **signed Q16.16 fixed-point arithmetic**.

The outputs of all 25 trees are accumulated to obtain the final prediction margin.

```text
Margin ≥ 0 → P
Margin < 0 → NP
```

## UART Communication

* Baud rate: **115200**
* Data: **8-bit**
* Parity: **None**
* Stop bits: **1**
* Input: 8 features × 16 bits
* Total input packet: **16 bytes**

The UART receiver uses:

```text
IDLE → START → DATA → STOP
```

At the Nexys A7's 100 MHz clock, the receiver uses approximately **868 clock cycles per UART bit** with midpoint sampling.

## Hardware Integration

**Target:** Digilent Nexys A7-100T

The hardware implementation integrates:

* UART communication
* Feature buffering
* 25-tree GBDT inference
* Decision-tree traversal
* Score aggregation
* Fixed-point arithmetic
* P/NP prediction output

## Technologies

**Python · Pandas · NumPy · Scikit-learn · XGBoost · Verilog · Vivado · UART · Fixed-Point Arithmetic · Nexys A7 FPGA**
