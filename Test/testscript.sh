ansible-playbook ./jenkins_play1.yml --limit testers
python3 -m pytest ./Test/test_config.py --disable-warnings -s --verbose
