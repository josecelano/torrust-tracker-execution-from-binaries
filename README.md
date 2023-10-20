# Torrust Tracker execution from binaries

[Alex Wellnitz](https://github.com/alexohneander) has opened a PR for the Torrust Tracker [here](https://github.com/torrust/torrust-tracker/pull/473).

This repo is only a sample repo to support the discussion about the PR.

The idea for the PR is to generate a pre-built binaries for the Torrust Tracker.

I've used my laptop to build the tracker and this repo uses the prebuilt binaries to run the tracker.

The OS used to build the binaries is:

```s
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 23.04
Release:        23.04
Codename:       lunar
```

## Requirements

- Docker version 24.0.6, build ed223bc

## Run

```s
./build_and_run.sh
```

You should be able to load the Tracker API URL:

<http://127.0.0.1:1212/api/v1/stats?token=MySecretToken>
