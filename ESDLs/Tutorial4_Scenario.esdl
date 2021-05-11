<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="Untitled EnergySystem" id="958887e3-56c6-4cea-8509-d744d8818d90" description="">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="428aa630-205e-4c89-a955-dbb11a04a2ef">
    <carriers xsi:type="esdl:Carriers" id="03116711-2733-47fe-ae32-d7a42d60755f">
      <carrier xsi:type="esdl:HeatCommodity" name="Heat" id="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
      <carrier xsi:type="esdl:GasCommodity" name="Gas" id="72435a11-15ee-49de-bacb-6e3949187ed5"/>
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="Untitled Instance" id="12a8229a-9d69-49f6-876b-ac80c6251c38">
    <area xsi:type="esdl:Area" id="4669ddca-3fda-4b2f-ad6a-442a7d54970a" name="Untitled Area">
      <asset xsi:type="esdl:GasHeater" power="6000.0" efficiency="0.9" name="GasHeater_Local" id="6db876e7-a1e7-4c09-9777-2d1600dff4fc" controlStrategy="0c6f736c-d71d-41f9-b613-bbefe3395d95">
        <port xsi:type="esdl:InPort" name="In" carrier="72435a11-15ee-49de-bacb-6e3949187ed5" id="cef73b19-e203-4d75-a713-19d91d535303" connectedTo="0527cba9-41ad-48f0-8778-8e23a561bc24"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4" id="d5a36dc8-4c1a-429f-b8a4-30f46266522f" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.6" id="0bd93fab-30d3-43b5-8606-f49099f062f2" name="GasHeater_Local-MarginalCosts"/>
        </costInformation>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.312391281127931" lat="52.04338488393771"/>
      </asset>
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_Households" id="d8f0c97e-0a57-41fa-bd1c-b19662952901">
        <port xsi:type="esdl:InPort" name="In" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4" id="ff3857c6-f562-4264-9956-bf91ecb2895f" connectedTo="d5a36dc8-4c1a-429f-b8a4-30f46266522f bbfafc2a-21df-43fd-a852-0eb260441fb4">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2016-01-01T00:00:00.000000+0100" measurement="nedu_aardgas_2015-2018" filters="" id="51aa7ff4-faaf-42a2-a13c-d89cffce0839" startDate="2015-01-01T00:00:00.000000+0100" database="energy_profiles" host="http://10.30.2.1" multiplier="50.0" field="G1A" port="8086">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" description="Energy in GJ" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.322519302368165" lat="52.04240823201691"/>
      </asset>
      <asset xsi:type="esdl:Import" name="Import_GasNW_NL" power="1000000.0" id="bdbb7a9e-e8ad-43af-8e66-c78368a61b3b" prodType="FOSSIL">
        <port xsi:type="esdl:OutPort" name="Out" carrier="72435a11-15ee-49de-bacb-6e3949187ed5" id="0527cba9-41ad-48f0-8778-8e23a561bc24" connectedTo="cef73b19-e203-4d75-a713-19d91d535303"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.1" id="dfa5db9e-7aa4-4084-9b0f-cbb807b51a08" name="Import_GasNW_NL-MarginalCosts"/>
        </costInformation>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.30091142654419" lat="52.04441430475168"/>
      </asset>
      <asset xsi:type="esdl:Import" name="Import_ElectricityNW_NL" power="1000000.0" id="a5b291ac-ebde-41a6-b238-3d6e0eec21dc" prodType="FOSSIL">
        <port xsi:type="esdl:OutPort" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="c1a32fd7-eef7-4b93-af9e-fe2819464ea6" connectedTo="679f16f5-b479-4fbe-a049-6d97fac73268"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.301319122314454" lat="52.04087722119348"/>
      </asset>
      <asset xsi:type="esdl:HeatPump" power="3000.0" efficiency="1.0" name="HeatPump_Local" COP="3.0" id="63a497d2-9cd8-4b03-909b-9e48bebe0784" controlStrategy="fb24d6f9-87a8-4196-b8c1-fece3953a644">
        <port xsi:type="esdl:InPort" name="In" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="b8e720b7-6e8e-416d-aa1c-0bba76703bda" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4" id="bbfafc2a-21df-43fd-a852-0eb260441fb4" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.4" id="32fd6660-9a0b-4c0a-bbcc-fc25d4b0dc09" name="HeatPump_63a4-MarginalCosts"/>
        </costInformation>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.311361312866212" lat="52.04034927426732"/>
      </asset>
      <asset xsi:type="esdl:PVPark" surfaceArea="22287" name="PVPark_Local" id="e3ece454-2c6f-400e-abc4-aa0c6581338d">
        <port xsi:type="esdl:OutPort" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="61e3d061-b812-4966-9cc1-1c73d79232bb" connectedTo="679f16f5-b479-4fbe-a049-6d97fac73268">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2016-01-01T00:00:00.000000+0100" measurement="solar_relative_2011-2016" filters="" id="c85be5b0-eaaa-48fb-bcc9-ba0538ea6e5f" startDate="2015-01-01T00:00:00.000000+0100" database="energy_profiles" multiplier="25.0" host="http://10.30.2.1" field="value" port="8086">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" description="Energy in GJ" multiplier="GIGA" physicalQuantity="ENERGY"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" name="PVPark_Local-MarginalCosts" id="ae4ce3cf-b0f7-4ee5-a643-b143107e2ac1" value="0.1"/>
        </costInformation>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.304988384246827" lat="52.03879179450439"/>
            <point xsi:type="esdl:Point" lon="4.307091236114503" lat="52.03925376450173"/>
            <point xsi:type="esdl:Point" lon="4.307820796966554" lat="52.03790743862079"/>
            <point xsi:type="esdl:Point" lon="4.305932521820069" lat="52.03755105145326"/>
          </exterior>
        </geometry>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="ElectricityNetwork_a6e9" id="a6e9adef-5e87-4c3d-99f9-162f60d05c25">
        <port xsi:type="esdl:InPort" name="In" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="679f16f5-b479-4fbe-a049-6d97fac73268" connectedTo="c1a32fd7-eef7-4b93-af9e-fe2819464ea6 61e3d061-b812-4966-9cc1-1c73d79232bb"/>
        <port xsi:type="esdl:OutPort" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="c742d07b-0761-4058-971e-cc7ac6938fc1" connectedTo="b8e720b7-6e8e-416d-aa1c-0bba76703bda 2366933b-f274-4de1-923a-65131203eab4 f0f28be8-d04b-4809-8902-6752ec4dc828"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.305760860443116" lat="52.040124894935474"/>
      </asset>
      <asset xsi:type="esdl:Export" name="Export_Electricity_NW" id="897f883f-4a08-4b7c-9af0-ad154820a27c" power="10000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="2366933b-f274-4de1-923a-65131203eab4" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.01" id="b15d9272-32c4-4f9e-9047-68ebe4684e36" name="Export_Electricity_NW-MarginalCosts"/>
        </costInformation>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.301340579986573" lat="52.03819782606401"/>
      </asset>
      <asset xsi:type="esdl:Battery" controlStrategy="0878e304-4a6d-43ab-ae95-7e76568d9863" fillLevel="0.5" name="Battery_Local" id="b8b3c7cf-11c8-46da-89d0-f87ec7fc6ece" maxDischargeRate="6000.0" capacity="5000000000.0" maxChargeRate="6000.0">
        <port xsi:type="esdl:InPort" name="In" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" id="f0f28be8-d04b-4809-8902-6752ec4dc828" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1"/>
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.308464527130128" lat="52.038867402119706"/>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" id="fb24d6f9-87a8-4196-b8c1-fece3953a644" outPort="bbfafc2a-21df-43fd-a852-0eb260441fb4" name="DrivenByDemand for HeatPump_63a4" energyAsset="63a497d2-9cd8-4b03-909b-9e48bebe0784"/>
    <service xsi:type="esdl:DrivenByDemand" id="0c6f736c-d71d-41f9-b613-bbefe3395d95" outPort="d5a36dc8-4c1a-429f-b8a4-30f46266522f" name="DrivenByDemand for GasHeater_Local" energyAsset="6db876e7-a1e7-4c09-9777-2d1600dff4fc"/>
    <service xsi:type="esdl:StorageStrategy" name="StorageStrategy for Battery_b8b3" id="0878e304-4a6d-43ab-ae95-7e76568d9863" energyAsset="b8b3c7cf-11c8-46da-89d0-f87ec7fc6ece">
      <marginalDischargeCosts xsi:type="esdl:SingleValue" name="marginalChargeCosts for Battery_b8b3" id="51e6715a-0a74-4502-948d-ecde80acbf49" value="0.2"/>
      <marginalChargeCosts xsi:type="esdl:SingleValue" name="marginalChargeCosts for Battery_b8b3" id="2718eacc-452e-4833-ade1-a7c083eac24d" value="0.8"/>
    </service>
  </services>
</esdl:EnergySystem>
