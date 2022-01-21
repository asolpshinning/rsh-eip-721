#lang pl
{
  }
// maps
{
  map0 = Bool}
// initialization

APIs:{
  Nothing = {
    approve = ("approve", IT_Fun [Address,UInt] Bool),
    safeTransferFrom = ("safeTransferFrom", IT_Fun [Address,Address,UInt] Bool),
    setApprovalForAll = ("setApprovalForAll", IT_Fun [Address,Bool] Bool),
    transferFrom = ("transferFrom", IT_Fun [Address,Address,UInt] Bool)}}
{
  "Creator" = interact {
    getParams = IT_Fun [] Object({"name": Bytes(32), "symbol": Bytes(32), "uri": Bytes(128)})};
  only(Right False) {
    const v480* = protect<Object({"name": Bytes(32), "symbol": Bytes(32), "uri": Bytes(128)})>("Creator".interact.getParams());
    const v481! = v480.name;
    const v482! = v480.symbol;
    const v483! = v480.uri;
     };
  send({
    amt = [0, ],
    as = (v481, v482, v483 ),
    saved = (),
    soloSend = True,
    when = true,
    which = 0})
  recv({
    didSendv = v33,
    from = v484,
    lct = Just 0,
    msg = (v485, v486, v487 ),
    out = (),
    prev = 0,
    secsv = v489,
    timev = v488,
    which = 0})
  {
    checkPay(0, Nothing);
    fromConsensus 1 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487)]) ;
    send({
      amt = [0, ],
      as = (),
      saved = (v484, v485, v486, v487 ),
      soloSend = True,
      when = true,
      which = 1})
    recv({
      didSendv = v39,
      from = v491,
      lct = Just thisConsensusTime/488,
      msg = (),
      out = (),
      prev = 1,
      secsv = v493,
      timev = v492,
      which = 1})
    {
      checkPay(0, Nothing);
      const v495! = v484 == v491;
      claim(CT_Require)(v495, Just "sender correct");
      loopvar {
        v497 = v484,
        v498 = v484,
        v499 = thisConsensusTime/492,
        v502 = thisConsensusSecs/493};
      invariant{
        () }
      while{
        
        return true; }
      {
        const v527* = thisConsensusSecs/502 + 5;
        fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/497), (v498, owner/498), (v527, v527)]) ;
        recv({
          didSendv = v338,
          from = v608,
          lct = Just thisConsensusTime/499,
          msg = (v609 ),
          out = (),
          prev = 4,
          secsv = v611,
          timev = v610,
          which = 3})
        timeout(Just Right v527, {
          send({
            amt = [0, ],
            as = (),
            saved = (v484, v485, v486, v487, v497, v498, v527 ),
            soloSend = True,
            when = true,
            which = 4})
          recv({
            didSendv = v445,
            from = v964,
            lct = Just thisConsensusTime/499,
            msg = (),
            out = (),
            prev = 4,
            secsv = v966,
            timev = v965,
            which = 4})
          {
            checkPay(0, Nothing);
            const v968! = v484 == v964;
            claim(CT_Require)(v968, Just "sender correct");
            {
              v497 = approved/497,
              v498 = owner/498,
              v499 = thisConsensusTime/965,
              v502 = thisConsensusSecs/966}
            continue; } } )
        {
          switch (v609) {
            case approve0_113 as v612/True: {
              checkPay(0, Nothing);
              setApiDetails("approve", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just approve0_113, AIC_Case );
              const v632* = data_id/612[0];
              const v633* = data_id/612[1];
              const v634! = v608 == owner/498;
              const v635! = v608 == approved/497;
              const v636! = v634 ? true : v635;
              const v637! = map0[v608];
              const v638! = fromSome(v637, false );
              const v639! = v636 ? true : v638;
              claim(CT_Require)(v639, Nothing);
              const v640! = v633 == 0;
              claim(CT_Require)(v640, Nothing);
              const v641! = true;
              emitLog(api("approve"))(v641 );
              emitLog(event(Nothing, Approval))(v608, v632, v633 );
              {
                v497 = v632,
                v498 = owner/498,
                v499 = thisConsensusTime/610,
                v502 = thisConsensusSecs/611}
              continue; }
            case safeTransferFrom0_113 as v700/True: {
              checkPay(0, Nothing);
              setApiDetails("safeTransferFrom", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just safeTransferFrom0_113, AIC_Case );
              const v737* = data_id/700[0];
              const v738* = data_id/700[1];
              const v739* = data_id/700[2];
              const v740! = v737 == owner/498;
              const v741! = v737 == approved/497;
              const v742! = v740 ? true : v741;
              const v743! = map0[v737];
              const v744! = fromSome(v743, false );
              const v745! = v742 ? true : v744;
              claim(CT_Require)(v745, Nothing);
              const v746! = v739 == 0;
              claim(CT_Require)(v746, Nothing);
              const v747! = true;
              emitLog(api("safeTransferFrom"))(v747 );
              emitLog(event(Nothing, Transfer))(v737, v738, v739 );
              {
                v497 = v738,
                v498 = v738,
                v499 = thisConsensusTime/610,
                v502 = thisConsensusSecs/611}
              continue; }
            case setApprovalForAll0_113 as v788/True: {
              checkPay(0, Nothing);
              setApiDetails("setApprovalForAll", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just setApprovalForAll0_113, AIC_Case );
              const v843* = data_id/788[0];
              const v844* = data_id/788[1];
              const v845! = v608 == owner/498;
              const v846! = v608 == approved/497;
              const v847! = v845 ? true : v846;
              const v848! = map0[v608];
              const v849! = fromSome(v848, false );
              const v850! = v847 ? true : v849;
              claim(CT_Require)(v850, Nothing);
              const v851! = true;
              emitLog(api("setApprovalForAll"))(v851 );
              map0[v843] = v844;
              emitLog(event(Nothing, ApprovalForAll))(v608, v843, v844 );
              {
                v497 = approved/497,
                v498 = owner/498,
                v499 = thisConsensusTime/610,
                v502 = thisConsensusSecs/611}
              continue; }
            case transferFrom0_113 as v876/True: {
              checkPay(0, Nothing);
              setApiDetails("transferFrom", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just transferFrom0_113, AIC_Case );
              const v947* = data_id/876[0];
              const v948* = data_id/876[1];
              const v949* = data_id/876[2];
              const v950! = v947 == owner/498;
              const v951! = v947 == approved/497;
              const v952! = v950 ? true : v951;
              const v953! = map0[v947];
              const v954! = fromSome(v953, false );
              const v955! = v952 ? true : v954;
              claim(CT_Require)(v955, Nothing);
              const v956! = v949 == 0;
              claim(CT_Require)(v956, Nothing);
              const v957! = true;
              emitLog(api("transferFrom"))(v957 );
              emitLog(event(Nothing, Transfer))(v947, v948, v949 );
              {
                v497 = v948,
                v498 = v948,
                v499 = thisConsensusTime/610,
                v502 = thisConsensusSecs/611}
              continue; } } } }
      fromConsensus 3 (halt []) ;
       } },
  "approve" = interact {
    in = IT_Fun [] Tuple(Address, UInt),
    out = IT_Fun [Tuple(Address, UInt),Bool] Null};
  fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/497), (v498, owner/498), (v527, v527)]) ;
  only(Right False) {
    const v563* = selfAddress("approve", True, 232 )();
    const v565* = protect<Tuple(Address, UInt)>("approve".interact.in());
    const v567! = v565[1];
    const v569! = v563 == owner/498;
    const v570! = v563 == approved/497;
    const v571! = v569 ? true : v570;
    const v572! = map0[v563];
    const v573! = fromSome(v572, false );
    const v574! = v571 ? true : v573;
    claim(CT_Assume False)(v574, Nothing);
    const v575! = v567 == 0;
    claim(CT_Assume False)(v575, Nothing);
    const v577! = <approve0_113 v565>;
     };
  send({
    amt = [0, ],
    as = (v577 ),
    saved = (v484, v485, v486, v487, v497, v498, v527 ),
    soloSend = False,
    when = true,
    which = 3})
  recv({
    didSendv = v338,
    from = v608,
    lct = Nothing,
    msg = (v609 ),
    out = (),
    prev = 4,
    secsv = v611,
    timev = v610,
    which = 3})
  {
    switch (v609) {
      case approve0_113 as v612/True: {
        checkPay(0, Nothing);
        setApiDetails("approve", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just approve0_113, AIC_Case );
        const v632* = data_id/612[0];
        const v633* = data_id/612[1];
        const v634! = v608 == owner/498;
        const v635! = v608 == approved/497;
        const v636! = v634 ? true : v635;
        const v637! = map0[v608];
        const v638! = fromSome(v637, false );
        const v639! = v636 ? true : v638;
        claim(CT_Require)(v639, Nothing);
        const v640! = v633 == 0;
        claim(CT_Require)(v640, Nothing);
        const v641! = true;
        const v642* = emitLog(api("approve"))(v641 );
        only(Right True) {
          local if didPublish/338 then {
            protect<Null>("approve".interact.out(data_id/612, v642 ));
             }
          else {
             };
           };
        emitLog(event(Nothing, Approval))(v608, v632, v633 );
        const v1571! = v632;
        const v1572! = owner/498;
        const v1575! = thisConsensusSecs/611 + 5;
        fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/1571), (v498, owner/1572), (v527, v1575)]) ;
         }
      case safeTransferFrom0_113 as v700/False: {
         }
      case setApprovalForAll0_113 as v788/False: {
         }
      case transferFrom0_113 as v876/False: {
         } } },
  "safeTransferFrom" = interact {
    in = IT_Fun [] Tuple(Address, Address, UInt),
    out = IT_Fun [Tuple(Address, Address, UInt),Bool] Null};
  fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/497), (v498, owner/498), (v527, v527)]) ;
  only(Right False) {
    const v531* = protect<Tuple(Address, Address, UInt)>("safeTransferFrom".interact.in());
    const v532* = v531[0];
    const v534! = v531[2];
    const v536! = v532 == owner/498;
    const v537! = v532 == approved/497;
    const v538! = v536 ? true : v537;
    const v539! = map0[v532];
    const v540! = fromSome(v539, false );
    const v541! = v538 ? true : v540;
    claim(CT_Assume False)(v541, Nothing);
    const v542! = v534 == 0;
    claim(CT_Assume False)(v542, Nothing);
    const v544! = <safeTransferFrom0_113 v531>;
     };
  send({
    amt = [0, ],
    as = (v544 ),
    saved = (v484, v485, v486, v487, v497, v498, v527 ),
    soloSend = False,
    when = true,
    which = 3})
  recv({
    didSendv = v338,
    from = v608,
    lct = Nothing,
    msg = (v609 ),
    out = (),
    prev = 4,
    secsv = v611,
    timev = v610,
    which = 3})
  {
    switch (v609) {
      case approve0_113 as v612/False: {
         }
      case safeTransferFrom0_113 as v700/True: {
        checkPay(0, Nothing);
        setApiDetails("safeTransferFrom", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just safeTransferFrom0_113, AIC_Case );
        const v737* = data_id/700[0];
        const v738* = data_id/700[1];
        const v739* = data_id/700[2];
        const v740! = v737 == owner/498;
        const v741! = v737 == approved/497;
        const v742! = v740 ? true : v741;
        const v743! = map0[v737];
        const v744! = fromSome(v743, false );
        const v745! = v742 ? true : v744;
        claim(CT_Require)(v745, Nothing);
        const v746! = v739 == 0;
        claim(CT_Require)(v746, Nothing);
        const v747! = true;
        const v748* = emitLog(api("safeTransferFrom"))(v747 );
        only(Right True) {
          local if didPublish/338 then {
            protect<Null>("safeTransferFrom".interact.out(data_id/700, v748 ));
             }
          else {
             };
           };
        emitLog(event(Nothing, Transfer))(v737, v738, v739 );
        const v1596! = v738;
        const v1597! = v738;
        const v1600! = thisConsensusSecs/611 + 5;
        fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/1596), (v498, owner/1597), (v527, v1600)]) ;
         }
      case setApprovalForAll0_113 as v788/False: {
         }
      case transferFrom0_113 as v876/False: {
         } } },
  "setApprovalForAll" = interact {
    in = IT_Fun [] Tuple(Address, Bool),
    out = IT_Fun [Tuple(Address, Bool),Bool] Null};
  fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/497), (v498, owner/498), (v527, v527)]) ;
  only(Right False) {
    const v579* = selfAddress("setApprovalForAll", True, 254 )();
    const v581* = protect<Tuple(Address, Bool)>("setApprovalForAll".interact.in());
    const v585! = v579 == owner/498;
    const v586! = v579 == approved/497;
    const v587! = v585 ? true : v586;
    const v588! = map0[v579];
    const v589! = fromSome(v588, false );
    const v590! = v587 ? true : v589;
    claim(CT_Assume False)(v590, Nothing);
    const v592! = <setApprovalForAll0_113 v581>;
     };
  send({
    amt = [0, ],
    as = (v592 ),
    saved = (v484, v485, v486, v487, v497, v498, v527 ),
    soloSend = False,
    when = true,
    which = 3})
  recv({
    didSendv = v338,
    from = v608,
    lct = Nothing,
    msg = (v609 ),
    out = (),
    prev = 4,
    secsv = v611,
    timev = v610,
    which = 3})
  {
    switch (v609) {
      case approve0_113 as v612/False: {
         }
      case safeTransferFrom0_113 as v700/False: {
         }
      case setApprovalForAll0_113 as v788/True: {
        checkPay(0, Nothing);
        setApiDetails("setApprovalForAll", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just setApprovalForAll0_113, AIC_Case );
        const v843* = data_id/788[0];
        const v844* = data_id/788[1];
        const v845! = v608 == owner/498;
        const v846! = v608 == approved/497;
        const v847! = v845 ? true : v846;
        const v848! = map0[v608];
        const v849! = fromSome(v848, false );
        const v850! = v847 ? true : v849;
        claim(CT_Require)(v850, Nothing);
        const v851! = true;
        const v852* = emitLog(api("setApprovalForAll"))(v851 );
        only(Right True) {
          local if didPublish/338 then {
            protect<Null>("setApprovalForAll".interact.out(data_id/788, v852 ));
             }
          else {
             };
           };
        map0[v843] = v844;
        emitLog(event(Nothing, ApprovalForAll))(v608, v843, v844 );
        const v1621! = approved/497;
        const v1622! = owner/498;
        const v1625! = thisConsensusSecs/611 + 5;
        fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/1621), (v498, owner/1622), (v527, v1625)]) ;
         }
      case transferFrom0_113 as v876/False: {
         } } },
  "transferFrom" = interact {
    in = IT_Fun [] Tuple(Address, Address, UInt),
    out = IT_Fun [Tuple(Address, Address, UInt),Bool] Null};
  fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/497), (v498, owner/498), (v527, v527)]) ;
  only(Right False) {
    const v548* = protect<Tuple(Address, Address, UInt)>("transferFrom".interact.in());
    const v549* = v548[0];
    const v551! = v548[2];
    const v553! = v549 == owner/498;
    const v554! = v549 == approved/497;
    const v555! = v553 ? true : v554;
    const v556! = map0[v549];
    const v557! = fromSome(v556, false );
    const v558! = v555 ? true : v557;
    claim(CT_Assume False)(v558, Nothing);
    const v559! = v551 == 0;
    claim(CT_Assume False)(v559, Nothing);
    const v561! = <transferFrom0_113 v548>;
     };
  send({
    amt = [0, ],
    as = (v561 ),
    saved = (v484, v485, v486, v487, v497, v498, v527 ),
    soloSend = False,
    when = true,
    which = 3})
  recv({
    didSendv = v338,
    from = v608,
    lct = Nothing,
    msg = (v609 ),
    out = (),
    prev = 4,
    secsv = v611,
    timev = v610,
    which = 3})
  {
    switch (v609) {
      case approve0_113 as v612/False: {
         }
      case safeTransferFrom0_113 as v700/False: {
         }
      case setApprovalForAll0_113 as v788/False: {
         }
      case transferFrom0_113 as v876/True: {
        checkPay(0, Nothing);
        setApiDetails("transferFrom", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just transferFrom0_113, AIC_Case );
        const v947* = data_id/876[0];
        const v948* = data_id/876[1];
        const v949* = data_id/876[2];
        const v950! = v947 == owner/498;
        const v951! = v947 == approved/497;
        const v952! = v950 ? true : v951;
        const v953! = map0[v947];
        const v954! = fromSome(v953, false );
        const v955! = v952 ? true : v954;
        claim(CT_Require)(v955, Nothing);
        const v956! = v949 == 0;
        claim(CT_Require)(v956, Nothing);
        const v957! = true;
        const v958* = emitLog(api("transferFrom"))(v957 );
        only(Right True) {
          local if didPublish/338 then {
            protect<Null>("transferFrom".interact.out(data_id/876, v958 ));
             }
          else {
             };
           };
        emitLog(event(Nothing, Transfer))(v947, v948, v949 );
        const v1646! = v948;
        const v1647! = v948;
        const v1650! = thisConsensusSecs/611 + 5;
        fromConsensus 4 (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/1646), (v498, owner/1647), (v527, v1650)]) ;
         } } }}


views: ({
  Nothing = {
    balanceOf = IT_Fun [Address] UInt,
    getApproved = IT_Fun [UInt] Address,
    isApprovedForAll = IT_Fun [Address,Address] Bool,
    name = IT_Val Bytes(32),
    ownerOf = IT_Fun [UInt] Address,
    symbol = IT_Val Bytes(32),
    tokenURI = IT_Fun [UInt] Bytes(128)}}, {
  1 = (view [v484, v485, v486, v487] {
    }),
  4 = (view [v484, v485, v486, v487, v497, v498, v527] {
    Nothing = {
      balanceOf = export (Just [v510]) => {const v511! = v510 == owner/498;
      const v512! = v511 ? 1 : 0;
      
      return v512;},
      getApproved = export (Just [v513]) => {const v514! = v513 == 0;
      claim(CT_Assume False)(v514, Nothing);
      
      return approved/497;},
      isApprovedForAll = export (Just [v515, v516]) => {const v517! = owner/498 == v515;
      const v518! = map0[v516];
      const v519! = fromSome(v518, false );
      const v520! = v517 ? v519 : false;
      
      return v520;},
      name = export (Nothing) => {
      return name/485;},
      ownerOf = export (Just [v508]) => {const v509! = v508 == 0;
      claim(CT_Assume False)(v509, Nothing);
      
      return owner/498;},
      symbol = export (Nothing) => {
      return symbol/486;},
      tokenURI = export (Just [v496]) => {
      return uri/487;}}})})
apiInfo: {
  "approve" = {
    compile = AIC_Case,
    mcase_id = Just approve0_113,
    msg_tys = [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})],
    ret = Bool,
    which = 3},
  "safeTransferFrom" = {
    compile = AIC_Case,
    mcase_id = Just safeTransferFrom0_113,
    msg_tys = [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})],
    ret = Bool,
    which = 3},
  "setApprovalForAll" = {
    compile = AIC_Case,
    mcase_id = Just setApprovalForAll0_113,
    msg_tys = [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})],
    ret = Bool,
    which = 3},
  "transferFrom" = {
    compile = AIC_Case,
    mcase_id = Just transferFrom0_113,
    msg_tys = [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})],
    ret = Bool,
    which = 3}}
events: {
  Nothing = {
    Approval = [Address, Address, UInt],
    ApprovalForAll = [Address, Address, Bool],
    Transfer = [Address, Address, UInt]}}
{
  0 = {
    v484,
    (between [Nothing] [Nothing]),
    last = 0,
    [],
    [],
    [v485, v486, v487],
    [Bytes(32), Bytes(32), Bytes(128)],
    timev = v488,
    secsv = v489,
    {
      checkPay(0, Nothing);
      (from 1, (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487)])) }
     },
  1 = {
    v491,
    (between [Nothing] [Nothing]),
    last = 1,
    [v484, v485, v486, v487],
    [Address, Bytes(32), Bytes(32), Bytes(128)],
    [],
    [],
    timev = v492,
    secsv = v493,
    {
      checkPay(0, Nothing);
      const v495! = v484 == v491;
      claim(CT_Require)(v495, Just "sender correct");
      (jump! 2 [v484, v485, v486, v487] {
        v497 = v484,
        v498 = v484,
        v499 = thisConsensusTime/492,
        v502 = thisConsensusSecs/493}) }
     },
  2 = {
    loop!,
    [v484, v485, v486, v487],
    [v497, v498, v499, v502],
    {
      const v527* = thisConsensusSecs/502 + 5;
      (from 4, (continue [(v484, v484), (v485, name/485), (v486, symbol/486), (v487, uri/487), (v497, approved/497), (v498, owner/498), (v527, v527)])) }
     },
  3 = {
    v608,
    (between [Nothing] [Just Right v527]),
    last = 4,
    [v484, v485, v486, v487, v497, v498, v527],
    [Address, Bytes(32), Bytes(32), Bytes(128), Address, Address, UInt],
    [v609],
    [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})],
    timev = v610,
    secsv = v611,
    {
      switch (v609) {
        case approve0_113 as v612/True: {
          checkPay(0, Nothing);
          setApiDetails("approve", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just approve0_113, AIC_Case );
          const v632* = data_id/612[0];
          const v633* = data_id/612[1];
          const v634! = v608 == owner/498;
          const v635! = v608 == approved/497;
          const v636! = v634 ? true : v635;
          const v637! = map0[v608];
          const v638! = fromSome(v637, false );
          const v639! = v636 ? true : v638;
          claim(CT_Require)(v639, Nothing);
          const v640! = v633 == 0;
          claim(CT_Require)(v640, Nothing);
          const v641! = true;
          emitLog(api("approve"))(v641 );
          emitLog(event(Nothing, Approval))(v608, v632, v633 );
          (jump! 2 [v484, v485, v486, v487] {
            v497 = v632,
            v498 = owner/498,
            v499 = thisConsensusTime/610,
            v502 = thisConsensusSecs/611}) }
        case safeTransferFrom0_113 as v700/True: {
          checkPay(0, Nothing);
          setApiDetails("safeTransferFrom", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just safeTransferFrom0_113, AIC_Case );
          const v737* = data_id/700[0];
          const v738* = data_id/700[1];
          const v739* = data_id/700[2];
          const v740! = v737 == owner/498;
          const v741! = v737 == approved/497;
          const v742! = v740 ? true : v741;
          const v743! = map0[v737];
          const v744! = fromSome(v743, false );
          const v745! = v742 ? true : v744;
          claim(CT_Require)(v745, Nothing);
          const v746! = v739 == 0;
          claim(CT_Require)(v746, Nothing);
          const v747! = true;
          emitLog(api("safeTransferFrom"))(v747 );
          emitLog(event(Nothing, Transfer))(v737, v738, v739 );
          (jump! 2 [v484, v485, v486, v487] {
            v497 = v738,
            v498 = v738,
            v499 = thisConsensusTime/610,
            v502 = thisConsensusSecs/611}) }
        case setApprovalForAll0_113 as v788/True: {
          checkPay(0, Nothing);
          setApiDetails("setApprovalForAll", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just setApprovalForAll0_113, AIC_Case );
          const v843* = data_id/788[0];
          const v844* = data_id/788[1];
          const v845! = v608 == owner/498;
          const v846! = v608 == approved/497;
          const v847! = v845 ? true : v846;
          const v848! = map0[v608];
          const v849! = fromSome(v848, false );
          const v850! = v847 ? true : v849;
          claim(CT_Require)(v850, Nothing);
          const v851! = true;
          emitLog(api("setApprovalForAll"))(v851 );
          map0[v843] = v844;
          emitLog(event(Nothing, ApprovalForAll))(v608, v843, v844 );
          (jump! 2 [v484, v485, v486, v487] {
            v497 = approved/497,
            v498 = owner/498,
            v499 = thisConsensusTime/610,
            v502 = thisConsensusSecs/611}) }
        case transferFrom0_113 as v876/True: {
          checkPay(0, Nothing);
          setApiDetails("transferFrom", [Data({"approve0_113": Tuple(Address, UInt), "safeTransferFrom0_113": Tuple(Address, Address, UInt), "setApprovalForAll0_113": Tuple(Address, Bool), "transferFrom0_113": Tuple(Address, Address, UInt)})], Just transferFrom0_113, AIC_Case );
          const v947* = data_id/876[0];
          const v948* = data_id/876[1];
          const v949* = data_id/876[2];
          const v950! = v947 == owner/498;
          const v951! = v947 == approved/497;
          const v952! = v950 ? true : v951;
          const v953! = map0[v947];
          const v954! = fromSome(v953, false );
          const v955! = v952 ? true : v954;
          claim(CT_Require)(v955, Nothing);
          const v956! = v949 == 0;
          claim(CT_Require)(v956, Nothing);
          const v957! = true;
          emitLog(api("transferFrom"))(v957 );
          emitLog(event(Nothing, Transfer))(v947, v948, v949 );
          (jump! 2 [v484, v485, v486, v487] {
            v497 = v948,
            v498 = v948,
            v499 = thisConsensusTime/610,
            v502 = thisConsensusSecs/611}) } } }
     },
  4 = {
    v964,
    (between [Just Right v527] [Nothing]),
    last = 4,
    [v484, v485, v486, v487, v497, v498, v527],
    [Address, Bytes(32), Bytes(32), Bytes(128), Address, Address, UInt],
    [],
    [],
    timev = v965,
    secsv = v966,
    {
      checkPay(0, Nothing);
      const v968! = v484 == v964;
      claim(CT_Require)(v968, Just "sender correct");
      (jump! 2 [v484, v485, v486, v487] {
        v497 = approved/497,
        v498 = owner/498,
        v499 = thisConsensusTime/965,
        v502 = thisConsensusSecs/966}) }
     }}