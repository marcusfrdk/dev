![Hero](./hero.jpg)

# Dev

'dev' is a simple command line program to easily access your projects.

## Requirements

- A system with bash installed

## Installation

### From Cloud

```bash
curl -s https://raw.githubusercontent.com/marcusfrdk/dev/main/install_from_cloud.sh | bash
```

### From Repository

```bash
git clone https://github.com/marcusfrdk/dev.git
cd dev
chmod +x install.sh
./install.sh
exec $SHELL
```

## Uninstallation

### From Cloud

```bash
curl -s https://raw.githubusercontent.com/marcusfrdk/dev/main/uninstall_from_cloud.sh | bash
```

### From Repository

```bash
chmod +x uninstall.sh
./uninstall.sh
exec $SHELL
```

_Note: This only removes the program from your session file, it DOES NOT remove your project folder._

## Usage

### Change Directory

This changes the current sessions current working directory to the directory of your projects.

```bash
dev
```

### Open Project

Opens a specific project in your IDE of choice. The project must exist in the development folder.

_You can press TAB after 'dev' to autocomplete existing directories._

```bash
dev {PROJECT}
```

## Configuration

In the `config.sh` file, you can configure the editor to use, the path to store projects and your session file (.bashrc, .zshrc, etc.).

_Note: The configuration in `config.sh` is only applied once `install.sh` is executed. After first install, config is updated in the session file._

```bash
DEV_IDE=nvim # editor, e.g. nvim, code, etc.
DEV_BASEPATH="$HOME/Development" # where to store projects
DEV_SHOULD_CLOSE=0 # 0=keep shell open, 1=close shell after IDE process exits
```

_If you updated the config in `config.sh`, execute the `install.sh` file, otherwise run `exec $SHELL` to refresh your session._
