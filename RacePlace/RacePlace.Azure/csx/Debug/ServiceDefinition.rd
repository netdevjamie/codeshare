<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="RacePlace.Azure" generation="1" functional="0" release="0" Id="9d0f7209-dc36-4857-b269-9c5cde5b1311" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="RacePlace.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="RacePlace:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/LB:RacePlace:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/LB:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapCertificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="RacePlaceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlaceInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:RacePlace:Endpoint1">
          <toPorts>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapRacePlaceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlaceInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="RacePlace" generation="1" functional="0" release="0" software="C:\Users\Jamie\Documents\Visual Studio 2013\Projects\RacePlace\RacePlace.Azure\csx\Debug\roles\RacePlace" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/SW:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;RacePlace&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;RacePlace&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlaceInstances" />
            <sCSPolicyUpdateDomainMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlaceUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlaceFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="RacePlaceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="RacePlaceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="RacePlaceInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="f16ee234-1599-467e-acea-8217a8010095" ref="Microsoft.RedDog.Contract\ServiceContract\RacePlace.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="577b57e8-630f-411f-9f7b-e3c8ca938d9d" ref="Microsoft.RedDog.Contract\Interface\RacePlace:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="4e483f66-f479-4fe2-b9fc-3854b0c3aa72" ref="Microsoft.RedDog.Contract\Interface\RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>