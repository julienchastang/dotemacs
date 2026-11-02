# .emacs

A personal, literate Emacs configuration written in Org mode. It is a constant work in
progress.

## Configuration

- [settings.org](settings.org) — main configuration, bootstrap instructions, and package lists.
- [python-config.org](python-config.org) — Python development with Eglot, BasedPyright, Company, Ruff, direnv, and pytest commands. Includes a project `.venv` setup walkthrough.
- [gptel-presets.org](gptel-presets.org) — gptel backends for Jetstream2 and Gemini, with prompts and presets for coding, writing, and editing.

## Setup

1. Place this repository at `~/.emacs.d/git/dotemacs/`, the path used by the configuration.
2. Follow the **Preamble** in [settings.org](settings.org) to clone the manually curated packages, and create `~/.emacs.d/init.el`. An optional `early-init.el` snippet adjusts garbage collection for startup.
3. Start Emacs. The initialization calls `org-babel-load-file` to tangle and load `settings.org`, which also loads the Python and gptel configurations. Listed archive packages are installed as needed.
4. Follow [python-config.org](python-config.org) for Python tools and project environments, and configure auth-source credentials for the gptel backends.

Edit the `.org` sources; generated `.el` files are overwritten when retangled.
