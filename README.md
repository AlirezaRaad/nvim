# Installing tidy(for HTML)

```bash
sudo apt install tidy
```

# The Jupynium link:

```HTML
https://github.com/kiyoon/jupynium.nvim
```

When you create a new uv project and want to add a kernel and then use that kernel inside the Jupynium notebook, you have to run this:

```bash
uv add --dev ipykernel
uv run ipython kernel install --user --env VIRTUAL_ENV $(pwd)/.venv --name=project_name
```

Used :

```bash
pip install jupyterthemes
jt -t onedork
```

On global pip to change the color scheme of jupyter
