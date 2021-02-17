# tailspinjosh-db

Database project (dacpac) deployed using Azure Pipelines

Bacpac file: https://sqldbtutorial.blob.core.windows.net/bacpacs/tailspindatabase.bacpac

From this MS Learn module: https://docs.microsoft.com/en-us/learn/modules/manage-database-changes-in-azure-pipelines

## Process Diagram

![diagram](https://docs.microsoft.com/en-us/learn/azure-devops/manage-database-changes-in-azure-pipelines/media/2-whiteboard-pipeline.png)

1. This job produces a .dacpac file that we treat as a build artifact.
1. Add a stage that scripts the database changes
1. DBA uses the script output to verify the changes before they're applied.
1. Add an approval to the deployment stage.
1. The approval applies the database changes.
1. We deploy to Dev, Test, and Staging just like we did before.
