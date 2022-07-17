ansible-playbook ./jenkins_play2.yml --limit prod
python3 -m pytest ./Deploy/validate_config.py --disable-warnings -s --verbose
