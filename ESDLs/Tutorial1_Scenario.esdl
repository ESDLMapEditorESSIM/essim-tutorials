<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" description="" name="Untitled EnergySystem" id="958887e3-56c6-4cea-8509-d744d8818d90">
  <instance xsi:type="esdl:Instance" name="Untitled Instance" id="12a8229a-9d69-49f6-876b-ac80c6251c38">
    <area xsi:type="esdl:Area" id="4669ddca-3fda-4b2f-ad6a-442a7d54970a" name="Untitled Area">
      <asset xsi:type="esdl:GasHeater" id="6db876e7-a1e7-4c09-9777-2d1600dff4fc" controlStrategy="acd4b838-60ad-4209-95cf-6cfa7dba598e" power="6000.0" efficiency="0.9" name="GasHeater_Local">
        <geometry xsi:type="esdl:Point" lon="4.312391281127931" lat="52.04338488393771" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="cef73b19-e203-4d75-a713-19d91d535303" connectedTo="0527cba9-41ad-48f0-8778-8e23a561bc24" name="In" carrier="72435a11-15ee-49de-bacb-6e3949187ed5"/>
        <port xsi:type="esdl:OutPort" id="d5a36dc8-4c1a-429f-b8a4-30f46266522f" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f" name="Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="d8f0c97e-0a57-41fa-bd1c-b19662952901" name="HeatingDemand_Households">
        <geometry xsi:type="esdl:Point" lon="4.322519302368165" lat="52.04240823201691" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="ff3857c6-f562-4264-9956-bf91ecb2895f" connectedTo="d5a36dc8-4c1a-429f-b8a4-30f46266522f" name="In" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4">
          <profile xsi:type="esdl:InfluxDBProfile" multiplier="50.0" database="energy_profiles" field="G1A" id="51aa7ff4-faaf-42a2-a13c-d89cffce0839" port="8086" host="http://10.30.2.1" filters="" endDate="2016-01-01T00:00:00.000000+0100" measurement="nedu_aardgas_2015-2018" startDate="2015-01-01T00:00:00.000000+0100">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" multiplier="GIGA" physicalQuantity="ENERGY" description="Energy in GJ" id="eb07bccb-203f-407e-af98-e687656a221d"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Import" id="bdbb7a9e-e8ad-43af-8e66-c78368a61b3b" prodType="FOSSIL" name="Import_GasNW_NL" power="1000000.0">
        <geometry xsi:type="esdl:Point" lon="4.30091142654419" lat="52.04441430475168" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="0527cba9-41ad-48f0-8778-8e23a561bc24" connectedTo="cef73b19-e203-4d75-a713-19d91d535303" name="Out" carrier="72435a11-15ee-49de-bacb-6e3949187ed5"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="dfa5db9e-7aa4-4084-9b0f-cbb807b51a08" value="0.1" name="Import_GasNW_NL-MarginalCosts"/>
        </costInformation>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemand for GasHeater_Local" id="acd4b838-60ad-4209-95cf-6cfa7dba598e" outPort="d5a36dc8-4c1a-429f-b8a4-30f46266522f" energyAsset="6db876e7-a1e7-4c09-9777-2d1600dff4fc"/>
  </services>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="428aa630-205e-4c89-a955-dbb11a04a2ef">
    <carriers xsi:type="esdl:Carriers" id="03116711-2733-47fe-ae32-d7a42d60755f">
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
      <carrier xsi:type="esdl:GasCommodity" name="Gas" id="72435a11-15ee-49de-bacb-6e3949187ed5"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
