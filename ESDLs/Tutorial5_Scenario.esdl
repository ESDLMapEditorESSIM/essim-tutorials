<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" description="" name="Untitled EnergySystem" id="958887e3-56c6-4cea-8509-d744d8818d90">
  <instance xsi:type="esdl:Instance" id="12a8229a-9d69-49f6-876b-ac80c6251c38" name="Untitled Instance">
    <area xsi:type="esdl:Area" name="Untitled Area" id="4669ddca-3fda-4b2f-ad6a-442a7d54970a">
      <asset xsi:type="esdl:HeatingDemand" name="HeatingDemand_Households" id="d8f0c97e-0a57-41fa-bd1c-b19662952901">
        <port xsi:type="esdl:InPort" id="ff3857c6-f562-4264-9956-bf91ecb2895f" name="In" connectedTo="bbfafc2a-21df-43fd-a852-0eb260441fb4 0dd0de2b-a254-4db9-b758-970c3b3cbeea" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2016-01-01T00:00:00.000000+0100" filters="" measurement="nedu_aardgas_2015-2018" field="G1A" startDate="2015-01-01T00:00:00.000000+0100" port="8086" database="energy_profiles" id="51aa7ff4-faaf-42a2-a13c-d89cffce0839" multiplier="50.0" host="http://10.30.2.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" description="Energy in GJ" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" multiplier="GIGA"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lon="4.322519302368165" lat="52.04240823201691" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Import" power="1000000.0" name="Import_ElectricityNW_NL" id="a5b291ac-ebde-41a6-b238-3d6e0eec21dc" prodType="FOSSIL">
        <port xsi:type="esdl:OutPort" id="c1a32fd7-eef7-4b93-af9e-fe2819464ea6" connectedTo="679f16f5-b479-4fbe-a049-6d97fac73268" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <geometry xsi:type="esdl:Point" lon="4.301319122314454" lat="52.04087722119348" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:HeatPump" controlStrategy="fb24d6f9-87a8-4196-b8c1-fece3953a644" power="3000.0" efficiency="1.0" COP="3.0" name="HeatPump_Local" id="63a497d2-9cd8-4b03-909b-9e48bebe0784">
        <port xsi:type="esdl:InPort" id="b8e720b7-6e8e-416d-aa1c-0bba76703bda" name="In" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <port xsi:type="esdl:OutPort" id="bbfafc2a-21df-43fd-a852-0eb260441fb4" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f" name="Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" value="0.4" name="HeatPump_63a4-MarginalCosts" id="32fd6660-9a0b-4c0a-bbcc-fc25d4b0dc09"/>
        </costInformation>
        <geometry xsi:type="esdl:Point" lon="4.311361312866212" lat="52.04034927426732" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:PVPark" surfaceArea="22287" name="PVPark_Local" id="e3ece454-2c6f-400e-abc4-aa0c6581338d">
        <port xsi:type="esdl:OutPort" id="61e3d061-b812-4966-9cc1-1c73d79232bb" connectedTo="679f16f5-b479-4fbe-a049-6d97fac73268" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2016-01-01T00:00:00.000000+0100" filters="" measurement="solar_relative_2011-2016" field="value" startDate="2015-01-01T00:00:00.000000+0100" port="8086" database="energy_profiles" id="9ed611a8-c2de-4136-b058-a6add27eb248" multiplier="35.0" host="http://10.30.2.1">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" physicalQuantity="ENERGY" unit="JOULE" id="eb07bccb-203f-407e-af98-e687656a221d" multiplier="GIGA"/>
          </profile>
        </port>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" name="PVPark_Local-MarginalCosts" value="0.1" id="ae4ce3cf-b0f7-4ee5-a643-b143107e2ac1"/>
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
        <port xsi:type="esdl:InPort" id="679f16f5-b479-4fbe-a049-6d97fac73268" name="In" connectedTo="c1a32fd7-eef7-4b93-af9e-fe2819464ea6 61e3d061-b812-4966-9cc1-1c73d79232bb 67ef164b-d40f-4f6f-bad3-f5c8b9d0fc83 1f56212a-2a89-4e9f-bd2f-083c18fb484f" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <port xsi:type="esdl:OutPort" id="c742d07b-0761-4058-971e-cc7ac6938fc1" connectedTo="b8e720b7-6e8e-416d-aa1c-0bba76703bda f0f28be8-d04b-4809-8902-6752ec4dc828 53f17443-bf27-49cf-b213-3dfc9562d446 2306af0d-d694-4c56-841b-dd9185ea53f6" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <geometry xsi:type="esdl:Point" lon="4.305760860443116" lat="52.040124894935474" CRS="WGS84"/>
      </asset>
      <asset xsi:type="esdl:Battery" maxChargeRate="10000.0" controlStrategy="0878e304-4a6d-43ab-ae95-7e76568d9863" fillLevel="0.2" name="Battery_Local" id="b8b3c7cf-11c8-46da-89d0-f87ec7fc6ece" maxDischargeRate="10000.0" capacity="30000000000.0">
        <port xsi:type="esdl:InPort" id="f0f28be8-d04b-4809-8902-6752ec4dc828" name="In" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <geometry xsi:type="esdl:Point" lat="52.038867402119706" CRS="WGS84" lon="4.308464527130128"/>
      </asset>
      <asset xsi:type="esdl:ElectricityDemand" name="ElectricityDemand_Local" id="f52a2810-dcf3-4891-a83d-62ad930c7a6e">
        <port xsi:type="esdl:InPort" id="2306af0d-d694-4c56-841b-dd9185ea53f6" name="In" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2016-01-01T00:00:00.000000+0100" host="http://10.30.2.1" measurement="nedu_elektriciteit_2015-2018" filters="" startDate="2015-01-01T00:00:00.000000+0100" database="energy_profiles" id="cc245a91-7bc3-480b-a60b-aec40275ed75" multiplier="10.0" field="E1A" port="8086">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" physicalQuantity="ENERGY" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" multiplier="GIGA"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Point" lat="52.03880499371342" CRS="WGS84" lon="4.311790466308595"/>
      </asset>
      <asset xsi:type="esdl:WindPark" surfaceArea="14554" name="WindPark_Local" id="0fb58b35-d6e2-4a9b-b918-868a555219f3">
        <port xsi:type="esdl:OutPort" id="67ef164b-d40f-4f6f-bad3-f5c8b9d0fc83" connectedTo="679f16f5-b479-4fbe-a049-6d97fac73268" name="Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c">
          <profile xsi:type="esdl:InfluxDBProfile" endDate="2016-01-01T00:00:00.000000+0100" host="http://10.30.2.1" measurement="wind-2015" filters="" startDate="2015-01-01T00:00:00.000000+0100" database="energy_profiles" id="4b184bc3-2bdc-4350-b1fa-c13faefe2679" multiplier="100.0" field="Wind-op-land" port="8086">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" physicalQuantity="ENERGY" id="eb07bccb-203f-407e-af98-e687656a221d" unit="JOULE" multiplier="GIGA"/>
          </profile>
        </port>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.037234260474705" lon="4.30891513824463"/>
            <point xsi:type="esdl:Point" lat="52.03773584515403" lon="4.310224056243897"/>
            <point xsi:type="esdl:Point" lat="52.03645547310962" lon="4.311232566833497"/>
            <point xsi:type="esdl:Point" lat="52.036217874263414" lon="4.309837818145753"/>
          </exterior>
        </geometry>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="HydrogenNetwork" id="7526f850-0e6f-43dd-9d2a-f5ec6ebff782">
        <port xsi:type="esdl:InPort" id="ff9b0e58-738f-451c-bcaf-b2c56305e33c" name="In" carrier="78ee3a0f-9e4c-4140-8644-cd16e2460c08" connectedTo="44c32a99-978b-495e-b3c9-78060aef6d46"/>
        <port xsi:type="esdl:OutPort" id="70915ac0-e396-4a05-86d1-db0ab6ae49e8" connectedTo="64ae8bce-3b27-4231-b4cf-2a25572636bf 18ba5739-a03e-4b3c-94d8-a75cbb035669" name="Out" carrier="78ee3a0f-9e4c-4140-8644-cd16e2460c08"/>
        <geometry xsi:type="esdl:Point" lat="52.04325290519551" CRS="WGS84" lon="4.305481910705567"/>
      </asset>
      <asset xsi:type="esdl:Electrolyzer" controlStrategy="106d0e53-619a-4d2b-80d5-79d9289a1b83" power="500000.0" efficiency="0.55" name="Electrolyzer_Local" id="6f3b39c5-4cea-4cb9-a494-2a10c958a781">
        <port xsi:type="esdl:InPort" id="53f17443-bf27-49cf-b213-3dfc9562d446" name="In" connectedTo="c742d07b-0761-4058-971e-cc7ac6938fc1" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <port xsi:type="esdl:OutPort" id="44c32a99-978b-495e-b3c9-78060aef6d46" connectedTo="ff9b0e58-738f-451c-bcaf-b2c56305e33c" name="Out" carrier="78ee3a0f-9e4c-4140-8644-cd16e2460c08"/>
        <geometry xsi:type="esdl:Point" lat="52.04180111330977" CRS="WGS84" lon="4.30567502975464"/>
      </asset>
      <asset xsi:type="esdl:FuelCell" electricalEfficiency="0.4" controlStrategy="d28c844e-7629-4c0e-87cd-22dbe6c057c8" power="500000.0" efficiency="0.9" leadCommodity="HEAT" fuelType="HYDROGEN" name="FuelCell_Local" heatEfficiency="0.6" id="1849a710-18ae-4fd5-b104-17fa068cf58f">
        <port xsi:type="esdl:InPort" id="64ae8bce-3b27-4231-b4cf-2a25572636bf" name="In" connectedTo="70915ac0-e396-4a05-86d1-db0ab6ae49e8" carrier="78ee3a0f-9e4c-4140-8644-cd16e2460c08"/>
        <port xsi:type="esdl:OutPort" id="1f56212a-2a89-4e9f-bd2f-083c18fb484f" connectedTo="679f16f5-b479-4fbe-a049-6d97fac73268" name="E Out" carrier="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c"/>
        <port xsi:type="esdl:OutPort" id="0dd0de2b-a254-4db9-b758-970c3b3cbeea" connectedTo="ff3857c6-f562-4264-9956-bf91ecb2895f" name="H Out" carrier="5b28f3d6-4e34-4528-a304-0d1de417a1e4"/>
        <geometry xsi:type="esdl:Point" lat="52.0429493526095" CRS="WGS84" lon="4.309000968933106"/>
      </asset>
      <asset xsi:type="esdl:GasStorage" maxChargeRate="10000.0" capacity="60000000000.0" maxDischargeRate="10000.0" name="HydrogenStorage_Local" id="9b3f0962-e9ae-4137-b37b-5fbff43e5177">
        <port xsi:type="esdl:InPort" id="18ba5739-a03e-4b3c-94d8-a75cbb035669" name="In" connectedTo="70915ac0-e396-4a05-86d1-db0ab6ae49e8" carrier="78ee3a0f-9e4c-4140-8644-cd16e2460c08"/>
        <geometry xsi:type="esdl:Point" lat="52.043279300975136" CRS="WGS84" lon="4.301576614379884"/>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services">
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemand for HeatPump_63a4" energyAsset="63a497d2-9cd8-4b03-909b-9e48bebe0784" outPort="bbfafc2a-21df-43fd-a852-0eb260441fb4" id="fb24d6f9-87a8-4196-b8c1-fece3953a644"/>
    <service xsi:type="esdl:StorageStrategy" energyAsset="b8b3c7cf-11c8-46da-89d0-f87ec7fc6ece" name="StorageStrategy for Battery_b8b3" id="0878e304-4a6d-43ab-ae95-7e76568d9863">
      <marginalDischargeCosts xsi:type="esdl:SingleValue" name="marginalChargeCosts for Battery_b8b3" value="0.2" id="51e6715a-0a74-4502-948d-ecde80acbf49"/>
      <marginalChargeCosts xsi:type="esdl:SingleValue" name="marginalChargeCosts for Battery_b8b3" value="0.8" id="2718eacc-452e-4833-ade1-a7c083eac24d"/>
    </service>
    <service xsi:type="esdl:DrivenBySupply" name="DrivenBySupply for Electrolyzer_Local" energyAsset="6f3b39c5-4cea-4cb9-a494-2a10c958a781" inPort="53f17443-bf27-49cf-b213-3dfc9562d446" id="106d0e53-619a-4d2b-80d5-79d9289a1b83"/>
    <service xsi:type="esdl:DrivenByDemand" name="DrivenByDemand for FuelCell_Local" energyAsset="1849a710-18ae-4fd5-b104-17fa068cf58f" outPort="0dd0de2b-a254-4db9-b758-970c3b3cbeea" id="d28c844e-7629-4c0e-87cd-22dbe6c057c8"/>
  </services>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="428aa630-205e-4c89-a955-dbb11a04a2ef">
    <carriers xsi:type="esdl:Carriers" id="03116711-2733-47fe-ae32-d7a42d60755f">
      <carrier xsi:type="esdl:HeatCommodity" id="5b28f3d6-4e34-4528-a304-0d1de417a1e4" name="Heat"/>
      <carrier xsi:type="esdl:GasCommodity" id="72435a11-15ee-49de-bacb-6e3949187ed5" name="Gas"/>
      <carrier xsi:type="esdl:ElectricityCommodity" id="27e3b1ae-2a8b-46f2-b7d3-b5ec74ffe98c" name="Electricity"/>
      <carrier xsi:type="esdl:EnergyCarrier" id="78ee3a0f-9e4c-4140-8644-cd16e2460c08" energyCarrierType="RENEWABLE" energyContent="120000000.0" name="Hydrogen" stateOfMatter="GASEOUS">
        <energyContentUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" perUnit="GRAM" perMultiplier="KILO" unit="JOULE" multiplier="MEGA"/>
        <emissionUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="EMISSION" perUnit="JOULE" perMultiplier="GIGA" unit="GRAM" multiplier="KILO"/>
      </carrier>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
