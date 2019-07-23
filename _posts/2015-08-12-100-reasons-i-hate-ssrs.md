---
layout: post
title: 100 reasons I hate ssrs
date: '2015-08-12T19:01:00.004Z'
author: Tim Abell
tags: 
modified_time: '2016-11-15T11:49:21.321Z'
blogger_id: tag:blogger.com,1999:blog-5082828566240519947.post-875301386032121102
blogger_orig_url: https://timwise.blogspot.com/2015/08/100-reasons-i-hate-ssrs.html
---

A slightly tongue-in cheek hit-list of nasty things and vague hand-waving opinions on what makes microsoft's sql server reporting services (ssrs) such a pig to work with.  

I don't really know of anything better so this is mostly just pointless ranting; but I'll justify it to myself by saying at least you'll know what you're getting into if you've read this before you start. SSRS seems to be more "death by one thousand paper cuts" than completely broken, so it's not so easy to say "it's shit, shalln't use it" like any good prima-donna developer would. Sorry I mean rock-star (recruiter speak). It also offers a few features that would be pretty hard to code from hand cost-effectively in something like asp.net mvc, such as user editing, multiple export formats, scheduled emails, and some of the ways you can cut-and-shut the data in the reports.  

I make no apologies for the colourful language, it's a representation of the emotional side of having to use this heap of crap.  

1.  [http://www.allenkinsel.com/archive/2013/01/adventures-in-ssrs](http://www.allenkinsel.com/archive/2013/01/adventures-in-ssrs)
2.  doesn't bind to a port like a normal fukcing service

1.  [http://blogs.devhorizon.com/reza/2008/10/20/say-goodbye-to-iis-say-hello-to-httpsys/](http://blogs.devhorizon.com/reza/2008/10/20/say-goodbye-to-iis-say-hello-to-httpsys/)
2.  [http://www.iis.net/learn/get-started/introduction-to-iis/introduction-to-iis-architecture#Hypertext](http://www.iis.net/learn/get-started/introduction-to-iis/introduction-to-iis-architecture#Hypertext)
3.  [https://social.technet.microsoft.com/Forums/sqlserver/en-US/f2586aca-78fe-40d6-9bcd-5151bac7136f/role-of-httpsys-in-ssrs-2008-?forum=sqlreportingservices](https://social.technet.microsoft.com/Forums/sqlserver/en-US/f2586aca-78fe-40d6-9bcd-5151bac7136f/role-of-httpsys-in-ssrs-2008-?forum=sqlreportingservices)
4.  [http://blogs.technet.com/b/andrew/archive/2007/12/04/sql-server-2008-reporting-services-no-longer-depends-on-iis.aspx](http://blogs.technet.com/b/andrew/archive/2007/12/04/sql-server-2008-reporting-services-no-longer-depends-on-iis.aspx)
5.  http server api (aka http.sys)

1.  [https://msdn.microsoft.com/en-us/library/aa364510%28VS.85%29.aspx?f=255&MSPPError=-2147217396](https://msdn.microsoft.com/en-us/library/aa364510%28VS.85%29.aspx?f=255&MSPPError=-2147217396)

2.  list reservations:

1.  `netsh http show urlacl`

5.  auth in reporting [https://msdn.microsoft.com/en-us/library/ms152899.aspx](https://msdn.microsoft.com/en-us/library/ms152899.aspx)
6.  reports in VS

1.  [http://curah.microsoft.com/22200/create-ssrs-reports-using-visual-studio](http://curah.microsoft.com/22200/create-ssrs-reports-using-visual-studio)
2.  [https://msdn.microsoft.com/en-us/library/ms173745.aspx](https://msdn.microsoft.com/en-us/library/ms173745.aspx)

8.  "Explicity add new role assingment for the account you are using and check every box in sight" ~ a.n. colleague.  lol
9.  ignore the .rdl.data files with git.

1.  [http://stackoverflow.com/questions/3424928/in-ssrs-is-there-a-way-to-disable-the-rdl-data-file-creation#3425429](http://stackoverflow.com/questions/3424928/in-ssrs-is-there-a-way-to-disable-the-rdl-data-file-creation#3425429)

11.  no folders.

1.  [https://connect.microsoft.com/SQLServer/feedback/details/487106/allow-sub-folders-in-ssrs-projects](https://connect.microsoft.com/SQLServer/feedback/details/487106/allow-sub-folders-in-ssrs-projects)
2.  [http://stackoverflow.com/questions/3309002/visual-studio-for-ssrs-2008-how-to-organize-reports-into-subfolders-in-solutio](http://stackoverflow.com/questions/3309002/visual-studio-for-ssrs-2008-how-to-organize-reports-into-subfolders-in-solutio)

13.  renamed a dataset, nothing fucking broke!!!!!!!!!!!!!!!!!!!!!!!!!!! even though there are reports that depend on it. On editing the report's dataset list you can see clearly "not found", but yet it still runs. what in the blazes is that all about?

1.  caching in the report editor [http://stackoverflow.com/q/3424928/10245](http://stackoverflow.com/q/3424928/10245)
2.  kill the .data cache files [http://stackoverflow.com/questions/3424928/in-ssrs-is-there-a-way-to-disable-the-rdl-data-file-creation](http://stackoverflow.com/questions/3424928/in-ssrs-is-there-a-way-to-disable-the-rdl-data-file-creation)
3.  git clean -xfd
4.  fuck
5.  [https://social.msdn.microsoft.com/Forums/sqlserver/en-US/0aa81692-352f-4c1f-a0e3-95fe6c0797ca/cachedataforpreview-in-rsreportdesignerconfig-not-honored](https://social.msdn.microsoft.com/Forums/sqlserver/en-US/0aa81692-352f-4c1f-a0e3-95fe6c0797ca/cachedataforpreview-in-rsreportdesignerconfig-not-honored)
6.  [https://connect.microsoft.com/SQLServer/feedback/details/468482](https://connect.microsoft.com/SQLServer/feedback/details/468482)
7.  it's the `bin\` folder, not the .data files. Still, fuckkkk.

15.  to get from a report to a db you go, report > report dataset > shared dataset > db, but db is defined in the shared dataset with another name, which can be pointed to a shared data source, which is also named. and *that* data source actually has a connection string
16.  committing to tfs failed half way through because vs had locked a bunch of files I didn't even have open
17.  found a param with <Value>=Microsoft.VisualBasic.Strings.Join(Parameters!Stages.Label, ", ")</Value> - wtf.
18.  function overload matching warning wouldn't go away till I closed the sln
19.  localisation is a bitch

1.  [http://stackoverflow.com/questions/10953629/how-to-change-ssrs-2008-locale](http://stackoverflow.com/questions/10953629/how-to-change-ssrs-2008-locale) etc
2.  [http://blog.ponytailbob.com/2007/10/multi-language-tips-in-ssrs.html](http://blog.ponytailbob.com/2007/10/multi-language-tips-in-ssrs.html)
3.  [http://blogs.msdn.com/b/sriram_reddy1/archive/2012/01/09/localization-in-ssrs-reports.aspx](http://blogs.msdn.com/b/sriram_reddy1/archive/2012/01/09/localization-in-ssrs-reports.aspx)
4.  [https://support.microsoft.com/en-gb/kb/919153](https://support.microsoft.com/en-gb/kb/919153)
5.  [http://www.keepitsimpleandfast.com/2011/09/localization-of-your-ssrs-reports.html](http://www.keepitsimpleandfast.com/2011/09/localization-of-your-ssrs-reports.html)
6.  why you no use User!Language??

21.  Visual Studio 2013 crashed. hard. while cancelling new report param
22.  adds 00:00:00 to date fields from sql server. duuuuuuuuuuuuh (goes via .net datetime internally, but even so, not friendly)
23.  changed date format, looks fine in VS, but no change in report server. wuh? deploy all
24.  no auto-sizing of cols [http://stackoverflow.com/questions/7851045/ssrs-tablix-column-cangrow-property-for-width](http://stackoverflow.com/questions/7851045/ssrs-tablix-column-cangrow-property-for-width)
25.  no nulls in multi-value [http://www.keepitsimpleandfast.com/2012/03/how-to-pass-null-value-to-multi-value.html](http://www.keepitsimpleandfast.com/2012/03/how-to-pass-null-value-to-multi-value.html)
26.  need dirty hack to show "all" rather than full list

1.  [http://www.mssqltips.com/sqlservertip/2844/working-with-multiselect-parameters-for-ssrs-reports/](http://www.mssqltips.com/sqlservertip/2844/working-with-multiselect-parameters-for-ssrs-reports/)
2.  [http://stackoverflow.com/questions/12917261/optional-multi-valued-parameters-in-ssrs](http://stackoverflow.com/questions/12917261/optional-multi-valued-parameters-in-ssrs)
3.  [http://www.bi-rootdata.com/2012/09/efficient-way-of-using-all-as-parameter.html](http://www.bi-rootdata.com/2012/09/efficient-way-of-using-all-as-parameter.html)
4.  [http://blog.ponytailbob.com/2007/10/2-shortcomings-of-multi-valued.html](http://blog.ponytailbob.com/2007/10/2-shortcomings-of-multi-valued.html)

28.  some fucking horror I've yet to encounter (querystrings) [http://stackoverflow.com/questions/512105/passing-multiple-values-for-a-single-parameter-in-reporting-services](http://stackoverflow.com/questions/512105/passing-multiple-values-for-a-single-parameter-in-reporting-services)
29.  it has a fucking canvas size that will push over to 2 pages
30.  the font kerning on a print is massively different to on web / design view
31.  sorting

1.  [http://stackoverflow.com/questions/9254604/why-does-my-sql-server-reporting-service-ssrs-report-appear-to-re-sort-the-d](http://stackoverflow.com/questions/9254604/why-does-my-sql-server-reporting-service-ssrs-report-appear-to-re-sort-the-d)

33.  "Index was out of range. Must be non-negative and less than the size of the collection. Parameter name: index " from editing xml. thanks for the error info. fuckkkkkers
34.  the ssrs gui editor is a flaky piece of shit

1.  doesn't select the right fucking textbox in the props window
2.  had to restart visual fuckigjn studio
3.  grrr

36.  the underlying xml is fucking horrific
37.  <rd:Selected>true</rd:Selected> ----- what in the fucking blazes is that doing in there?
38.  how do you deploy without connecting visual studio to production server? you fucking don't hahahahahaa
39.  powerhell [https://gist.github.com/timabell/7e3019bd2de802f0b259](https://gist.github.com/timabell/7e3019bd2de802f0b259)
40.  ssbi install croaked - h[ttps://support.microsoft.com/en-us/kb/2800050?wa=wsignin1.0](ttps://support.microsoft.com/en-us/kb/2800050?wa=wsignin1.0)
41.  [09:44:53] john doe: Tim can I have a .bak file of ReportServer$MSSQL2012TempDB which the stupid software seems to be unable to operate without even though it has Temp in the database name implying it will rebuild itself (at least that's what it implies to me)

1.  [09:47:48] Tim Abell: (facepalm)
2.  [09:47:49] Tim Abell: sure
3.  [09:48:08] Tim Abell: I did wonder, and then I thought, no they couldn't possibly need that

43.  dropdown doesn't work in firefox
44.  no debugging [http://stackoverflow.com/a/14068447/10245](http://stackoverflow.com/a/14068447/10245)
45.  Warning : The text box ‘appliedFilters’ and the image ‘urLogo’ overlap. Overlapping report items are not supported in all renderers.
46.  the only options for DRY in reports suck balls [http://www.3pillarglobal.com/insights/tips-tricks-ensure-consistency-sql-server-reporting-services-reports](http://www.3pillarglobal.com/insights/tips-tricks-ensure-consistency-sql-server-reporting-services-reports)
47.  [http://harmful.cat-v.org/software/xml/](http://harmful.cat-v.org/software/xml/) xml is a terrible format anyway
48.  layout is in inches
49.  you can change the layout to cm
50.  it stores different metrics (cm/in) for each element, wtf, pick a unit
51.  reflowing nicely is impossible
52.  layout engine is as intelligent as a piece of paper and a pen. x,y is all you get.
53.  [http://www.webapplicationsuk.com/2010/07/word-html-renderer-ndash-the-road-to-hellhellip/](http://www.webapplicationsuk.com/2010/07/word-html-renderer-ndash-the-road-to-hellhellip/)
54.  [https://connect.microsoft.com/SQLServer/feedback/details/540183/supported-rdl-object-model-rdlom](https://connect.microsoft.com/SQLServer/feedback/details/540183/supported-rdl-object-model-rdlom)
55.  this is the kind of bullshit that counts for helpful content on the net [https://social.msdn.microsoft.com/Forums/en-US/86205ca4-13d0-4ca6-84f1-79797616f0f4/exclude-null-values-from-sum-and-avg-calculation?forum=sqlreportingservices](https://social.msdn.microsoft.com/Forums/en-US/86205ca4-13d0-4ca6-84f1-79797616f0f4/exclude-null-values-from-sum-and-avg-calculation?forum=sqlreportingservices) - =sum(forum_format * quality_of_community) = errorrrrrrrrr
56.  multiple rdl xml schema in the same fucking project, completely different xml structure

1.  2005 generated with "new report wizard" in VS 20-fucking-13: <Report xmlns="http://schemas.microsoft.com/sqlserver/reporting/2005/01/reportdefinition" xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner">
2.  2008 <Report xmlns="http://schemas.microsoft.com/sqlserver/reporting/2008/01/reportdefinition" xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner">
3.  2009 from https://technet.microsoft.com/en-us/library/cc627465%28v=sql.105%29.aspx - <Report xmlns:rd=http://schemas.microsoft.com/SQLServer/reporting/reportdesigner xmlns="http://schemas.microsoft.com/sqlserver/reporting/2009/01/reportdefinition">
4.  2010 <Report xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" xmlns:cl="http://schemas.microsoft.com/sqlserver/reporting/2010/01/componentdefinition" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2010/01/reportdefinition">
5.  how many fucking versions??!
6.  [http://stackoverflow.com/questions/15539859/what-is-the-difference-between-rdl-2008-schema-and-rdl-2010-schema-feature-wise](http://stackoverflow.com/questions/15539859/what-is-the-difference-between-rdl-2008-schema-and-rdl-2010-schema-feature-wise)
7.  [http://stackoverflow.com/questions/9974179/is-there-a-new-version-of-rdl-schema-for-sql-server-2012-denali](http://stackoverflow.com/questions/9974179/is-there-a-new-version-of-rdl-schema-for-sql-server-2012-denali)
8.  [http://stackoverflow.com/questions/29951653/ssrs-2008r2-visual-studio-2008-and-2008-and-2010-schemas](http://stackoverflow.com/questions/29951653/ssrs-2008r2-visual-studio-2008-and-2008-and-2010-schemas) - how to not end up with old schema?!
9.  [https://social.msdn.microsoft.com/Forums/sqlserver/en-US/f4d14548-c592-4d8d-8185-ca683c421649/2010-schema-with-visual-studio-2010?forum=sqlreportingservices](https://social.msdn.microsoft.com/Forums/sqlserver/en-US/f4d14548-c592-4d8d-8185-ca683c421649/2010-schema-with-visual-studio-2010?forum=sqlreportingservices)

58.  how do you upgrade a report schema? install a massive chunk of fucking sql server [http://stackoverflow.com/questions/13170608/upgrade-my-rdlc-schema-from-2008-01-to-2010-01](http://stackoverflow.com/questions/13170608/upgrade-my-rdlc-schema-from-2008-01-to-2010-01)
59.  [17:54:48] john doe: Btw have you noticed that in Print Layout view the header doesn't expand if any of the textboxes have auto-grown? [17:55:14] Tim Abell: that's because ssrs is a piece of shit from 1990 [17:55:28] Tim Abell: and it thinks A4 is the ultimate display format [17:55:47] Tim Abell: you just have to guess how much space you'll need
60.  the ordering of the xml in the proj file is unstable causing diff noise
61.  subreports, icky [http://bhushan.extreme-advice.com/subreport-in-ssrs/](http://bhushan.extreme-advice.com/subreport-in-ssrs/)

1.  or nested tables [http://stackoverflow.com/questions/11335655/filtering-nested-data-regions-in-ssrs](http://stackoverflow.com/questions/11335655/filtering-nested-data-regions-in-ssrs)

63.  some things can only be achieved with subreports, and they have to be deployed separately from the main report, meaning they can get out of sync. enjoy the fear of not knowing if you'll break something else when you upload your new version of the subreport you depend on
64.  no support for "time" data type [http://stackoverflow.com/questions/3846378/displaying-time-in-reporting-services-2008](http://stackoverflow.com/questions/3846378/displaying-time-in-reporting-services-2008)
65.  The "View Report" button next to the parameters when running a report in VS is *always* greyed-out, even though it actually works.
66.  wow that's mental, hidden reports show in details view and not in tile view in the ssrs web ui
67.  the report editor has a copy option for report items, but no paste, so you can't duplicate reports

1.  actually you can, but only if you know the keyboard shortcuts. 0_o - ctrl-c ctrl-v

69.  duplicating a report on the filesystem, and then using "add existing item" to include it puts it at the end of the list... until you rename it and then it's moved into alphabetical order causing a spurious diff. should have put in the right place in the first place. grr.
70.  using the cursor keys to move textboxes around is so laggy that I overshoot every single time
71.  the editor popups in visual studio are modal, so you can't refer to anything else
72.  and there's no maximise button so you have to drag the fiddly border to make it bigger
73.  the report editor hasn't heard of ctrl-c or ctrl-v, have to use ctrl-Ins / shift-Ins instead
74.  border rendering / precedence is a fucking mess. set some borders, your report will look like a two-year-old coloured it in, and how it looks changes depending on the zoom level.
75.  you have to use VB to do alternate row colours - [http://stackoverflow.com/questions/44376/add-alternating-row-color-to-sql-server-reporting-services-report](http://stackoverflow.com/questions/44376/add-alternating-row-color-to-sql-server-reporting-services-report)
76.  if anything goes wrong with an expression all you get is "#Error". Helpful. E.g. [http://stackoverflow.com/q/9144312/10245](http://stackoverflow.com/q/9144312/10245)
77.  this one time, at band camp, I edited a report definition in VS and it refused to save the new definition to disk (ctrl-shift-s, ctrl-shift-s!!). wtf. Restarted VS and all the changes were gone.
78.  report editor silently adds new parameters to the report when you add new parameters to the sql. seriously. fuck off.
79.  RSI-inducing UI for editing the reports. click click click clickity click
80.  the sql editor has only a single undo. like ye olde notepad.
81.  in the editor, you can right-click copy, you can't right-click paste. wtf. ctrl-v does paste though. wtf again. I know, I already said it, but it's reaaaaaly shit
82.  the field list on a dataset is ordinal, allowing you to mismatch the select in the sql from the list of fields in the dataset and not notice
83.  how do you align a textbox on the page?  
                  <Top>0.82546cm</Top>  
                  <Left>0.07309cm</Left>  
                  <Height>0.88964cm</Height>  
                  <Width>2.3025cm</Width>  
    fuck you!!!!
84.  one goddam cell in the underlying format:

                    <TablixCell>  
                      <CellContents>  
                        <Textbox Name="qty">  
                          <CanGrow>true</CanGrow>  
                          <KeepTogether>true</KeepTogether>  
                          <Paragraphs>  
                            <Paragraph>  
                              <TextRuns>  
                                <TextRun>  
                                  <Value>=Sum(Fields!qty.Value)</Value>  
                                  <Style />  
                                </TextRun>  
                              </TextRuns>  
                              <Style />  
                            </Paragraph>  
                          </Paragraphs>  
                          <rd:DefaultName>qty</rd:DefaultName>  
                          <Style>  
                            <Border>  
                              <Color>LightGrey</Color>  
                              <Style>None</Style>  
                            </Border>  
                            <PaddingLeft>2pt</PaddingLeft>  
                            <PaddingRight>2pt</PaddingRight>  
                            <PaddingTop>2pt</PaddingTop>  
                            <PaddingBottom>2pt</PaddingBottom>  
                          </Style>  
                        </Textbox>  
                      </CellContents>  
                    </TablixCell>  

Contributed (thanks, a nice surprise!):  

71\. Report width limited to 455in (even if I'm hiding columns using parameters against the Visibility column filter).  
72\. NO DYNAMIC COLUMN CREATION (ridiculous!)  
73\. Selection of multiple columns and setting attributes is ridiculously flaky. This is because I wanted to reduce the column width and font to comply with Point 71 !!  
74\. We have to restart Reporting Server services frequently or our charts won't show up. Eh?  
75\. Cut and paste columns? Nope!  

More recent things:  

76\. Disappearing "Report Data" menu: [http://stackoverflow.com/a/28883272/1024](http://stackoverflow.com/a/28883272/10245)  
77\. SSDT for VS2015 upgrades reports to 2016 schema as soon as they're opened (WAT?!)  and ignores the TargetServerVersion being set to <=2014 [http://stackoverflow.com/questions/37816216/deploy-of-a-report-with-ssdt-2016-generates-error](http://stackoverflow.com/questions/37816216/deploy-of-a-report-with-ssdt-2016-generates-error) what if we haven't upgraded our production server, hmmm?  
78\. Okay so when you run a build, VS2015 then **downgrades** the rdl to the right schema to match the project's target server version before putting it in the build folder. What could possssssibly go wrong. 0_o   Complexity++  
79\. Install SSRS in only 41 easy steps [https://thecodeattic.wordpress.com/category/ssrs/](https://thecodeattic.wordpress.com/category/ssrs/)  
80\. Build > "Skipping 'SomeReport.rdl'. Item is up to date." - No it isn't, I've deleted it from the friggin bin folder. So clearly it has some stupid cache of what's it thinks is on disk rather than, oh I don't know fucking checking the disk. Sheesh. If it's that optimized why is everything still so damn slow?!  
81\. Building a project with lots of reports is slow. Even if nothing changed.  
82\. Intermittently get _"[rsInvalidReportDefinition] The definition of this report is not valid or supported by this version of Reporting Services. The report definition may have been created with a later version of Reporting Services, or contain content that is not well-formed or not valid based on Reporting Services schemas. Details: Data at the root level is invalid."_ - I am not alone. [https://connect.microsoft.com/SQLServer/feedback/details/2988044/randomly-get-rsinvalidreportdefinition-when-previewing-report](https://connect.microsoft.com/SQLServer/feedback/details/2988044/randomly-get-rsinvalidreportdefinition-when-previewing-report) - A rebuild fixes it for me, for a while at least.  
83\. Sometimes when you edit an embedded dataset it completely fails to persist any of your changes to disk. And when you close the report they are lost. Handy. Thanks fuck for git.  
83\. Assumes you've never heard of source control and creates numbered backups of report files (notably on auto-upgrade). Also has messages like "_delete will permanently delete this thing_" - no it won't I have source control; I wonder if the SSRS know what that is.  
84\. I've never managed to crash VS2015 so many times in one day. Omg you didn't click there did you? I wasn't ready! *crash* ... *again*  
85\. Change the files on disk and the preview window often doesn't notice  
86\. Preview window silently fires a 'build' of the reports. Sometimes.  
87\. Generates broken Shared-datasets [http://stackoverflow.com/a/38753141/10245](http://stackoverflow.com/a/38753141/10245)  
88\. If you break the xml of a shared-dataset the _entire project_ will fail to load. w-t-f.  
89\. Renaming datasets etc just breaks everything rather than updating references.  
90\. The .rptproj file has a <state> tag at the top which is base64 encode xml (WAT?! xml in xml. eerrrrr), which is information about source control (_arse-about-face or what! source code that controls the *source-control* [that controls the source, that controls the source-control that controls the source...]; even the words are circular!!_). In the base64 you'll find a <SourceControlInfo> tag.  

<Project xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ToolsVersion="2.0">  
<State>$base64$PFNvdXJjZUNvbnRyb2xJbmZvIHhtbG5zOnhzZD0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiIHhtbG5zOmRkbDI9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDAzL2VuZ2luZS8yIiB4bWxuczpkZGwyXzI9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDAzL2VuZ2luZS8yLzIiIHhtbG5zOmRkbDEwMF8xMDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDA4L2VuZ2luZS8xMDAvMTAwIiB4bWxuczpkZGwyMDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDEwL2VuZ2luZS8yMDAiIHhtbG5zOmRkbDIwMF8yMDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDEwL2VuZ2luZS8yMDAvMjAwIiB4bWxuczpkZGwzMDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDExL2VuZ2luZS8zMDAiIHhtbG5zOmRkbDMwMF8zMDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDExL2VuZ2luZS8zMDAvMzAwIiB4bWxuczpkZGw0MDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDEyL2VuZ2luZS80MDAiIHhtbG5zOmRkbDQwMF80MDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDEyL2VuZ2luZS80MDAvNDAwIiB4bWxuczpkZGw1MDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDEzL2VuZ2luZS81MDAiIHhtbG5zOmRkbDUwMF81MDA9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vYW5hbHlzaXNzZXJ2aWNlcy8yMDEzL2VuZ2luZS81MDAvNTAwIiB4bWxuczpkd2Q9Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vRGF0YVdhcmVob3VzZS9EZXNpZ25lci8xLjAiPg0KICA8RW5hYmxlZD50cnVlPC9FbmFibGVkPg0KICA8UHJvamVjdE5hbWU+U0FLPC9Qcm9qZWN0TmFtZT4NCiAgPEF1eFBhdGg+U0FLPC9BdXhQYXRoPg0KICA8TG9jYWxQYXRoPlNBSzwvTG9jYWxQYXRoPg0KICA8UHJvdmlkZXI+U0FLPC9Qcm92aWRlcj4NCjwvU291cmNlQ29udHJvbEluZm8+</State>  
...  

decoded "state" contents:  

  <SourceControlInfo xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ddl2="http://schemas.microsoft.com/analysisservices/2003/engine/2" xmlns:ddl2_2="http://schemas.microsoft.com/analysisservices/2003/engine/2/2" xmlns:ddl100_100="http://schemas.microsoft.com/analysisservices/2008/engine/100/100" xmlns:ddl200="http://schemas.microsoft.com/analysisservices/2010/engine/200" xmlns:ddl200_200="http://schemas.microsoft.com/analysisservices/2010/engine/200/200" xmlns:ddl300="http://schemas.microsoft.com/analysisservices/2011/engine/300" xmlns:ddl300_300="http://schemas.microsoft.com/analysisservices/2011/engine/300/300" xmlns:ddl400="http://schemas.microsoft.com/analysisservices/2012/engine/400" xmlns:ddl400_400="http://schemas.microsoft.com/analysisservices/2012/engine/400/400" xmlns:ddl500="http://schemas.microsoft.com/analysisservices/2013/engine/500" xmlns:ddl500_500="http://schemas.microsoft.com/analysisservices/2013/engine/500/500" xmlns:dwd="http://schemas.microsoft.com/DataWarehouse/Designer/1.0">  
  <Enabled>true</Enabled>  
  <ProjectName>SAK</ProjectName>  
  <AuxPath>SAK</AuxPath>  
  <LocalPath>SAK</LocalPath>  
  <Provider>SAK</Provider>  
</SourceControlInfo>  

Enough xml namespaces for you?  

91\. The state base64 changes all the time causing diff noise.  

I know I can't count, but if ssrs is going to make so little effort I don't see why I should. And to be honest "100" seemed a lot more like comic exaggeration when I titled my tomboy note which only had 5 or 6 grumblings in it, I wasn't actually expecting to get within spitting distance of the original number!  

Doesn't mean I won't use it again mind, just don't promise to like it.  

If you liked this, you might also like the ssrs deployment tool I sometimes look after: [https://github.com/timabell/ssrs-powershell-deploy](https://github.com/timabell/ssrs-powershell-deploy) (mostly not my work, just pulled together a bunch of contributions).
