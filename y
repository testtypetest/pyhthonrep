#Пример файла access_template_exec.py:

#!/usr/bin/env python3

access_template = ['switchport mode access',
                   'switchport access vlan {}',
                   'switchport nonegotiate',
                   'spanning-tree portfast',
                   'spanning-tree bpduguard enable']

print('\n'.join(access_template).format(5))

chmod +x access_template_exec.py

chmod +x access_template_exec.py
