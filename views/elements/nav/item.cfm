<cfparam name="local.name" default="" />
<cfparam name="local.link" default="" />
<cfparam name="local.active" default="#false#" />

<cfoutput>
  <a href="#local.link#"#local.active ? ' class="active"' : ''#>#local.name#</a>
</cfoutput>