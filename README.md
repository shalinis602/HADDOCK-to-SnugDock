# HADDOCK to SnugDock
This repository contains a single script **`haddock_to_snugdock_processor.sh`** that automates the preparation of HADDOCK output files for use as input in SnugDock. By automating a sequence of **`pdb_tools`** commands, it ensures compatibility and proper formatting of these files for docking in SnugDock. The main script utilizes 13 underlying Bash scripts, each of which can be customized to meet specific requirements. This modular approach facilitates easy modification for different complexes.

### **Usage**

#### **Running the Script**

To prepare HADDOCK output files for SnugDock, follow these steps:

1. **Clone the git repository.**

   ```
   git clone git@github.com:shalinis602/HADDOCK-to-SnugDock.git
   ```

2. **Copy all the 14 .sh files to the directory where your HADDOCK pdb files are stored:**

   ```
   cp *.sh destination_folder
   ```

3. **Look up the chain residue ids in your docked complex conformations and edit `selres_H.sh`, `selres_L.sh`, `selres_W.sh` and `selres_V`.**

4. **Make the Shell Script Executable (if necessary):**

   ```
   chmod +x haddock_to_snugdock_processor.sh
   ```

5. **Run the Shell Script:**

   ```
   ./haddock_to_snugdock_processor.sh
   ```
   This script executes a series of **`pdb_tools`** commands to convert HADDOCK output files to SnugDock input files. It displays the **`pdb_tools`** command currently being executed and the time taken to run it on the terminal. The processed files are saved in the `output` folder.

### Customization
Users can edit **`haddock_to_snugdock_processor.sh`** and other shell script files to adapt for other file formats or processing steps beyond HADDOCK and SnugDock compatibility.

### Repository Structure
The repository structure is as follows:

```
|-- README.md
|-- haddock_to_snugdock_processor.sh
|-- pdb_split.sh
|-- selres_L.sh
|-- selres_H.sh
|-- rplchain_AH.sh
|-- rplchain_AL.sh
|-- reres_L.sh
|-- selres_W.sh
|-- selres_V.sh
|-- rplchain_BW.sh
|-- rplchain_BV.sh
|-- rename.sh
|-- concat.sh
|-- reatom.sh
```
- **README.md**: This file, providing information about the repository and instructions.
- **haddock_to_snugdock_processor.sh**: The main shell script that automates pdb_tools commands for HADDOCK to SnugDock file preparation.
- **pdb_split.sh**: Splits the complex pdb files into antibody and antigen pdb files.
- **selres_L.sh**: Selects all the L chain residues from the antibody.
- **selres_H.sh**: Selects all the H chain residues from the antibody.
- **rplchain_AH.sh**: Replaces chain id A in antibody pdb files by chain id H.
- **rplchain_AL.sh**: Replaces chain id A in antibody pdb files by chain id L.
- **reres_L.sh**: Renumbers the L chain residues from index 1.
- **selres_W.sh**: Selects all the W chain residues from the antigen.
- **selres_V.sh**: Selects all the V chain residues from the antigen.
- **rplchain_BW.sh**: Replaces chain id B in antigen pdb files by chain id W.
- **rplchain_BV.sh**: Replaces chain id B in antigen pdb files by chain id V.
- **rename.sh**: Adds chain ids to names of all the files.
- **concat.sh**: Creates the new antibody and antigen files by joining the renamed chains.
- **reatom.sh**: Renumbers all the pdb files.

### Notes
- Make sure to have some extra disk space on your machine because it temporarily creates processed pdb files.
- The script assumes 2 chain antibody and 2 chain antigen complex conformations. Add more bash scripts for different number of chains as needed.
- Ensure that you have the necessary permissions and environment set up to run shell scripts.
- For any issues or improvements, please feel free to open an issue or submit a pull request.
