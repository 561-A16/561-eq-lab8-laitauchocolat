#!bin/bash

set -e

dotnet restore

dotnet test appweb.unittests

dotnet publish appweb --output /root/publish/


