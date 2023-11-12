ansible-playbook ./jenkins_play1.yml --limit prod
python3 -m pytest ./Deploy/validate_config.py --disable-warnings -s --verbose
