<?xml version="1.0" encoding="iso-8859-1"?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>JSword - Download</title>
  <link rel="stylesheet" type="text/css" href="sword.css"/>
</head>
<body>

<jsp:directive.page import="org.crosswire.jsword.view.web.DownloadSet" contentType="text/html"/>

<jsp:scriptlet><![CDATA[
  String localprefix = application.getInitParameter("localprefix");
  if (localprefix == null)
  	throw new NullPointerException("localprefix");

  String webprefix = application.getInitParameter("webprefix");
  if (webprefix == null)
  	throw new NullPointerException("webprefix");
]]></jsp:scriptlet>

<h1>Download</h1>

<h2>Official Installer Based Releases</h2>
<p>From Version 0.9.6 we are using ZeroG based installers.</p>

<h3>Windows</h3>
<ul>
  <p>After downloading double-click on the downloaded file to install.</p>
  <li>With bundled JVM: <a href="http://www.crosswire.org/ftpmirror/pub/jsword/release/jsword-0.9.6-win-vm.exe">jsword-0.9.6-win-vm.exe</a> (20Mb)</li>
  <li>Without bundled JVM: <a href="http://www.crosswire.org/ftpmirror/pub/jsword/release/jsword-0.9.6-win-novm.exe">jsword-0.9.6-win-novm.exe</a> (7.2Mb)</li>
</ul>

<h3>Linux</h3>
<ul>
  <p>After downloading, cd to the download directory and type:<br />
  <code>sh ./jsword-0.9.6-linux-*.bin</code></p>
  <li>With bundled JVM: <a href="http://www.crosswire.org/ftpmirror/pub/jsword/release/jsword-0.9.6-linux-vm.bin">jsword-0.9.6-linux-vm.bin</a> (40Mb) </li>
  <li>Without bundled JVM: <a href="http://www.crosswire.org/ftpmirror/pub/jsword/release/jsword-0.9.6-linux-novm.bin">jsword-0.9.6-linux-novm.bin</a> (7.3Mb) </li>
</ul>

<h3>MacOS X</h3>
<ul>
  <p>The compressed installer should be recognized by <a href="http://www.aladdinsys.com/expander/index.html">Stuffit Expander</a>, you will need version 6.0 or later.</p>
  <li>Without JVM (Requires JDK 1.4.1): <a href="http://www.crosswire.org/ftpmirror/pub/jsword/release/jsword-0.9.6-osx-novm.zip">jsword-0.9.6-osx-novm.zip</a> (6.8Mb) </li>
</ul>

<h3>Other</h3>
<ul>
  <p>After downloading type:<br />
  <code>java -jar jsword-0.9.6-generic-novm.jar</code></p>
  <li>Without bundled JVM: <a href="http://www.crosswire.org/ftpmirror/pub/jsword/release/jsword-0.9.6-generic-novm.jar">jsword-0.9.6-generic-novm.jar</a> (7.3Mb) </li>
</ul>

<h2>Official Zip/Tar Based Releases</h2>
<p>Version 0.9.5 is the first beta for JSword 1.0.</p>
<table width="90%" align="center" border="1" bordercolor="#000000" cellspacing="0" cellpadding="2">
  <tr>
	<td>-</td>
	<td colspan="2" align="center">Binary</td>
	<td colspan="2" align="center">Source</td>
	<td colspan="2" align="center">Docs</td>
  </tr>
  <tr>
    <td>Compression</td>
    <td>.zip</td>
    <td>.tar.gz</td>
    <td>.zip</td>
    <td>.tar.gz</td>
    <td>.zip</td>
    <td>.tar.gz</td>
  </tr>
  <jsp:scriptlet><![CDATA[
  DownloadSet[] dls = DownloadSet.getDownloadSets(localprefix+"/release", webprefix+"/release", false);
  for (int i=0; i<dls.length; i++)
  {
  ]]></jsp:scriptlet>
  <tr>
	<td><jsp:expression>dls[i].getVersionString()</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.BIN_ZIP)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.BIN_TGZ)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.SRC_ZIP)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.SRC_TGZ)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.DOC_ZIP)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.DOC_TGZ)</jsp:expression></td>
  </tr>
  <jsp:scriptlet><![CDATA[
  }
  ]]></jsp:scriptlet>
</table>


<h2>Nightly Releases</h2>
<p>
Regular releases are made and stored for a short time. You will need to use GNU
tar to extract the doc.tar.gz files, although any tar should do for the others.
</p>

<table width="90%" align="center" border="1" bordercolor="#000000" cellspacing="0" cellpadding="2">
  <tr>
	<td>-</td>
	<td colspan="2" align="center">Binary</td>
	<td colspan="2" align="center">Source</td>
	<td colspan="2" align="center">Docs</td>
  </tr>
  <tr>
    <td>Compression</td>
    <td>.zip</td>
    <td>.tar.gz</td>
    <td>.zip</td>
    <td>.tar.gz</td>
    <td>.zip</td>
    <td>.tar.gz</td>
  </tr>
  <jsp:scriptlet><![CDATA[
  dls = DownloadSet.getDownloadSets(localprefix+"/nightly", webprefix+"/nightly", true);
  for (int i=0; i<dls.length; i++)
  {
  ]]></jsp:scriptlet>
  <tr>
	<td><jsp:expression>dls[i].getDateString()</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.BIN_ZIP)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.BIN_TGZ)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.SRC_ZIP)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.SRC_TGZ)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.DOC_ZIP)</jsp:expression></td>
	<td><jsp:expression>dls[i].getLinkString(DownloadSet.DOC_TGZ)</jsp:expression></td>
  </tr>
  <jsp:scriptlet><![CDATA[
  }
  ]]></jsp:scriptlet>
</table>

<h3>CVS Access</h3>
<p>
The most up to date access is via CVS. There are CVS access instruction 
on the <a href="devt.html">Getting Involved</a> page.
</p>

<h3>Modules</h3>
<p>
Sword modules are available <a href="http://www.crossire.org/sword/modules/index.jsp">here</a>. 
Most of these modules are working with JSword so please report any that fail.
</p>

</body>
</html>
</jsp:root>
