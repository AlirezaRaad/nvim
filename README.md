# 🧰 Install Latest Go (Golang) and LazyGit on Ubuntu

## ✅ Step 1: Remove Old Go Version (if any)

```bash
sudo rm -rf /usr/local/go
```

---

## ✅ Step 2: Download the Latest Version of Go

1. Go to [https://go.dev/dl](https://go.dev/dl)
2. Copy the latest Linux download link.
3. Download using `wget` (example for Go 1.22.3):

```bash
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz
```

---

## ✅ Step 3: Extract and Install Go to `/usr/local`

```bash
sudo tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
```

---

## ✅ Step 4: Add Go to Your Shell `PATH`

1. Open your shell config file (e.g., `.bashrc`, `.zshrc`, or `.profile`):

```bash
nano ~/.bashrc
```

2. Add the following line at the bottom:

```bash
export PATH=$PATH:/usr/local/go/bin
```

3. Apply the changes:

```bash
source ~/.bashrc
```

> 🔁 If using Zsh, modify `~/.zshrc` instead.

---

## ✅ Step 5: Verify Go Installation

```bash
go version
```

Expected output (example):

```
go version go1.22.3 linux/amd64
```

---

## ✅ Step 6: Install Git (Required for LazyGit)

```bash
sudo apt update
sudo apt install git -y
```

---

## ✅ Step 7: Install LazyGit via Go

```bash
go install github.com/jesseduffield/lazygit@latest
```

This installs `lazygit` into:

```
~/go/bin
```

---

## ✅ Step 8: Add Go Bin to Your PATH (if not already)

```bash
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
source ~/.bashrc
```

---

## ✅ Step 9: Verify LazyGit Installation

```bash
lazygit --version
```

---

# Installing tidy(for HTML)

```bash
sudo apt install tidy
```
