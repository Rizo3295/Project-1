## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

* Load balancing ensures that the application will be highly efficient,Improves application responsiveness also increase availability of applications and websites for users in addition to restricting traffic to the network.

- What aspect of security do load balancers protect? What is the advantage of a jump box?_
The off-loading function of a load balancer defends an organization against distributed denial-of-service (DDoS) attacks by shifting attack traffic. It does this by shifting attack traffic from the corporate server to a public cloud provider.

* A jump box can give access to the user from a single node that can be secured and monitored. A Jumpbox is a (special-purpose) computer on a network typically used to access devices in a separate security zone. No hardware cost, access, and ease to setup.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics and statistics.
- What does Filebeat watch for?_
- What does Metricbeat record?_

* Filebeat watches for any information in the file system which has been changed and when it has. Filebeat shipper for forwarding and centralizing log data.

* Merticbeat takes the metrics and statistics that it collects and ships them to the output that you specify. Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| web1     | Server   | 10.0.0.8   | Linux            |
| web2     | Server   | 10.0.0.9   | Linux            |
| elk      | Server   | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only My Public IP address 20.94.213.11 machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by Local workstation an d.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring_

* Web-1 10.0.0.8

* Web-2 10.0.0.9



We have installed the following Beats on these machines:
- Specify which Beats you successfully installed_

* Filebeat
* Metricbeat

These Beats allow us to collect the following information from each machine:
- In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

* Filebeat collects the changes done

* Metricbeat collects metrics and statistics

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook file to /etc/ansible.
- Update the host file to include...
- Run the playbook, and navigate to command line to check that the installation worked as expected.

-  Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

Playbook: install-elk.yml Location: /etc/ansible/install-elk.yml

You will need to edit the /etc/ansible/host file to add webserver/elkserver ip addresses

/etc/ansible/hosts:

[webservers]

10.0.0.8 ansible_python_interpreter=/usr/bin/python3

10.0.0.9 ansible_python_interpreter=/usr/bin/python3

[elk]

10.1.0.4 ansible_python_interpreter=/usr/bin/python3

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
