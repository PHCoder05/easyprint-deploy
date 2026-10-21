# EasyPrint install

This repository is the install surface. It has no application source. Images are built from [EasyPrint](https://github.com/PHCoder05/EasyPrint) and published to GHCR when that repo is tagged.

```bash
git clone https://github.com/PHCoder05/easyprint-deploy.git
cd easyprint-deploy
cp env.example .env
# Set PUBLIC_HOST to this machine. Replace the secrets before anyone else uses it.
docker login ghcr.io
make up
make status
```

| Command | Effect |
|---------|--------|
| `make up` | Pull the pinned images and start |
| `make status` | Health and URLs |
| `make down` | Stop. Database and files stay |
| `make clean` | Stop and delete volumes |
| `make purge` | Delete containers, volumes, and images |

`EASYPRINT_IMAGE_TAG` in `env.example` is the release pin. A stable tag on EasyPrint updates `main` here to that version. Clone a tag (`v1.4.2`) to install that version instead of `main`.
