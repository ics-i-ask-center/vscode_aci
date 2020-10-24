# Table of Contents

* [Overview](#Overview)
* [Accessing and using vscode on Roar](#accessing-and-using-vscode-on-roar)
* [Installing your own copy](#installing-your-own-copy)
* [Bootstrapping](#bootstrapping)
* [Custom Deployment](#custom-deployment)
* [License](#license)
* [Troubleshooting](#troubleshooting)

# Overview

![Singularity Version](https://img.shields.io/badge/singularity-3.5.2-informational)
![Ubuntu](https://img.shields.io/badge/image%20base-ubuntu%20v16.04%20LTS-important)
![vscode](https://img.shields.io/badge/vscode-v1.50.1-blue)
![spack](https://img.shields.io/badge/spack-v0.15.4-blue)
![conda](https://img.shields.io/badge/conda-v4.9.0-blue)
![GitHub](https://img.shields.io/github/license/NucciTheBoss/vscode_aci)


[VSCode](https://code.visualstudio.com/) is a powerful, yet simple source code editor made for MacOS, Windows, and Linux. This repository hosts Roar's implementation of VSCode. The VSCode on Roar is installed inside a [Singularity](https://sylabs.io/) container, and can be loaded using [Lmod](https://lmod.readthedocs.io/en/latest/). The container also comes with [spack](https://spack.readthedocs.io/en/latest/) and [conda](https://docs.conda.io/en/latest/miniconda.html) package managers preinstalled.

# Accessing and using VSCode on Roar
In order to access VSCode on Roar, you only need to use the following commands:

```bash
$ module use /gpfs/group/dml129/default/sw/modules
$ module load vscode/1.50.1
```

Now that you have loaded VSCode into your current environment you only need to use the following command in order to launch VSCode:

```bash
$ code
```

If there is an executable inside the VSCode container that you wish to use, simply use the following command:

```bash
$ code-exec <command> <options> <arguments>
```

# Installing your own copy
Todo

# Bootstrapping
In order to use this container as the base for other singularity images (a.k.a bootstrap), then please use the one of the base definition files stored in `/bootstrap`. You can download the bootstrap definition files by either cloning this repository:

```bash
$ git clone https://github.com/NucciTheBoss/vscode_aci.git
```

and copying the files, or you can also download them using `wget`:

```bash
$ wget https://raw.githubusercontent.com/NucciTheBoss/vscode_aci/master/bootstrap/vscode_library_bootstrap.def
$ wget wget https://raw.githubusercontent.com/NucciTheBoss/vscode_aci/master/bootstrap/vscode_local_bootstrap.def
```

There are slight differences between the two bootstrap files. You should use `vscode_library_bootstrap.def` if you want to download the VSCode container from the Sylab Cloud before building your container. You should use `vscode_local_bootstrap.def` if you already have a copy of the container on your machine.

**Note:** If you are using the Sylabs Remote Builder to build your own container then you should use `vscode_library_bootstrap.def`.

# Custom Deployment
If you are looking for a custom deployment of VSCode (e.g. specific software, specialized environment, etc.), then please contact the ICDS i-ASK center at iask@ics.psu.edu for assistance. We can help you build the custom VSCode container you need.

# License
This repository is licensed under the GNU General Public License v3.0. 
For more information on what this license entails, please feel free to 
visit https://www.gnu.org/licenses/gpl-3.0.en.html

# Troubleshooting
If you encounter any issues while using this vscode container then please open an issue, or contact Jason at the ICDS i-ASK center at either iask@ics.psu.edu or jcn23@psu.edu. Please contact the i-ASK center if you are looking for or need a custom deployment of this container.
