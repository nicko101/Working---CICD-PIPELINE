pip3 install pytest
pip3 install paramiko
python3 ./Build/eve_setup.py --topo 	Test-API-CICD/CSR.unl -u
sleep 10
ansible-playbook ./jenkins_play.yml --limit testers
