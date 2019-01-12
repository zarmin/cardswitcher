<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="615008140121">
<description>&lt;b&gt;615008140121&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="-4.445" y="5.23" drill="0.75" diameter="1.2"/>
<pad name="2" x="-3.175" y="7.77" drill="0.75" diameter="1.2"/>
<pad name="3" x="-1.905" y="5.23" drill="0.75" diameter="1.2"/>
<pad name="4" x="-0.635" y="7.77" drill="0.75" diameter="1.2"/>
<pad name="5" x="0.635" y="5.23" drill="0.75" diameter="1.2"/>
<pad name="6" x="1.905" y="7.77" drill="0.75" diameter="1.2"/>
<pad name="7" x="3.175" y="5.23" drill="0.75" diameter="1.2"/>
<pad name="8" x="4.445" y="7.77" drill="0.75" diameter="1.2"/>
<pad name="9" x="-7.8" y="-4.17" drill="1.6" diameter="2.4"/>
<pad name="10" x="7.8" y="-4.17" drill="1.6" diameter="2.4"/>
<hole x="-5.715" y="-1.12" drill="3.25"/>
<hole x="5.715" y="-1.12" drill="3.25"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-7.92" y1="9.35" x2="7.92" y2="9.35" width="0.2" layer="51"/>
<wire x1="7.92" y1="9.35" x2="7.92" y2="-9.35" width="0.2" layer="51"/>
<wire x1="7.92" y1="-9.35" x2="-7.92" y2="-9.35" width="0.2" layer="51"/>
<wire x1="-7.92" y1="-9.35" x2="-7.92" y2="9.35" width="0.2" layer="51"/>
<wire x1="-10" y1="10.35" x2="10" y2="10.35" width="0.1" layer="51"/>
<wire x1="10" y1="10.35" x2="10" y2="-10.35" width="0.1" layer="51"/>
<wire x1="10" y1="-10.35" x2="-10" y2="-10.35" width="0.1" layer="51"/>
<wire x1="-10" y1="-10.35" x2="-10" y2="10.35" width="0.1" layer="51"/>
<wire x1="-7.92" y1="-2.47" x2="-7.92" y2="9.35" width="0.1" layer="21"/>
<wire x1="-7.92" y1="9.35" x2="7.92" y2="9.35" width="0.1" layer="21"/>
<wire x1="7.92" y1="9.35" x2="7.92" y2="-2.47" width="0.1" layer="21"/>
<wire x1="-7.92" y1="-5.87" x2="-7.92" y2="-9.35" width="0.1" layer="21"/>
<wire x1="-7.92" y1="-9.35" x2="7.92" y2="-9.35" width="0.1" layer="21"/>
<wire x1="7.92" y1="-9.35" x2="7.92" y2="-5.87" width="0.1" layer="21"/>
<wire x1="-8.6" y1="5.35" x2="-8.6" y2="5.35" width="0.2" layer="21"/>
<wire x1="-8.6" y1="5.35" x2="-8.6" y2="5.15" width="0.2" layer="21" curve="-180"/>
<wire x1="-8.6" y1="5.15" x2="-8.6" y2="5.15" width="0.2" layer="21"/>
<wire x1="-8.6" y1="5.15" x2="-8.6" y2="5.35" width="0.2" layer="21" curve="-180"/>
</package>
</packages>
<symbols>
<symbol name="615008140121">
<wire x1="5.08" y1="2.54" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<text x="19.05" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="19.05" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="3" x="0" y="-2.54" length="middle"/>
<pin name="5" x="0" y="-5.08" length="middle"/>
<pin name="7" x="0" y="-7.62" length="middle"/>
<pin name="9" x="0" y="-10.16" length="middle"/>
<pin name="2" x="22.86" y="0" length="middle" rot="R180"/>
<pin name="4" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="8" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="10" x="22.86" y="-10.16" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="615008140121" prefix="J">
<description>&lt;b&gt;Wurth Elektronik WR-MJ, 615008 Series Series Number Cat5 8 Way Horizontal PCB Mount STP RJ45 Modular Jack, Socket&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/615008140121.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="615008140121" x="0" y="0"/>
</gates>
<devices>
<device name="" package="615008140121">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Wurth Elektronik WR-MJ, 615008 Series Series Number Cat5 8 Way Horizontal PCB Mount STP RJ45 Modular Jack, Socket" constant="no"/>
<attribute name="HEIGHT" value="12mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Wurth Elektronik" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="615008140121" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="710-615008140121" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="J1" library="SamacSys_Parts" deviceset="615008140121" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J1" gate="G$1" x="58.42" y="73.66" smashed="yes">
<attribute name="NAME" x="77.47" y="81.28" size="1.778" layer="95" align="center-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="58.42" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
<label x="53.34" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="53.34" y1="71.12" x2="58.42" y2="71.12" width="0.1524" layer="91"/>
<label x="53.34" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="58.42" y1="68.58" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<label x="53.34" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="C4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="7"/>
<wire x1="58.42" y1="66.04" x2="53.34" y2="66.04" width="0.1524" layer="91"/>
<label x="53.34" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="81.28" y1="73.66" x2="86.36" y2="73.66" width="0.1524" layer="91"/>
<label x="86.36" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="VPP" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="81.28" y1="71.12" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
<label x="86.36" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="DATA" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="81.28" y1="68.58" x2="86.36" y2="68.58" width="0.1524" layer="91"/>
<label x="86.36" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="C8" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="8"/>
<wire x1="81.28" y1="66.04" x2="86.36" y2="66.04" width="0.1524" layer="91"/>
<label x="86.36" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="10"/>
<wire x1="81.28" y1="63.5" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
