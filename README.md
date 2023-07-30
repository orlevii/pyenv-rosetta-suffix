# pyenv-rosetta-suffix
This plugin allows you to install older versions of Python that are designed for x86 processors on Apple Silicon-based Mac computers. The motivation behind this is that sometimes, certain packages don't work well on MacOS with Apple Silicon chips.

To address this issue, you can use "Rosetta" to emulate an x86 processor. However, if you want to have both the arm64 and x86 versions of Python on your system, you might encounter a problem where the versions conflict with each other.

## Installation
Clone this repository to your pyenv plugins directory. You can do this by running the following command in your terminal:
```bash
git clone https://github.com/orlevii/pyenv-rosetta-suffix.git $(pyenv root)/plugins/pyenv-rosetta-suffix
```

## How To
To install a native arm64 Python version, nothing is chagend, simply run this command in your terminal: `pyenv install <version>`

If you want to install an x86 Python version, you need to run your terminal in x86 mode. Here are the prerequisites:
* Make sure you have homebrew x86 installed via Rosetta.
* Install `readline` and `openssl` with the x86 homebrew.

To install a x86 Python version, run the following in your terminal:
```bash
arch -x86_64 $SHELL

arch # This should output: i386

# Make sure your x86 homebrew is in the path:
export PATH=/usr/local/bin:$PATH

pyenv install "<version>"
```

If you try to install a version of Python that already exists on your system, pyenv will display the following message:
```
pyenv: <python_path> already exists
```
Don't worry, you can proceed with the installation. The installed version will have a _x86 suffix to distinguish it from the native arm64 version.
