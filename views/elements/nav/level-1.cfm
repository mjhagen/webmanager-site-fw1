<cfoutput>
  <ul id="nav">
    <li><a href="/">Home</a></li>
    <cfloop query="rc.nav.level1">
      <cfset local.active = listFind( rc.lCurrentNavPath, assetmeta_nID ) gt 0 />
      <cfset local.navitem = {
        "name" = listFirst( assetContent_sTitleText, chr( 0182 )),
        "link" = assetContent_sTitleText contains chr( 0182 ) ? listRest( assetContent_sTitleText, chr( 0182 )) : "/#rc.xdirectlinks[assetmeta_nID]#"
      } />
      <li id="nav-#request.variableFormat( assetContent_sTitleText, true )#"#local.active ? ' class="active"' : ''#>
        #view( 'elements/nav/item', local.navitem )#
        <cfif local.active>
          #view( "elements/nav/level-2" )#
        </cfif>
      </li>
    </cfloop>
  </ul>
</cfoutput>