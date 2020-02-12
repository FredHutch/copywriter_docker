FROM r-base:3.6.2  

RUN apt-get update \
    && apt-get install -y --no-install-recommends libcurl4-openssl-dev libxml2-dev libssl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('optparse', 'dplyr', 'tidyr', 'stringr', 'BiocManager'));"

RUN R -e "BiocManager::install('CopywriteR');" 


