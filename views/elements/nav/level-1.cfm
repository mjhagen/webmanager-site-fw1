<cfoutput>
  <ul id="nav">
    <li><a href="/">Home</a></li>
    <cfloop query="rc.nav.level1">
      <cfset local.navitem = {
        "active" = listFind( rc.lCurrentNavPath, assetmeta_nID ) gt 0,
        "name" = listFirst( assetContent_sTitleText, chr( 0182 )),
        "link" = assetContent_sTitleText contains chr( 0182 ) ? listRest( assetContent_sTitleText, chr( 0182 )) : "/#rc.xdirectlinks[assetmeta_nID]#"
      } />

      <li id="nav-#request.variableFormat( assetContent_sTitleText, true )#">
        #view( 'elements/nav/item', local.navitem )#
        <cfif local.navitem.active>
          #view( "elements/nav/level-2" )#
        </cfif>
      </li>
    </cfloop>
  </ul>
</cfoutput>