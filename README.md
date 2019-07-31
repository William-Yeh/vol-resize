# Experiment: Volume Resizing Mechanism in Kubernetes

Non-stop storage scaling (vertical or horizontal scaling) is essential in a data-intensive system, database servers in particular.

Is it possible in Kubernetes?

In Kubernetes v1.11 the persistent volume expansion feature is being promoted to beta and enabled by default. To get a concrete knowledge of the volume resizing, I’ve conducted a simple experiment on GCP and GKE.

A detailed article for this experiment is available at [Volume Resizing Mechanism in Kubernetes](https://william-yeh.net/post/2019/07/k8s-vol-resizing/).
