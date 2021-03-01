#############run playbook without asking password using secure way using ansible vault file 
ansible-playbook tomcat.yml -i hosts -u dockeradmin --vault-password-file=secret
#####################################################
create vault file with sudo password
[root@ip-172-31-90-28 docker]# ansible-vault create secret
New Vault password:
Confirm New Vault password:
#########################################################
file content
ansible_ssh_pass: dockeradmin
ansible_become_pass: dockeradmin
######################################################
decrypt the file 
[root@ip-172-31-90-28 docker]# ansible-vault decrypt secret
Vault password:
Decryption successful
#####################################################################
