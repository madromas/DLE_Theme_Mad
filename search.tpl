<div class="card block mb-3 main-width mx-auto mb-3 p-4">
   <div class="box_in">
      <h4 class="title mb-3">Site search</h4>
      <div id="searchtable" name="searchtable" class="searchtable">
         [simple-search]
         <div class="form-control-fix mb-3"> {searchfield}</div>
         <input type="button" class="btn btn-dark" name="dosearch" id="dosearch" value="Search" onclick="javascript:list_submit(-1); return false;">
         <input type="button" class="btn btn-outline-dark btn-border" name="dofullsearch" id="dofullsearch" value="Advanced Search" onclick="javascript:full_submit(1); return false;">
         [/simple-search]
         [extended-search]
         <table style="width:100%;">
            <tr>
               <td class="search">
                  <div align="center">
                     <table style="width:100%;">
                        <tr style="vertical-align: top;">
                           <td class="search">
                              <fieldset style="margin:0px">
                                 <h5>Content Search</h5>
                                 <table style="width:100%;padding:3px;">
                                    <tr>
                                       <td class="search">
                                          <div>Search words</div>
                                          <div class="form-control-fix">{searchfield}</div>
                                          {word-option}
                                       </td>
                                    </tr>
                                    <tr>
                                       <td class="search">
                                          {search-area}
                                       </td>
                                    </tr>
                                 </table>
                              </fieldset>
                           </td>
                           <td class="search" valign="top">
                              <fieldset style="margin:0px">
                                 <h5>Search by name</h5>
                                 <table style="width:100%;">
                                    <tr>
                                       <td class="search">
                                          <div>User name</div>
                                          <div id="userfield" >
                                             <div class="form-control-fix">{userfield}</div>
                                             <br /><label>{user-option}Exact match</label>
                                          </div>
                                       </td>
                                    </tr>
                                 </table>
                              </fieldset>
                           </td>
                        </tr>
                        <tr style="vertical-align: top;">
                           <td width="50%" class="search">
                              <fieldset style="margin:0px">
                                 <h5>Search articles with</h5>
                                 <div style="padding:3px">
                                    {news-option}
                                    <div class="form-control-fix mt-2">{comments-num}</div>
                                    comments
                                 </div>
                              </fieldset>
                              <fieldset style="padding-top:10px">
                                 <h5>Time lapse</h5>
                                 <div style="padding:3px">
                                    {date-option}
                                    {date-beforeafter}
                                 </div>
                              </fieldset>
                              <fieldset style="padding-top:10px">
                                 <h5>Sort results</h5>
                                 <div style="padding:3px">
                                    {sort-option}
                                    {order-option}
                                 </div>
                              </fieldset>
                              <fieldset style="padding-top:10px">
                                 <h5>Show results as</h5>
                                 <table style="width:100%;padding:3px;">
                                    <tr align="left" valign="middle">
                                       <td align="left" class="search">Search results as:&nbsp;
                                          {view-option}
                                       </td>
                                    </tr>
                                 </table>
                              </fieldset>
                           </td>
                           <td width="50%" class="search" valign="top">
                              <fieldset style="margin:0px">
                                 <h5>Category search</h5>
                                 <div style="padding:3px">
                                    <div>{category-option}</div>
                                 </div>
                              </fieldset>
                           </td>
                        </tr>
                        <tr>
                           <td class="search" colspan="2">
                              <div style="margin-top:6px">
                                 <input type="button" class="btn btn-dark"  name="dosearch" id="dosearch" value="Search" onclick="javascript:list_submit(-1); return false;">
                                 <input type="button" class="btn btn-dark ms-2"  name="doclear" id="doclear" value="Clear" onclick="javascript:clearform('fullsearch'); return false;">
                                 <input type="reset" class="btn btn-dark ms-2"  name="doreset" id="doreset" value="Return">
                              </div>
                           </td>
                        </tr>
                     </table>
                  </div>
               </td>
            </tr>
         </table>
         [/extended-search]
      </div>
      [searchmsg]
      <div class="search_result_num grey">{searchmsg}</div>
      [/searchmsg]
   </div>
</div>