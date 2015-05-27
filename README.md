# playbook-skeleton

Skeleton - An script that builds out the directory structure and commonalities of our ansible playbooks.

First Iteration:
- `ruby playbook_skeleton {project_name} {required_system} {required_system} ...`
- Creates the main directory title 'playbook-{project_name}'
  - Populates main directory with 'playbook.yml', 'dependencies.yml' and 'vault.yml'
- Creates a sub directory titled 'hosts'
  - Populates directory with four files 'next, development, staging, production'
- Creates the sub directories titled {required_system}
  - Populates each {required system} directory with 'playbook.yml' and 'dependencies.yml'

All files are created blank, but will be updated (in the next iteration) to suite current ansible requirements for baser functionality.

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Aaron Pederson](https://aaronpederson.github.io) | [e-mail](mailto:aaronpederson@gmail.com) | [Twitter](https://twitter.com/GunFuSamurai)
