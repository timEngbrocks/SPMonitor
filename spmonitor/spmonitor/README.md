# Installation

1. Setup secrets
	1.1. Manually
	> minio-root-access
	```
	rootUser:
	rootPassword:
	```

	> grafana-admin
	```
	adminUser:
	adminPassword:
	```

	1.2. With Helm Chart
	```
	helm install spmonitor-secrets ./spmonitor-secrets -f ./spmonitor-secrets/values.yaml
	```

2. Install CRDs if not already present
```
kubectl apply -f ./spmonitor/resources/crds/
```

3. Get latest version of dependencies
```
helm dependency update
```

4. Install Helm Chart
```
helm install spmonitor ./spmonitor -f ./spmonitor/values.yaml
```

5. Configure Grafana Permissions

	5.1 Login with the admin user account

	5.2 Create the following teams: SP, DLAKa

	5.3 Remove the Viewer role from the permissions of all dashboards

	5.4 Assign the SP team with Viewer permissions to all SP dashboards

	5.5 Assign the DLAKa team with Viewer permissions to all DLAKa dashboards

	5.6 Add users to the SP and/or DLAKa team