FROM gcc:13.3.0

# Copy the installer
COPY cplex_studio2211.linux_x86_64.bin /cplex/cplex_studio2211.linux_x86_64.bin
COPY response.properties /cplex/response.properties

# Install CPLEX
RUN chmod u+x /cplex/cplex_studio2211.linux_x86_64.bin
RUN /cplex/cplex_studio2211.linux_x86_64.bin -f /cplex/response.properties
RUN rm -rf /cplex

# Put all needed binaries onto the path
ENV PATH ${PATH}:/opt/ibm/ILOG/CPLEX_Studio2211/cplex/bin/x86-64_linux
ENV PATH ${PATH}:/opt/ibm/ILOG/CPLEX_Studio2211/cplex/lib/x86-64_linux/static_pic
ENV PATH ${PATH}:/opt/ibm/ILOG/CPLEX_Studio2211/license
ENV PATH ${PATH}:/opt/ibm/ILOG/CPLEX_Studio2211/cplex/include
ENV PATH ${PATH}:/opt/ibm/ILOG/CPLEX_Studio2211/concert/include

# Put the libraries onto the path
ENV LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:/opt/ibm/ILOG/CPLEX_Studio2211/cplex/lib/x86-64_linux/static_pic
