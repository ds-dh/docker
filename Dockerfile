FROM jupyter/base-notebook

MAINTAINER Data Science <datascience@digitalhouse.com>

#RUN ["useradd", "-ms", "/bin/bash","DS-DH-2018"]

CMD ["/bin/bash", "useradd", "DS-DH-2018"]

RUN conda install --yes 'numpy' \
'scipy'\
'statsmodels'\
'sklearn'

RUN conda install --yes 'matplotlib' \
'seaborn'

USER DS-2018
WORKDIR /home/newuser DS-2018