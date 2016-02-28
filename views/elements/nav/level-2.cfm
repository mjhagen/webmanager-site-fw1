<cfoutput>
  <ul class="list-unstyled">
    <cfloop query="rc.nav.level2">
      <cfset local.navitem = {
        "active" = listFind( rc.lCurrentNavPath, assetmeta_nID ) gt 0,
        "name" = listFirst( assetContent_sTitleText, chr( 0182 )),
        "link" = assetContent_sTitleText contains chr( 0182 ) ? listRest( assetContent_sTitleText, chr( 0182 )) : "/#rc.xdirectlinks[assetmeta_nID]#"
      } />

      <li>
        #view( 'elements/nav/item', local.navitem )#
      </li>
    </cfloop>
  </ul>
</cfoutput>