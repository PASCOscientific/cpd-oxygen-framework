<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <sch:rule context="/topic/title">
            <sch:report test="(string-length() > 40) and (string-length() &lt; 60)" role="warn">The
                title is very long and will not fit on a single line. Try keeping the title under 40
                characters.</sch:report>
            <sch:report test="string-length() > 59" role="error">The title is too long for the
                document output. Use less than 60 characters.</sch:report>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="mathml">
            <sch:assert test="parent::equation-block or parent::equation-inline" role="error">
                The &lt;mathml&gt; element must be nested inside an &lt;equation-block&gt; or &lt;equation-inline&gt; element.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="*[contains(@class, ' topic/dl ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/div ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/fig ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/lines ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/lq ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/note ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/ol ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/simpletable ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/sl ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/table ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
        <sch:rule context="*[contains(@class, ' topic/ul ')]">
            <sch:report test="parent::p" role="warn">Don't nest a block element inside of a &lt;p&gt; element.</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>
