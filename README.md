# Ansible-Azure-Tagging-Automation

<div id="header" align="center">
  <img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZ3dqZXA0bjJ5djJ0OXJ4N3JxMTFpYXNrOTJrODJ6bmdidDM5aXYwMSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/aIJDrOomj81MQZz2uO/giphy.gif" width="100"/>
</div>

This repository provides a solution to automate the process of updating tags on Azure resources using a CSV file and a combination of a shell script and Ansible playbook.

## Overview
This solution enables you to read a CSV file containing Azure resource names and their associated tags and then update those tags on Azure resources automatically. The automation process is facilitated by:

1. A shell script (update_tags.sh) that processes the CSV file and updates the tags on Azure resources.
2. An Ansible playbook (update_tags.yml) to execute the shell script in an automated fashion.

## Features
✅ Automates the tagging process for Azure resources using input from a CSV file. <br />
✅ Dynamically handles multiple tags per resource. <br />
✅ Scalable and reusable for large Azure environments. <br />
✅ Reduces human error and saves time compared to manual tagging. <br />
✅ Easily integrates with CI/CD pipelines for continuous automation. 

## Getting Started

### Prerequisites
**Azure CLI:** Install and configure Azure CLI. <br />
**Ansible:** Install Ansible.

## Usage
### Clone the repository:

git clone https://github.com/deekshameshram777/Ansible-Automation-Azure.git

### Repository Structure
Ansible-Azure-Tagging-Automation/
<br />
├── Update_Azure_Resource_Tags_Playbook.yml &nbsp;       # Ansible playbook to apply tags <br />
├── update_tags_script.sh &nbsp;            # Shell script to parse the CSV and call Ansible <br />
├── input.csv &nbsp;                 # Sample CSV input file <br />
├── README.md &nbsp;                 # Project documentation 

### Step 1: CSV File Structure
The CSV file should contain the following columns (It can include the required N no. of tags):

**For Eg:** <br />
**ResourceName:** The name of the Azure resource. <br />
**Environment:** The environment tag for the resource (e.g., Production, Staging). <br />
**Owner:** The owner of the resource (e.g., JohnDoe, JaneSmith). <br />

Refer input.csv example file in code repo.

### Step 2: Run the Shell Script:

* Create a shell script (update_tags_script.sh) that will read the CSV file and update the tags on the specified Azure resources. This script uses the Azure CLI (az) to interact with Azure resources. <br />
* The script parses the CSV file and calls the Ansible Playbook to apply the tags. Use the below command to run the shell script- <br />

&nbsp;     ./update_tags_script.sh

### Notes on the Script:
* The script logs into Azure using the VM's Managed Identity (az login --identity). If running the script outside of an Azure VM, you can authenticate using a Service Principal (az login --service-principal -u <appId> -p <password> --tenant <tenantId>). <br />
* The script loops through the CSV file, reading the ResourceName, Environment, and Owner fields, and applies those as tags to the Azure resources using the az resource tag command.



### Step 3: Ansible Playbook:
* You can use an Ansible playbook to run the shell script (update_tags_script.sh) and automate the process. <br />
* Use the below command to run the created playbook (Update_Azure_Resource_Tags_Playbook.yml) - <br />

ansible-playbook Update_Azure_Resource_Tags_Playbook.yml

### Explore the Code
Access the full solution on GitHub: Ansible Azure Tagging Automation Repository

### Connect and Share
If you find this project helpful, give it a ⭐ and share your feedback!

#Azure #DevOps #Automation #Ansible #ShellScripting

