<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <sch:rule context="/topic/title">
            <sch:report test="(string-length() > 35) and (string-length() &lt; 60)" role="warn">The
                title is very long and will not fit on a single line. Try keeping the title under 35
                characters.</sch:report>
            <sch:report test="string-length() > 59" role="error">The title is too long for the
                document output. Use less than 60 characters.</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>
