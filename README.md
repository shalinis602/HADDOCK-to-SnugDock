# HADDOCK to SnugDock
This repository features a single script **`haddock_to_snugdock_processor.sh`** that automates the preparation of HADDOCK output files for use as input in SnugDock. By automating a sequence of **`pdb_tools`** commands, it ensures compatibility and proper formatting of these files for docking in SnugDock. The main script uses 13 underlying bash scripts which can be customized to meet specific requirements. 

### **Usage**

#### **Running the Script**

To prepare HADDOCK output files for SnugDock, follow these steps:

1. **Navigate to the Repository:**

   ```
   cd path/to/your/repository
   ```

2. **Make the Shell Script Executable (if necessary):**

   ```
   chmod +x haddock_to_snugdock_processor.sh
   ```

3. **Run the Shell Script:**

   ```
   ./haddock_to_snugdock_processor.sh
   ```
This script automates the necessary **`pdb_tools`** commands to convert HADDOCK output files to SnugDock input files.

### Customization
Users can edit **`haddock_to_snugdock_processor.sh`** to adapt the script for other file formats or processing steps beyond HADDOCK and SnugDock compatibility.

### Repository Structure
The repository structure is as follows:

```
|-- README.md
|-- haddock_to_snugdock_processor.sh
|-- other_script.sh
|-- ...
```
- **README.md**: This file, providing information about the repository and instructions.
- **haddock_to_snugdock_processor.sh**: The main shell script that automates pdb_tools commands for HADDOCK to SnugDock file preparation.
- **other_script.sh**: Other auxiliary scripts or files used in the preparation process.

### Notes
- The script assumes HADDOCK output files and prepares them for inputting in SnugDock. Modify **`haddock_to_snugdock_processor.sh`** for different input or output formats as needed.
- Ensure that you have the necessary permissions and environment set up to run shell scripts.
- For any issues or improvements, please feel free to open an issue or submit a pull request.

  ## Contact

Feel free to reach out via email at [shalinisinha602@gmail.com](mailto:shalinisinha602@gmail.com) or connect with me on [Twitter](https://x.com/asimov_algos)
