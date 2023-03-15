FROM openjdk
WORKDIR /usr/src/app
COPY . .

# Install the forge server
RUN java -jar forge-1.18.2-40.1.0-installer.jar --installServer
RUN rm forge-1.18.2-40.1.0-installer.jar

# Generate server files
RUN ./run.sh

# Accept eula
RUN sed -i 's/eula=false/eula=true/g' eula.txt
RUN echo '' >> user_jvm_args.txt

# Set available machine RAM for the server (min-max)
RUN echo '-Xms2048M' >> user_jvm_args.txt
RUN echo '-Xmx4096M' >> user_jvm_args.txt

# Run server in headless mode
RUN sed -i 's/unix_args.txt "$@"/unix_args.txt "$@" nogui/g' run.sh

CMD ["./run.sh"]