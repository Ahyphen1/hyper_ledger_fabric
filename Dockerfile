# Use a base image with Hyperledger Fabric
FROM hyperledger/fabric-peer:latest

# Set the working directory inside the container
WORKDIR /opt/gopath/src/github.com/hyperledger/fabric-samples

# Copy your application or Hyperledger Fabric configuration files to the container
COPY . /opt/gopath/src/github.com/hyperledger/fabric-samples/

# Expose any necessary ports (peer, orderer, etc.)
EXPOSE 7051 7053

# Define environment variables
ENV CORE_PEER_ID=peer0.org1.example.com
ENV CORE_PEER_ADDRESS=peer0.org1.example.com:7051
ENV CORE_PEER_LOCALMSPID=Org1MSP
ENV CORE_PEER_TLS_ENABLED=true

# Start the Hyperledger Fabric peer
CMD ["peer", "node", "start"]
