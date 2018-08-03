# Azure Batch Python Notebook

This is is a sample Jupyter Notebook containing some code to manage Azure Batch container-based pools with the Python SDK. Some of the code is taken from the samples in the Github repo below.

It demonstrates these concepts, amongst others:

* How to create a container-enabled pool, including startup tasks
* How to access the state of compute nodes inside of a pool
* How to launch container-based tasks, with or without a custom CMD, with the default WD or with another one
* How to delete tasks, jobs and pools

See these links for further information:

* https://docs.microsoft.com/en-us/azure/batch/batch-account-create-portal: How-To Azure Batch documentation in docs.microsoft.com
* https://docs.microsoft.com/en-us/python/api/azure-batch/azure.batch?view=azure-python: Azure Batch Python SDK reference
* https://github.com/Azure/azure-batch-samples/tree/master/Python/Batch: Azure Batch Python samples, where this notebook is based from