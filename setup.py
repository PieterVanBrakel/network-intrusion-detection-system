from setuptools import find_packages, setup

setup(
    name='src',
    packages=find_packages(),
    version='0.1.0',
    description='A machine learning-based system for detecting network intrusion activity by distinguishing malicious traffic patterns from normal baseline behavior, including port scanning, DDoS/SYN flood attacks, brute force attempts, and DNS exfiltration.',
    author='Pieter van Brakel',
    license='MIT',
)
