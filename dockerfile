FROM mcr.microsoft.com/dotnet/core/runtime:2.2 AS runtime
WORKDIR /app
COPY published ./published
WORKDIR /app/published
ENTRYPOINT ["dotnet", "SampleApp.dll"]