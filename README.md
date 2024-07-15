# PsychoPy cookbook

- [Understanding PsychoPy](#understanding-psychopy)
  - [What is PsychoPy?](#what-is-psychopy)
  - [PsychoPy features](#what-can-you-do-with-psychopy)
  - [PsychoPy's possibilities](#possibilities-of-psychopy)
  - [How work with PsychoPy?](#how-can-you-create--conduct-experiments-in-psychopy)
- [PsychoPy in your code editor](#scripting-setup-using-conda-in-your-own-editor)

---

# Understanding PsychoPy

## What is PsychoPy?

PsychoPy is a versatile software designed for creating and conducting experiments in psychology and neuroscience.

## What can you do with PsychoPy?

PsychoPy's features for experimental psychology and neuroscience research:

1. **Stimulus Presentation:**
   - Precise timing for presenting diverse stimuli types:
     - Text, Images, Sounds, and Videos: presentation of static and dynamic stimuli.
     - Shapes and Custom Drawings: flexibility in creating visual patterns and stimuli with precise control over properties like color, size, and position.
2. **Interactive Responses:**
   - Capture participant input via mouse clicks or keyboard responses, for measuring reaction times and accuracy.
3. **Integration with External Devices:**
   - Seamless integration with devices:
     - Eye trackers, EEG systems, fMRI Scanner, brain imaging data, Response Boxes and Motion Capture Systems

## Possibilities of PsychoPy

Experimental paradigms (structured methodologies) used in research to investigate specific psychological or cognitive phenomena. These paradigms are designed to control variables, manipulate conditions, and measure outcomes systematically. Examples include tasks for attention, memory, perception, learning, emotion, social interaction, and neurofeedback, among others.

## How can you create / conduct experiments in PsychoPy?

PsychoPy offers versatile ways to design and conduct experiments from traditional lab-based experiments to online studies:

1. **Builder View:**
   - drag-and-drop graphical interface for beginners to create experiments, ideal for quick setups without coding.
2. **Coder View:**
   - experienced users to script experiments in Python for precise control and customization, accommodating complex experimental designs.
3. **Standalone Scripting:**
   - writing Python scripts using PsychoPy libraries, useful for automation and integration into larger workflows.
4. **Online Studies (PsychoJS):**
   - running experiments in web browsers, facilitating remote data collection and accessibility across different devices.

---

# Scripting Setup using Conda in your own Editor

## Easy Install

```bash
# clone this repo
git clone https://github.com/matsjfunke/psychopy-install-setup.git
# move into directory
cd psychopy-install-setup
# enable the main_script.zsh
chmod 755 ./main_script.sh
# activate the environment:
conda activate psychopy-env`
# test the activation by running test experiment:
python basic.py
# deactivate it with:
conda deactivate
```

## Manual Install

1. Prerequisites
   homebrew not necessary but makes things easier
   Git
   Conda:

   - on mac : brew install miniconda
   - on linux / windows (https://docs.conda.io/projects/conda/en/stable/)

2. Create an folder / directory for your PsychoPy projects

```bash
mkdir your-directory-name
```

3. Clone this repo or copy the environment.yml into the directory

```bash
git clone https://github.com/matsjfunke/psychopy-install-setup.git
cp psychopy-install-setup/environment.yml path/to/your-directory-name
cd your-directory-name
```

4. Create the Environment from environment.yml

```bash
conda env create --file environment.yml
```

5. Activate the Environment

```bash
conda activate psychopy-env
```

6. start coding your own experiment
