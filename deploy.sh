ApiKey=$1

dotnet pack ./src/System.Data.OracleClient.csproj -o ./nuget/ -c Release
dotnet nuget push ./nuget/System.Data.OracleClient*.nupkg -k $ApiKey
