<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="RacePlace.Azure" generation="1" functional="0" release="0" Id="900d4652-e944-45d8-8d06-bd90a2d7dfa4" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
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
        <inPort name="RacePlace:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/LB:RacePlace:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapCertificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapCertificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
          </maps>
        </aCS>
        <aCS name="RacePlace:CloudToolsDiagnosticAgentVersion" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:CloudToolsDiagnosticAgentVersion" />
          </maps>
        </aCS>
        <aCS name="RacePlace:IntelliTrace.IntelliTraceConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:IntelliTrace.IntelliTraceConnectionString" />
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
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.CertificateThumbprint" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.CertificateThumbprint" />
          </maps>
        </aCS>
        <aCS name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" />
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
        <sFSwitchChannel name="IE:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector">
          <toPorts>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="IE:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder">
          <toPorts>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder" />
          </toPorts>
        </sFSwitchChannel>
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
        <lBChannel name="LB:RacePlace:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint">
          <toPorts>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" />
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
        <map name="MapCertificate|RacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" kind="Identity">
          <certificate>
            <certificateMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
          </certificate>
        </map>
        <map name="MapRacePlace:CloudToolsDiagnosticAgentVersion" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/CloudToolsDiagnosticAgentVersion" />
          </setting>
        </map>
        <map name="MapRacePlace:IntelliTrace.IntelliTraceConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/IntelliTrace.IntelliTraceConnectionString" />
          </setting>
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
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.CertificateThumbprint" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteDebugger.CertificateThumbprint" />
          </setting>
        </map>
        <map name="MapRacePlace:Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" />
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
          <role name="RacePlace" generation="1" functional="0" release="0" software="C:\Users\Jamie\Documents\Visual Studio 2013\Projects\RacePlace\RacePlace.Azure\csx\Release\roles\RacePlace" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" protocol="tcp" portRanges="8172" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/SW:RacePlace:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="CloudToolsDiagnosticAgentVersion" defaultValue="" />
              <aCS name="IntelliTrace.IntelliTraceConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.CertificateThumbprint" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;RacePlace&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;RacePlace&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Connector&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteDebugger.Forwarder&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
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
              <storedCertificate name="Stored1Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace/Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteDebugger.TransportValidation" />
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
    <implementation Id="fbfc5bd4-ef0c-419d-bf74-133b42c53833" ref="Microsoft.RedDog.Contract\ServiceContract\RacePlace.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="2ef980c9-f17f-46cd-8fc9-a8b6612a9689" ref="Microsoft.RedDog.Contract\Interface\RacePlace:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="dabc8fa8-3ef1-4d5d-b652-80f2590118f0" ref="Microsoft.RedDog.Contract\Interface\RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="ddf162e3-5cb6-4da7-b9cf-3df238693296" ref="Microsoft.RedDog.Contract\Interface\RacePlace:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/RacePlace.Azure/RacePlace.AzureGroup/RacePlace:Microsoft.WindowsAzure.Plugins.WebDeploy.InputEndpoint" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>