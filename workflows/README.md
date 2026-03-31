
# Requirements

The automated build template will fail if the version and version label are not set.


```yaml
# Required repository variables

# 4.3, 4.2.0, etc.
GODOT_VERSION: 4.6.1

# rc-1, beta-1, etc.
GODOT_VERSION_LABEL: stable

# Reccomended repository variables:

# Your game name. Not sure if needed lol.
PROJECT_NAME: Quintessence

# Only needed if your project root isn't
# the git repo root.
PROJECT_PATH: .
```

### If exporting to itch.io:


```yaml
# Required Repository Variable
ITCHIO_CHANNEL: polzon/quintessence

# Required Repository Secret
BUTLER_APIKEY: <key-here-without-brackets-lol>
```
