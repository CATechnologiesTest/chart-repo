# chart-repo
FreshTracks public `helm` chart repo.

## Configure repo

Use the following command to add the FreshTracks chart repo to `helm`.

```bash
helm repo add freshtracks 'https://raw.githubusercontent.com/Fresh-Tracks/chart-repo/master/stable'
helm repo update
helm search freshtracks-agent
```
