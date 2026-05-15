# Network Intrusion Detection System

A machine learning-based system for detecting malicious network activity from self-captured packet traffic, including port scanning, DDoS/SYN flood attacks, brute force attacks, and DNS exfiltration.

---

# Overview

This project aims to build an end-to-end Network Intrusion Detection System (NIDS) using both classical machine learning and deep learning techniques.

The system captures raw network traffic, extracts flow-based features from `.pcap` files, processes the data into machine learning-ready datasets, and trains models capable of distinguishing malicious traffic from normal baseline behavior.

The project is structured as a modular, production-oriented machine learning repository using a professional Git workflow and reproducible experimentation practices.

---

# Objectives

The primary goals of this project are:

- Capture and label real network traffic
- Extract structured flow-based features from packet captures
- Engineer features for intrusion detection
- Train and compare:
  - Classical ML models
  - Deep learning models
- Track experiments and metrics
- Build an inference API
- Prepare the system for deployment

---

# Attack Types

The following network behaviors will be captured and classified:

| Attack Type | Description |
|---|---|
| Normal Traffic | Benign baseline traffic |
| Port Scan | Sequential or random port scanning |
| DDoS / SYN Flood | Denial-of-service flooding attacks |
| Brute Force | Repeated authentication attempts |
| DNS Exfiltration | Data exfiltration over DNS |

---

# Tech Stack

| Category | Technologies |
|---|---|
| Language | Python 3.11 |
| Data Processing | Pandas, NumPy |
| Storage | Parquet, PyArrow |
| ML Frameworks | Scikit-learn, PyTorch |
| Experiment Tracking | MLflow |
| API | FastAPI |
| Environment | uv |
| Testing | Pytest |
| Version Control | Git + GitHub |
| Project Management | Jira |

---

# Repository Structure

```text
network-intrusion-detection-system/
│
├── api/                        # Inference API
│
├── data/
│   ├── raw/
│   │   └── pcaps/             # Raw captured network traffic
│   ├── interim/               # Intermediate datasets
│   └── processed/             # Final ML-ready datasets
│
├── models/
│   ├── classical/             # Classical ML model artifacts
│   ├── deep/                  # Deep learning model artifacts
│   └── metrics/               # Evaluation metrics and reports
│
├── notebooks/                 # Research and experimentation notebooks
│
├── reports/
│   └── figures/               # Generated figures and visualizations
│
├── src/
│   ├── traffic_capture/
│   ├── pcap_extraction/
│   ├── flow_engineering/
│   ├── data_processing/
│   ├── classical_models/
│   ├── deep_models/
│   ├── inference/
│   └── config.yaml
│
├── tests/                     # Unit and integration tests
│
├── README.md
├── pyproject.toml
└── .gitignore