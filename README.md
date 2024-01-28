# Dev

'dev' is a simple command line program to easily access your projects.

## Requirements

- A system with bash installed

## Installation

```bash
git clone https://github.com/marcusfrdk/dev.git
cd dev
chmod +x install.sh
./install.sh
exec $SHELL
```

## Uninstallation

```bash
chmod +x uninstall.sh
./uninstall.sh
exec $SHELL
```

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

```bash
DEV_IDE=nvim # editor, e.g. nvim, code, etc.
DEV_BASEPATH="$HOME/Development" # where to store projects
DEV_SHOULD_CLOSE=0 # 0=keep shell open, 1=close shell after IDE process exits
```
