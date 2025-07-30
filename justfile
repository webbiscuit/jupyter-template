env_name := "my_notebook_env"

create-env:
    conda env create -f environment.yml

destroy-env:
    conda env remove -n {{env_name}}

update-env:
    conda env update -n {{env_name}} -f environment.yml --prune

check-env:
    conda run -n {{env_name}} python -c "print('OK')"

notebook:
    conda run -n {{env_name}} jupyter lab

