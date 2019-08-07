FROM oracle/instantclient:19
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
COPY /SampleApp/bin/Release/netcoreapp2.2 /publish
WORKDIR /publish
CMD ["dotnet", "SampleApp.dll"]