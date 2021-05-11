<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" description="" name="Untitled EnergySystem" id="958887e3-56c6-4cea-8509-d744d8818d90">
  <instance xsi:type="esdl:Instance" name="Untitled Instance" id="12a8229a-9d69-49f6-876b-ac80c6251c38">
    <area xsi:type="esdl:Area" id="4669ddca-3fda-4b2f-ad6a-442a7d54970a" name="Untitled Area">
      <asset xsi:type="esdl:GasHeater" id="6db876e7-a1e7-4c09-9777-2d1600dff4fc" controlStrategy="0c6f736c-d71d-41f9-b613-bbefe3395d95" power="6000.0" efficiency="0.9" name="GasHeater_Local">
        <geometry xsi:type="esdl:Point" lon="4.312391281127931" lat="52.04338488393771" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="cef73b19-e203-4d75-a713-19d91d535303" connectedTo="0527cba9-41ad-48f0-8778-8e23a561bc24" name="In" carrier="72435a11-15ee-49de-bacb-6e3949187ed5"/>
        <port xsi:type="esdl:OutPort" id="d5a36dc8-4c1a-429f-b8a4-30f46266522f" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f" name="Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="0bd93fab-30d3-43b5-8606-f49099f062f2" value="0.6" name="GasHeater_Local-MarginalCosts"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" id="d8f0c97e-0a57-41fa-bd1c-b19662952901" name="HeatingDemand_Households">
        <geometry xsi:type="esdl:Point" lon="4.322519302368165" lat="52.04240823201691" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="ff3857c6-f562-4264-9956-bf91ecb2895f" connectedTo="d5a36dc8-4c1a-429f-b8a4-30f46266522f bbfafc2a-21df-43fd-a852-0eb260441fb4" name="In" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4">
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
      <asset xsi:type="esdl:Import" id="a5b291ac-ebde-41a6-b238-3d6e0eec21dc" prodType="FOSSIL" name="Import_a5b2" power="1000000.0">
        <geometry xsi:type="esdl:Point" lon="4.301319122314454" lat="52.04087722119348" CRS="WGS84"/>
        <port xsi:type="esdl:OutPort" id="c1a32fd7-eef7-4b93-af9e-fe2819464ea6" connectedTo="b8e720b7-6e8e-416d-aa1c-0bba76703bda" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
      </asset>
      <asset xsi:type="esdl:HeatPump" id="63a497d2-9cd8-4b03-909b-9e48bebe0784" controlStrategy="fb24d6f9-87a8-4196-b8c1-fece3953a644" power="3000.0" efficiency="1.0" name="HeatPump_Local" COP="3.0">
        <geometry xsi:type="esdl:Point" lon="4.311361312866212" lat="52.04034927426732" CRS="WGS84"/>
        <port xsi:type="esdl:InPort" id="b8e720b7-6e8e-416d-aa1c-0bba76703bda" connectedTo="c1a32fd7-eef7-4b93-af9e-fe2819464ea6" name="In" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <port xsi:type="esdl:OutPort" id="bbfafc2a-21df-43fd-a852-0eb260441fb4" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f" name="Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="32fd6660-9a0b-4c0a-bbcc-fc25d4b0dc09" value="0.4" name="HeatPump_63a4-MarginalCosts"/>
        </costInformation>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" id="fb24d6f9-87a8-4196-b8c1-fece3953a644" outPort="bbfafc2a-21df-43fd-a852-0eb260441fb4" name="DrivenByDemand for HeatPump_63a4" energyAsset="63a497d2-9cd8-4b03-909b-9e48bebe0784"/>
    <service xsi:type="esdl:DrivenByDemand" id="0c6f736c-d71d-41f9-b613-bbefe3395d95" outPort="d5a36dc8-4c1a-429f-b8a4-30f46266522f" name="DrivenByDemand for GasHeater_Local" energyAsset="6db876e7-a1e7-4c09-9777-2d1600dff4fc"/>
  </services>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="428aa630-205e-4c89-a955-dbb11a04a2ef">
    <carriers xsi:type="esdl:Carriers" id="03116711-2733-47fe-ae32-d7a42d60755f">
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
      <carrier xsi:type="esdl:GasCommodity" name="Gas" id="72435a11-15ee-49de-bacb-6e3949187ed5"/>
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
