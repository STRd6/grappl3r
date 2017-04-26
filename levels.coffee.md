Levels
======

    {width, height} = require "./pixie"

    {defaults, extend} = require "util"

    Line = require "./lib/line"

    bg = (name, options={}) ->
      engine.add "Background", extend
        x: width
        y: height
        spriteName: name
        scale: 1
        zIndex: -1000
      , options

    line = (data) ->
      Line
        start: Point data.start
        end: Point data.end

    lines = (lines) ->
      engine.add "Wall",
        lines: lines.map line

    module.exports = [
      # 0
      ->
        bg "sandcastles",
          scale: 2
        
        lines [{"start":{"x":2721.4984961607843,"y":-78.92233461754978},"end":{"x":2727.4984961600353,"y":469.0776653786884}},{"start":{"x":691.2435993178137,"y":-772.6674376277103},"end":{"x":1245.486219812066,"y":-774.9100582661232}},{"start":{"x":1245.486219812066,"y":-774.9100582661232},"end":{"x":1601.7684250429004,"y":-779.9223295064389}},{"start":{"x":1601.7684250429004,"y":-779.9223295064389},"end":{"x":1908.795989831103,"y":-784.9223346194731}},{"start":{"x":1908.795989831103,"y":-784.9223346194731},"end":{"x":2229.900408020724,"y":-774.9223346213731}},{"start":{"x":2229.900408020724,"y":-774.9223346213731},"end":{"x":2712.1929158099156,"y":-782.9223346213732}},{"start":{"x":2712.1929158099156,"y":-782.9223346213732},"end":{"x":3067.2839897278272,"y":-776.9223346213732}},{"start":{"x":3067.2839897278272,"y":-776.9223346213732},"end":{"x":3078.4869122731134,"y":-237.92233462137324}},{"start":{"x":3078.4869122731134,"y":-237.92233462137324},"end":{"x":3071.4984961600053,"y":227.0776436897628}},{"start":{"x":3071.4984961600053,"y":227.0776436897628},"end":{"x":3071.498496160018,"y":665.9470557152054}},{"start":{"x":3071.498496160018,"y":665.9470557152054},"end":{"x":3072.498496160018,"y":968.0480496572035}},{"start":{"x":3072.498496160018,"y":968.0480496572035},"end":{"x":3071.498496160018,"y":1176.0767260110847}},{"start":{"x":-169.50150383997737,"y":615.0801638654009},"end":{"x":-54.4891165679378,"y":300.233326628348}},{"start":{"x":-54.4891165679378,"y":300.233326628348},"end":{"x":-10.4891165679378,"y":301.233326628348}},{"start":{"x":-10.4891165679378,"y":301.233326628348},"end":{"x":28.5108834320622,"y":595.233326628348}},{"start":{"x":28.5108834320622,"y":595.233326628348},"end":{"x":123.5108834320622,"y":596.233326628348}},{"start":{"x":123.5108834320622,"y":596.233326628348},"end":{"x":160.5108834320622,"y":380.233326628348}},{"start":{"x":160.5108834320622,"y":380.233326628348},"end":{"x":284.5108834320622,"y":386.233326628348}},{"start":{"x":394.4998651053479,"y":88.23927302689225},"end":{"x":284.5108834320622,"y":386.233326628348}},{"start":{"x":394.4998651053479,"y":88.23927302689225},"end":{"x":429.5108823342689,"y":89.23332722080787}},{"start":{"x":429.5108823342689,"y":89.23332722080787},"end":{"x":479.5108833727786,"y":283.2333266603423}},{"start":{"x":479.5108833727786,"y":283.2333266603423},"end":{"x":721.5108834315779,"y":289.2333266286093}},{"start":{"x":721.5108834315779,"y":289.2333266286093},"end":{"x":778.5097996655704,"y":288.2333975289598}},{"start":{"x":778.5097996655704,"y":288.2333975289598},"end":{"x":788.510883072902,"y":110.23332665184466}},{"start":{"x":788.510883072902,"y":110.23332665184466},"end":{"x":806.5108834183035,"y":82.23332662924832}},{"start":{"x":806.5108834183035,"y":82.23332662924832},"end":{"x":856.510883431319,"y":62.23332662839681}},{"start":{"x":691.2435993178137,"y":-772.6674376277103},"end":{"x":89.31308601230182,"y":-777.739170998046}},{"start":{"x":89.31308601230182,"y":-777.739170998046},"end":{"x":-537.6748172453404,"y":-778.7391609229996}},{"start":{"x":-537.6748172453404,"y":-778.7391609229996},"end":{"x":-1023.6447941203405,"y":-777.7391609229996}},{"start":{"x":-1023.6447941203405,"y":-777.7391609229996},"end":{"x":-1023.6868671297921,"y":-365.73916092299964}},{"start":{"x":-1023.6868671297921,"y":-365.73916092299964},"end":{"x":-1025.6870219545463,"y":91.10870178219722}},{"start":{"x":-1025.6870219545463,"y":91.10870178219722},"end":{"x":-1026.6870219562984,"y":637.2284194128437}},{"start":{"x":-1026.6870219562984,"y":637.2284194128437},"end":{"x":-1024.6870219562984,"y":942.2479162571077}},{"start":{"x":-1024.6870219562984,"y":942.2479162571077},"end":{"x":-1023.6870219562984,"y":1109.5315813946117}},{"start":{"x":-1023.6870219562984,"y":1109.5315813946117},"end":{"x":-1026.6870219562984,"y":1190.0536357321637}},{"start":{"x":-1026.6870219562984,"y":1190.0536357321637},"end":{"x":-430.6870219562984,"y":1001.2608317078343}},{"start":{"x":-169.50150383997737,"y":615.0801638654009},"end":{"x":-212.67586669148216,"y":796.2661999487709}},{"start":{"x":-212.67586669148216,"y":796.2661999487709},"end":{"x":-430.6870219562984,"y":1001.2608317078343}},{"start":{"x":856.510883431319,"y":62.23332662839681},"end":{"x":879.3129120466906,"y":-284.7450060359554}},{"start":{"x":979.0890007359958,"y":-598.5006943716885},"end":{"x":879.3129120466906,"y":-284.7450060359554}},{"start":{"x":979.0890007359958,"y":-598.5006943716885},"end":{"x":1010.3129735492212,"y":-599.7391561377682}},{"start":{"x":1010.3129735492212,"y":-599.7391561377682},"end":{"x":1100.3129779283597,"y":-283.73916080019603}},{"start":{"x":1100.3129779283597,"y":-283.73916080019603},"end":{"x":1126.3129780436986,"y":81.24430456007173}},{"start":{"x":1126.3129780436986,"y":81.24430456007173},"end":{"x":1403.3129780436986,"y":89.26041475520509}},{"start":{"x":1403.3129780436986,"y":89.26041475520509},"end":{"x":1414.3129780436986,"y":-167.73918383744285}},{"start":{"x":1523.3961318309257,"y":-529.8223147236829},"end":{"x":1414.3129780436986,"y":-167.73918383744285}},{"start":{"x":1523.3961318309257,"y":-529.8223147236829},"end":{"x":1559.3129053857854,"y":-520.7390882650843}},{"start":{"x":1559.3129053857854,"y":-520.7390882650843},"end":{"x":1647.3129754151612,"y":-183.73915829445866}},{"start":{"x":1647.3129754151612,"y":-183.73915829445866},"end":{"x":1670.254810385636,"y":126.19576729381788}},{"start":{"x":1670.254810385636,"y":126.19576729381788},"end":{"x":1720.2232872434456,"y":164.1627913336951}},{"start":{"x":1720.2232872434456,"y":164.1627913336951},"end":{"x":1738.3129700739712,"y":421.2280106122402}},{"start":{"x":1738.3129700739712,"y":421.2280106122402},"end":{"x":1738.3129780430318,"y":528.133366299642}},{"start":{"x":1738.3129780430318,"y":528.133366299642},"end":{"x":1943.3129780436986,"y":355.26052597809974}},{"start":{"x":2020.7531328929292,"y":159.84088099034147},"end":{"x":2006.200222384993,"y":254.37766246633805}},{"start":{"x":2006.200222384993,"y":254.37766246633805},"end":{"x":1943.3129780436986,"y":355.26052597809974}},{"start":{"x":2020.7531328929292,"y":159.84088099034147},"end":{"x":2043.312975647803,"y":126.26084155933313}},{"start":{"x":2043.312975647803,"y":126.26084155933313},"end":{"x":2183.2973695808946,"y":82.27719406209195}},{"start":{"x":2183.2973695808946,"y":82.27719406209195},"end":{"x":2215.312085501518,"y":-28.738225692266013}},{"start":{"x":2215.312085501518,"y":-28.738225692266013},"end":{"x":2250.3129325251825,"y":-28.73911322741884}},{"start":{"x":2250.3129325251825,"y":-28.73911322741884},"end":{"x":2284.3129779031383,"y":164.26083922428722}},{"start":{"x":2284.3129779031383,"y":164.26083922428722},"end":{"x":2321.3129780236177,"y":242.2608390980443}},{"start":{"x":2321.3129780236177,"y":242.2608390980443},"end":{"x":2342.1415433429183,"y":365.040413219392}},{"start":{"x":2342.1415433429183,"y":365.040413219392},"end":{"x":2410.294580143651,"y":408.2371835808963}},{"start":{"x":2410.294580143651,"y":408.2371835808963},"end":{"x":2426.312740460049,"y":626.2605335987062}},{"start":{"x":2426.312740460049,"y":626.2605335987062},"end":{"x":2439.283502504001,"y":696.1910434615199}},{"start":{"x":2439.283502504001,"y":696.1910434615199},"end":{"x":2483.312079933811,"y":791.2587124278149}},{"start":{"x":2483.312079933811,"y":791.2587124278149},"end":{"x":2692.3129204589686,"y":941.2607027211668}},{"start":{"x":2692.3129204589686,"y":941.2607027211668},"end":{"x":2839.3129754245683,"y":1041.2608328751144}},{"start":{"x":2839.3129754245683,"y":1041.2608328751144},"end":{"x":3077.498496160018,"y":1145.0776653786243}}]

        engine.add "Background",
          x: width * 2 + 50
          y: height - 100
          spriteName: "dudebro"

        engine.add "Trap",
          x: width
          y: height * 2 - 300
          scale: 0.5

        engine.add "Goal",
          x: width * 2
          y: 0
      -> # 1
        bg "insideMouth"
        
        lines [{"start":{"x":2044.8211652771097,"y":967.7001038055603},"end":{"x":1952.8211652774366,"y":1028.7001038056317}},{"start":{"x":1952.8211652774366,"y":1028.7001038056317},"end":{"x":1889.8211652774407,"y":1013.7001038056317}},{"start":{"x":1889.8211652774407,"y":1013.7001038056317},"end":{"x":1878.8211652774407,"y":965.7001038056317}},{"start":{"x":1878.8211652774407,"y":965.7001038056317},"end":{"x":1775.8211652774407,"y":1019.7001038056317}},{"start":{"x":1775.8211652774407,"y":1019.7001038056317},"end":{"x":1766.8211652774407,"y":956.7001038056317}},{"start":{"x":1766.8211652774407,"y":956.7001038056317},"end":{"x":1696.8211652774407,"y":975.7001038056317}},{"start":{"x":1696.8211652774407,"y":975.7001038056317},"end":{"x":1699.8211652774407,"y":901.7001038056317}},{"start":{"x":1699.8211652774407,"y":901.7001038056317},"end":{"x":1614.8211652774407,"y":945.7001038056317}},{"start":{"x":1614.8211652774407,"y":945.7001038056317},"end":{"x":1600.8211652774407,"y":887.7001038056317}},{"start":{"x":1600.8211652774407,"y":887.7001038056317},"end":{"x":1515.8211652774407,"y":918.7001038056317}},{"start":{"x":1515.8211652774407,"y":918.7001038056317},"end":{"x":1460.8211652774407,"y":817.7001038056317}},{"start":{"x":1460.8211652774407,"y":817.7001038056317},"end":{"x":1357.8211652774407,"y":902.7001038056317}},{"start":{"x":1357.8211652774407,"y":902.7001038056317},"end":{"x":1233.8211666759566,"y":876.7001039050522}},{"start":{"x":1233.8211666759566,"y":876.7001039050522},"end":{"x":1152.8211654363658,"y":903.7001038169298}},{"start":{"x":1152.8211654363658,"y":903.7001038169298},"end":{"x":1083.8266880599294,"y":990.7001038056327}},{"start":{"x":1083.8266880599294,"y":990.7001038056327},"end":{"x":888.8216366984683,"y":977.7001038056327}},{"start":{"x":888.8216366984683,"y":977.7001038056327},"end":{"x":804.8211907353622,"y":918.7001038056327}},{"start":{"x":804.8211907353622,"y":918.7001038056327},"end":{"x":746.8211704047952,"y":917.7001038056327}},{"start":{"x":746.8211704047952,"y":917.7001038056327},"end":{"x":668.8211652886722,"y":931.7001038056327}},{"start":{"x":668.8211652886722,"y":931.7001038056327},"end":{"x":540.8211652787172,"y":892.7001038056327}},{"start":{"x":540.8211652787172,"y":892.7001038056327},"end":{"x":458.82116527757773,"y":945.7001038056327}},{"start":{"x":458.82116527757773,"y":945.7001038056327},"end":{"x":369.821165277452,"y":974.7001038056327}},{"start":{"x":369.821165277452,"y":974.7001038056327},"end":{"x":285.98237518140195,"y":938.7646342837095}},{"start":{"x":285.98237518140195,"y":938.7646342837095},"end":{"x":199.82987101776308,"y":976.7035886137685}},{"start":{"x":199.82987101776308,"y":976.7035886137685},"end":{"x":69.82175634647672,"y":941.7003404037966}},{"start":{"x":69.82175634647672,"y":941.7003404037966},"end":{"x":-2.1788266401444503,"y":979.7001070409301}},{"start":{"x":0.8211652774412528,"y":473.6894422808508},"end":{"x":-2.1788266401444503,"y":979.7001070409301}},{"start":{"x":0.8211652774412528,"y":473.6894422808508},"end":{"x":3.821165277441253,"y":353.71145468482956}},{"start":{"x":6.821165277441253,"y":137.70044091148603},"end":{"x":3.821165277441253,"y":353.71145468482956}},{"start":{"x":6.821165277441253,"y":137.70044091148603},"end":{"x":161.82116527744125,"y":129.70010380563193}},{"start":{"x":161.82116527744125,"y":129.70010380563193},"end":{"x":199.82116527744125,"y":204.70010380563193}},{"start":{"x":199.82116527744125,"y":204.70010380563193},"end":{"x":304.82116527744125,"y":192.70010380563193}},{"start":{"x":304.82116527744125,"y":192.70010380563193},"end":{"x":390.82116527744125,"y":241.70010380563193}},{"start":{"x":390.82116527744125,"y":241.70010380563193},"end":{"x":492.82116527744125,"y":225.70010380563193}},{"start":{"x":492.82116527744125,"y":225.70010380563193},"end":{"x":601.8211652774412,"y":247.70010380563193}},{"start":{"x":601.8211652774412,"y":247.70010380563193},"end":{"x":724.8211652774412,"y":216.70010380563193}},{"start":{"x":724.8211652774412,"y":216.70010380563193},"end":{"x":808.8211652774412,"y":257.7001038056319}},{"start":{"x":808.8211652774412,"y":257.7001038056319},"end":{"x":999.7702786071045,"y":257.7001038056319}},{"start":{"x":999.7702786071045,"y":257.7001038056319},"end":{"x":1164.62085245883,"y":235.70010380563193}},{"start":{"x":1164.62085245883,"y":235.70010380563193},"end":{"x":1319.8075652043597,"y":237.70010380563193}},{"start":{"x":1319.8075652043597,"y":237.70010380563193},"end":{"x":1444.8205102703882,"y":230.70010380563193}},{"start":{"x":1444.8205102703882,"y":230.70010380563193},"end":{"x":1635.2283455625031,"y":212.70010380563193}},{"start":{"x":1635.2283455625031,"y":212.70010380563193},"end":{"x":1756.7809162733945,"y":242.70010380563193}},{"start":{"x":1756.7809162733945,"y":242.70010380563193},"end":{"x":1860.7953353647702,"y":244.70010380563193}},{"start":{"x":1860.7953353647702,"y":244.70010380563193},"end":{"x":1938.820502409878,"y":240.70010380563193}},{"start":{"x":1938.820502409878,"y":240.70010380563193},"end":{"x":2042.821138388876,"y":217.70010380563193}},{"start":{"x":2042.821138388876,"y":217.70010380563193},"end":{"x":2045.8211652774387,"y":508.7000784678124}},{"start":{"x":2044.8211652771097,"y":967.7001038055603},"end":{"x":2049.821165277439,"y":721.6992166958371}},{"start":{"x":2045.8211652774387,"y":508.7000784678124},"end":{"x":2049.821165277439,"y":721.6992166958371}},{"start":{"x":44.82116527744023,"y":500.7001038056322},"end":{"x":44.82116527744023,"y":500.7001038056322}}] 

        engine.add "Trap",
          x: width
          y: height * 2 - 300
          scale: 0.5

        engine.delay 0, ->
          engine.first("Player")?.position(Point(50, height))

        engine.add "Goal",
          x: width * 2
          y: height
      -> # 2
        bg "esophagous",
          y: height/2
          scale: 1.5

        lines [{"start":{"x":2024.0666983388205,"y":56.0652510076369},"end":{"x":2267.0040386690134,"y":536.0039510312752}},{"start":{"x":2267.0040386690134,"y":536.0039510312752},"end":{"x":2229.000000636034,"y":789.6674669488525}},{"start":{"x":2229.000000636034,"y":789.6674669488525},"end":{"x":2215.0000000000146,"y":1052.889185603902}},{"start":{"x":2215.0000000000146,"y":1052.889185603902},"end":{"x":1932.000000000002,"y":1050.9968113322504}},{"start":{"x":1932.000000000002,"y":1050.9968113322504},"end":{"x":1908.000000000002,"y":881.9997429570763}},{"start":{"x":1908.000000000002,"y":881.9997429570763},"end":{"x":1808.000000000002,"y":1010.9999792794141}},{"start":{"x":1808.000000000002,"y":1010.9999792794141},"end":{"x":1727.000000000002,"y":847.9999999097987}},{"start":{"x":1727.000000000002,"y":847.9999999097987},"end":{"x":1522.000000000002,"y":1042.9999999965446}},{"start":{"x":1522.000000000002,"y":1042.9999999965446},"end":{"x":1322.0277439211627,"y":1075.999999999999}},{"start":{"x":1322.0277439211627,"y":1075.999999999999},"end":{"x":1164.001994596118,"y":1125.999999999999}},{"start":{"x":1164.001994596118,"y":1125.999999999999},"end":{"x":978.0533504780782,"y":1225.946524598819}},{"start":{"x":978.0533504780782,"y":1225.946524598819},"end":{"x":404.001535152064,"y":1285.9984612532928}},{"start":{"x":404.001535152064,"y":1285.9984612532928},"end":{"x":376.095731161374,"y":1190.9999999691229}},{"start":{"x":376.095731161374,"y":1190.9999999691229},"end":{"x":265.0108787119285,"y":1135.999999996491}},{"start":{"x":265.0108787119285,"y":1135.999999996491},"end":{"x":215.00116747341008,"y":1026.9999999996235}},{"start":{"x":215.00116747341008,"y":1026.9999999996235},"end":{"x":180.00027917807387,"y":1026.9999999999102}},{"start":{"x":180.00027917807387,"y":1026.9999999999102},"end":{"x":200.00329164467348,"y":1147.0032916443142}},{"start":{"x":200.00329164467348,"y":1147.0032916443142},"end":{"x":124.00047027902326,"y":1190.000470278972}},{"start":{"x":124.00047027902326,"y":1190.000470278972},"end":{"x":-1.999932810986138,"y":1155.0000671890064}},{"start":{"x":-1.999932810986138,"y":1155.0000671890064},"end":{"x":3.0000025738574436,"y":981.0000025738573}},{"start":{"x":3.0000025738574436,"y":981.0000025738573},"end":{"x":-62.999999563392635,"y":897.0000004366075}},{"start":{"x":-62.999999563392635,"y":897.0000004366075},"end":{"x":-201.99999997035684,"y":861.0000000296429}},{"start":{"x":-201.99999997035684,"y":861.0000000296429},"end":{"x":-238.80458593235306,"y":704.1673324223152}},{"start":{"x":-238.80458593235306,"y":704.1673324223152},"end":{"x":-311.9823371222407,"y":529.015124664033}},{"start":{"x":-311.9823371222407,"y":529.015124664033},"end":{"x":-215.15388854642936,"y":318.2321601489796}},{"start":{"x":234.9990556136488,"y":-178.99877362290545},"end":{"x":771.6330366168092,"y":-344.63303654661297}},{"start":{"x":771.6330366168092,"y":-344.63303654661297},"end":{"x":1320.485806979123,"y":-197.86266224169145}},{"start":{"x":1320.485806979123,"y":-197.86266224169145},"end":{"x":1722.9626422858955,"y":-75.99995701791738}},{"start":{"x":1722.9626422858955,"y":-75.99995701791738},"end":{"x":2024.0666983388205,"y":56.0652510076369}},{"start":{"x":-215.15388854642936,"y":318.2321601489796},"end":{"x":-127.00024489629038,"y":8.999441219929452}},{"start":{"x":-127.00024489629038,"y":8.999441219929452},"end":{"x":-44.32383253547107,"y":-255.41853570815806}},{"start":{"x":-44.32383253547107,"y":-255.41853570815806},"end":{"x":234.9990556136488,"y":-178.99877362290545}},{"start":{"x":-147.00000000075136,"y":-361.9999999999998},"end":{"x":-147.00000000070958,"y":-361.9999999999998}}]

        engine.add "Trap",
          x: width
          y: height * 2 - 300
          scale: 0.5

        engine.add "Goal",
          x: width * 2
          y: height
      -> #3
        bg "stomach",
          scale: 8
          x: 0

        lines [{"start":{"x":-157.0000216563431,"y":-445.95963586239156},"end":{"x":-130.00000078345977,"y":63.00146025019865}},{"start":{"x":-157.0000216563431,"y":-445.95963586239156},"end":{"x":-104.77028326163986,"y":-561.6406708883237}},{"start":{"x":-104.77028326163986,"y":-561.6406708883237},"end":{"x":-12.97072977602545,"y":-526.9542147269963}},{"start":{"x":-12.97072977602545,"y":-526.9542147269963},"end":{"x":52.00394924500608,"y":-369.9938224845521}},{"start":{"x":52.00394924500608,"y":-369.9938224845521},"end":{"x":90.00000104099274,"y":36.75928284775324}},{"start":{"x":90.00000104099274,"y":36.75928284775324},"end":{"x":148.7451030715606,"y":118.7499781625994}},{"start":{"x":148.7451030715606,"y":118.7499781625994},"end":{"x":256.98966035915794,"y":26.989858112386003}},{"start":{"x":256.98966035915794,"y":26.989858112386003},"end":{"x":446.99906543160137,"y":-111.0009166940913}},{"start":{"x":446.99906543160137,"y":-111.0009166940913},"end":{"x":640.9999105518511,"y":-148.0000877373874}},{"start":{"x":640.9999105518511,"y":-148.0000877373874},"end":{"x":852.9999919150564,"y":-121.00000793031313}},{"start":{"x":852.9999919150564,"y":-121.00000793031313},"end":{"x":911.999998462225,"y":-95.00000150836394}},{"start":{"x":-130.00000078345977,"y":63.00146025019865},"end":{"x":-108.9999442330701,"y":364.98921199925013}},{"start":{"x":-108.9999442330701,"y":364.98921199925013},"end":{"x":-127.99999786369654,"y":497.9995867363649}},{"start":{"x":-127.99999786369654,"y":497.9995867363649},"end":{"x":-198.9062855893369,"y":597.9151539674021}},{"start":{"x":-198.9062855893369,"y":597.9151539674021},"end":{"x":-347.9985631264201,"y":655.9986991005787}},{"start":{"x":-347.9985631264201,"y":655.9986991005787},"end":{"x":-533.9998169153375,"y":654.9998342409974}},{"start":{"x":-533.9998169153375,"y":654.9998342409974},"end":{"x":-603.999973842597,"y":716.9999763179233}},{"start":{"x":-603.999973842597,"y":716.9999763179233},"end":{"x":-818.9622842047734,"y":741.9622813680483}},{"start":{"x":-818.9622842047734,"y":741.9622813680483},"end":{"x":-934.9994842654878,"y":816.9994842266975}},{"start":{"x":-934.9994842654878,"y":816.9994842266975},"end":{"x":-1044.9999751611817,"y":1014.9999751593135}},{"start":{"x":-1044.9999751611817,"y":1014.9999751593135},"end":{"x":-1072.999997879775,"y":1163.9999978796154}},{"start":{"x":-1072.999997879775,"y":1163.9999978796154},"end":{"x":-1062.030759728911,"y":1420.7620953000471}},{"start":{"x":-1062.030759728911,"y":1420.7620953000471},"end":{"x":-1045.0000002080747,"y":1555.9879683464114}},{"start":{"x":-1045.0000002080747,"y":1555.9879683464114},"end":{"x":-988.0000000030129,"y":1662.9998257860723}},{"start":{"x":-792.0000000000437,"y":1721.9999974774462},"end":{"x":-738.0000000000095,"y":1626.99999946202}},{"start":{"x":-738.0000000000095,"y":1626.99999946202},"end":{"x":-831.0000000000009,"y":1477.9999999613228}},{"start":{"x":-831.0000000000009,"y":1477.9999999613228},"end":{"x":-851.0000000000009,"y":1326.9999999965034}},{"start":{"x":-851.0000000000009,"y":1326.9999999965034},"end":{"x":-823.0000000000009,"y":1183.2800733247188}},{"start":{"x":-823.0000000000009,"y":1183.2800733247188},"end":{"x":-741.0000000000009,"y":1081.037788510944}},{"start":{"x":-741.0000000000009,"y":1081.037788510944},"end":{"x":-647.0000000000009,"y":1036.0060535717446}},{"start":{"x":-647.0000000000009,"y":1036.0060535717446},"end":{"x":-553.0000000000009,"y":1075.000969758531}},{"start":{"x":-553.0000000000009,"y":1075.000969758531},"end":{"x":-429.0000000000009,"y":1190.0000697189337}},{"start":{"x":-429.0000000000009,"y":1190.0000697189337},"end":{"x":-226.54838931762754,"y":1242.00000001946}},{"start":{"x":-226.54838931762754,"y":1242.00000001946},"end":{"x":-2.0417475257988826,"y":1240.0000000014818}},{"start":{"x":-2.0417475257988826,"y":1240.0000000014818},"end":{"x":421.8790850538919,"y":1141.019778280334}},{"start":{"x":421.8790850538919,"y":1141.019778280334},"end":{"x":609.9902528787233,"y":1060.0015943545718}},{"start":{"x":609.9902528787233,"y":1060.0015943545718},"end":{"x":868.9761057874025,"y":886.9483315739055}},{"start":{"x":868.9761057874025,"y":886.9483315739055},"end":{"x":1002.9995892153945,"y":729.9991117265757}},{"start":{"x":1123.7919888832373,"y":377.3531946757616},"end":{"x":1002.9995892153945,"y":729.9991117265757}},{"start":{"x":1123.7919888832373,"y":377.3531946757616},"end":{"x":1070.9999999998695,"y":69.02863958722315}},{"start":{"x":1070.9999999998695,"y":69.02863958722315},"end":{"x":911.999998462225,"y":-95.00000150836394}},{"start":{"x":-988.0000000030129,"y":1662.9998257860723},"end":{"x":-792.0000000000437,"y":1721.9999974774462}}] 
    
        engine.add "Goal",
          x: -width + 150
          y: 3 * height - 100

        engine.add "Acid"
      -> #4
        bg "intestine",
          x: width - 200

        lines [{"start":{"x":26.000026417829417,"y":-119.99919771933122},"end":{"x":-15.999999999527233,"y":-51.999999985642035}},{"start":{"x":-15.999999999527233,"y":-51.999999985642035},"end":{"x":10.000000000042746,"y":42.00000000129779}},{"start":{"x":10.000000000042746,"y":42.00000000129779},"end":{"x":-49.9999999999971,"y":146.0000000000881}},{"start":{"x":-49.9999999999971,"y":146.0000000000881},"end":{"x":-14.999999999999773,"y":251.0000000000075}},{"start":{"x":-14.999999999999773,"y":251.0000000000075},"end":{"x":-71.00829272724286,"y":317.9806129945058}},{"start":{"x":-71.00829272724286,"y":317.9806129945058},"end":{"x":-42.00059618975524,"y":394.9986062083412}},{"start":{"x":-42.00059618975524,"y":394.9986062083412},"end":{"x":-94.00004286192154,"y":493.99989979601605}},{"start":{"x":-94.00004286192154,"y":493.99989979601605},"end":{"x":-47.00000291007473,"y":610.9999931967334}},{"start":{"x":-47.00000291007473,"y":610.9999931967334},"end":{"x":-28.000000031651098,"y":772.9999999260051}},{"start":{"x":-28.000000031651098,"y":772.9999999260051},"end":{"x":37.93093699666417,"y":855.9083514553149}},{"start":{"x":37.93093699666417,"y":855.9083514553149},"end":{"x":85.99013293202279,"y":871.9869061237314}},{"start":{"x":85.99013293202279,"y":871.9869061237314},"end":{"x":165.99910814601208,"y":838.9988164847149}},{"start":{"x":165.99910814601208,"y":838.9988164847149},"end":{"x":253.99993210535627,"y":720.9999099019011}},{"start":{"x":253.99993210535627,"y":720.9999099019011},"end":{"x":283.9999922845784,"y":651.9999897614191}},{"start":{"x":283.9999922845784,"y":651.9999897614191},"end":{"x":248.99999901691046,"y":575.9999986954126}},{"start":{"x":248.99999901691046,"y":575.9999986954126},"end":{"x":292.99999985127283,"y":543.9999998026351}},{"start":{"x":292.99999985127283,"y":543.9999998026351},"end":{"x":277.99999998990234,"y":459.9999999866003}},{"start":{"x":277.99999998990234,"y":459.9999999866003},"end":{"x":257.99999999983606,"y":422.9999999997824}},{"start":{"x":257.99999999983606,"y":422.9999999997824},"end":{"x":293.89690731419927,"y":351.4661955398866}},{"start":{"x":293.89690731419927,"y":351.4661955398866},"end":{"x":242.98527109321037,"y":269.066605604456}},{"start":{"x":242.98527109321037,"y":269.066605604456},"end":{"x":276.9999972459212,"y":88.25490938280018}},{"start":{"x":276.9999972459212,"y":88.25490938280018},"end":{"x":213.99999999974085,"y":-17.908033030308985}},{"start":{"x":213.99999999974085,"y":-17.908033030308985},"end":{"x":225.99999999997658,"y":-41.99168738789848}},{"start":{"x":225.99999999997658,"y":-41.99168738789848},"end":{"x":291.99999999999807,"y":13.000709559021061}},{"start":{"x":291.99999999999807,"y":13.000709559021061},"end":{"x":430.99999999999983,"y":1.000051012387928}},{"start":{"x":430.99999999999983,"y":1.000051012387928},"end":{"x":493.9999999999999,"y":90.0000086533087}},{"start":{"x":493.9999999999999,"y":90.0000086533087},"end":{"x":561.9999999999999,"y":78.00000184547113}},{"start":{"x":561.9999999999999,"y":78.00000184547113},"end":{"x":603.9999999999999,"y":127.00000035101286}},{"start":{"x":603.9999999999999,"y":127.00000035101286},"end":{"x":709.5765356812683,"y":134.0000000000263}},{"start":{"x":709.5765356812683,"y":134.0000000000263},"end":{"x":804.9428646549658,"y":171.0000000000035}},{"start":{"x":804.9428646549658,"y":171.0000000000035},"end":{"x":859.9846803649934,"y":157.00000000000105}},{"start":{"x":859.9846803649934,"y":157.00000000000105},"end":{"x":977.9976823614522,"y":178.00000000000026}},{"start":{"x":977.9976823614522,"y":178.00000000000026},"end":{"x":1043.4734171131759,"y":118.00000000000026}},{"start":{"x":1043.4734171131759,"y":118.00000000000026},"end":{"x":1135.8939435303025,"y":136.00000000000026}},{"start":{"x":1135.8939435303025,"y":136.00000000000026},"end":{"x":1237.9872380821894,"y":50.000000000000256}},{"start":{"x":1237.9872380821894,"y":50.000000000000256},"end":{"x":1299.9974296848923,"y":58.000000000000256}},{"start":{"x":1299.9974296848923,"y":58.000000000000256},"end":{"x":1352.8896761966423,"y":-4.999999999999744}},{"start":{"x":1352.8896761966423,"y":-4.999999999999744},"end":{"x":1438.866393241621,"y":-40.999999999999744}},{"start":{"x":1438.866393241621,"y":-40.999999999999744},"end":{"x":1467.9760011960805,"y":-28.999999999999744}},{"start":{"x":1467.9760011960805,"y":-28.999999999999744},"end":{"x":1453.9961554854192,"y":43.000000000000256}},{"start":{"x":1453.9961554854192,"y":43.000000000000256},"end":{"x":1492.9991317971778,"y":98.00000000000026}},{"start":{"x":1492.9991317971778,"y":98.00000000000026},"end":{"x":1480.9998440510826,"y":216.00000000000026}},{"start":{"x":1480.9998440510826,"y":216.00000000000026},"end":{"x":1511.9999627079142,"y":264.0000000000002}},{"start":{"x":1511.9999627079142,"y":264.0000000000002},"end":{"x":1495.9999915783667,"y":338.0000000000002}},{"start":{"x":1495.9999915783667,"y":338.0000000000002},"end":{"x":1514.9999977419168,"y":376.0000000000002}},{"start":{"x":1514.9999977419168,"y":376.0000000000002},"end":{"x":1457.9999994900593,"y":474.0000000000002}},{"start":{"x":1457.9999994900593,"y":474.0000000000002},"end":{"x":1469.9999999999359,"y":524.7355052115377}},{"start":{"x":1469.9999999999359,"y":524.7355052115377},"end":{"x":1438.9999999999852,"y":578.9402694106125}},{"start":{"x":1438.9999999999852,"y":578.9402694106125},"end":{"x":1450.9999999999948,"y":601.9809846533508}},{"start":{"x":1450.9999999999948,"y":601.9809846533508},"end":{"x":1389.999999999998,"y":657.9959446410546}},{"start":{"x":1389.999999999998,"y":657.9959446410546},"end":{"x":1426.999999999998,"y":685.7081195074124}},{"start":{"x":1426.999999999998,"y":685.7081195074124},"end":{"x":1409.999999999998,"y":707.941213785347}},{"start":{"x":1409.999999999998,"y":707.941213785347},"end":{"x":1345.999999999998,"y":699.9925095329065}},{"start":{"x":1345.999999999998,"y":699.9925095329065},"end":{"x":1238.999999999998,"y":698.9989893589545}},{"start":{"x":1238.999999999998,"y":698.9989893589545},"end":{"x":1144.999999999998,"y":668.9998077737337}},{"start":{"x":1144.999999999998,"y":668.9998077737337},"end":{"x":1032.999999999998,"y":635.9999692061035}},{"start":{"x":1032.999999999998,"y":635.9999692061035},"end":{"x":967.999999999998,"y":664.9999947763847}},{"start":{"x":967.999999999998,"y":664.9999947763847},"end":{"x":788.999999999998,"y":717.999999578917}},{"start":{"x":788.999999999998,"y":717.999999578917},"end":{"x":723.005895171871,"y":895.9780840711585}},{"start":{"x":723.005895171871,"y":895.9780840711585},"end":{"x":714.0012572496533,"y":994.9953260406074}},{"start":{"x":714.0012572496533,"y":994.9953260406074},"end":{"x":711.0000000189506,"y":1098.820304997607}},{"start":{"x":711.0000000189506,"y":1098.820304997607},"end":{"x":675.0000000020335,"y":1223.980715627126}},{"start":{"x":675.0000000020335,"y":1223.980715627126},"end":{"x":701.0000000002448,"y":1283.9976794854442}},{"start":{"x":701.0000000002448,"y":1283.9976794854442},"end":{"x":773.9899952833882,"y":1358.9198733664425}},{"start":{"x":893.9999998800532,"y":1343.9999990393605},"end":{"x":995.9999999863693,"y":1261.9999998908347}},{"start":{"x":995.9999999863693,"y":1261.9999998908347},"end":{"x":985.9999999992207,"y":1050.9999999937577}},{"start":{"x":985.9999999992207,"y":1050.9999999937577},"end":{"x":911.999999999999,"y":853.7649826127157}},{"start":{"x":911.999999999999,"y":853.7649826127157},"end":{"x":1006.999999999999,"y":869.0165345169303}},{"start":{"x":1006.999999999999,"y":869.0165345169303},"end":{"x":1049.999999999999,"y":800.0016757391065}},{"start":{"x":1049.999999999999,"y":800.0016757391065},"end":{"x":1159.999999999999,"y":919.0003573809988}},{"start":{"x":1159.999999999999,"y":919.0003573809988},"end":{"x":1211.999999999999,"y":903.0000854605663}},{"start":{"x":1211.999999999999,"y":903.0000854605663},"end":{"x":1271.999999999999,"y":957.0000216398727}},{"start":{"x":1271.999999999999,"y":957.0000216398727},"end":{"x":1319.999999999999,"y":906.0000061440238}},{"start":{"x":1319.999999999999,"y":906.0000061440238},"end":{"x":1383.999999999999,"y":943.0000013103217}},{"start":{"x":1383.999999999999,"y":943.0000013103217},"end":{"x":1454.1662297764185,"y":909.0000000005458}},{"start":{"x":1454.1662297764185,"y":909.0000000005458},"end":{"x":1473.800620414087,"y":859.0000000001307}},{"start":{"x":1473.800620414087,"y":859.0000000001307},"end":{"x":1529.9365271299048,"y":895.0000000000416}},{"start":{"x":1529.9365271299048,"y":895.0000000000416},"end":{"x":1591.9885988330075,"y":843.0000000000077}},{"start":{"x":1591.9885988330075,"y":843.0000000000077},"end":{"x":1594.9975684995177,"y":793.0000000000019}},{"start":{"x":1594.9975684995177,"y":793.0000000000019},"end":{"x":1664.9993843083043,"y":771.000000000001}},{"start":{"x":1664.9993843083043,"y":771.000000000001},"end":{"x":1664.8051660713465,"y":678.2105516234925}},{"start":{"x":1664.8051660713465,"y":678.2105516234925},"end":{"x":1720.9765553710088,"y":581.025335960376}},{"start":{"x":1720.9765553710088,"y":581.025335960376},"end":{"x":1682.9947055232515,"y":524.0057215941938}},{"start":{"x":1682.9947055232515,"y":524.0057215941938},"end":{"x":1714.9999907751487,"y":398.9293405800329}},{"start":{"x":1714.9999907751487,"y":398.9293405800329},"end":{"x":1681.9999988245806,"y":326.24583420130296}},{"start":{"x":1681.9999988245806,"y":326.24583420130296},"end":{"x":1703.999999996572,"y":279.2796018530181}},{"start":{"x":1703.999999996572,"y":279.2796018530181},"end":{"x":1674.9999999991326,"y":242.3240140156209}},{"start":{"x":1674.9999999991326,"y":242.3240140156209},"end":{"x":1641.999999999998,"y":23.19150424117737}},{"start":{"x":1641.999999999998,"y":23.19150424117737},"end":{"x":1577.999999999998,"y":-106.73004732602692}},{"start":{"x":1577.999999999998,"y":-106.73004732602692},"end":{"x":1563.999999999998,"y":-199.30005709951013}},{"start":{"x":1563.999999999998,"y":-199.30005709951013},"end":{"x":1447.999999999998,"y":-313.9467150738413}},{"start":{"x":1447.999999999998,"y":-313.9467150738413},"end":{"x":1284.999999999998,"y":-221.99193876363097}},{"start":{"x":1284.999999999998,"y":-221.99193876363097},"end":{"x":1221.999999999998,"y":-217.99757643610053}},{"start":{"x":1221.999999999998,"y":-217.99757643610053},"end":{"x":1115.999999999998,"y":-103.99948313213952}},{"start":{"x":1115.999999999998,"y":-103.99948313213952},"end":{"x":999.435698771942,"y":-83.99999985573277}},{"start":{"x":999.435698771942,"y":-83.99999985573277},"end":{"x":878.0828709149514,"y":-77.99999997256003}},{"start":{"x":878.0828709149514,"y":-77.99999997256003},"end":{"x":665.330583251302,"y":-113.99999999999784}},{"start":{"x":665.330583251302,"y":-113.99999999999784},"end":{"x":538.0446034938253,"y":-176.99999999999966}},{"start":{"x":538.0446034938253,"y":-176.99999999999966},"end":{"x":380.4798791821703,"y":-285.9999999999999}},{"start":{"x":380.4798791821703,"y":-285.9999999999999},"end":{"x":282.0725987590663,"y":-356.9999999999999}},{"start":{"x":282.0725987590663,"y":-356.9999999999999},"end":{"x":104.00873590643721,"y":-310.9999999999999}},{"start":{"x":104.00873590643721,"y":-310.9999999999999},"end":{"x":27.449357580086257,"y":-182.9999999999999}},{"start":{"x":27.449357580086257,"y":-182.9999999999999},"end":{"x":26.000026417829417,"y":-119.99919771933122}},{"start":{"x":-124.00002049377656,"y":107.00006021713492},"end":{"x":-124.00001935384995,"y":107.00005686767344}},{"start":{"x":839.0037294863416,"y":1501.997415553745},"end":{"x":839.0035220408869,"y":1501.9975593085624}}] 

        engine.add "Goal",
          x: width - 200
          y: 3 * height
      ->
        bg "bathroom"
        
        lines [{"start":{"x":20.999800215614698,"y":749.999835347711},"end":{"x":503.9999871902866,"y":826.9999894428755}},{"start":{"x":503.9999871902866,"y":826.9999894428755},"end":{"x":497.9999997385282,"y":1082.9999997845084}},{"start":{"x":497.9999997385282,"y":1082.9999997845084},"end":{"x":519.9549727471783,"y":1155.9979226165133}},{"start":{"x":1229.9998039865723,"y":1168.9999909566977},"end":{"x":1307.7471311207971,"y":1093.7893032030506}},{"start":{"x":1067.9999996351971,"y":504.33310996404794},"end":{"x":1180.9999999344732,"y":574.0598341042618}},{"start":{"x":1180.9999999344732,"y":574.0598341042618},"end":{"x":1187.9999999970196,"y":895.002721440856}},{"start":{"x":1187.9999999970196,"y":895.002721440856},"end":{"x":1217.9999999997972,"y":911.000184769975}},{"start":{"x":1217.9999999997972,"y":911.000184769975},"end":{"x":1300.999999999984,"y":886.0000140660824}},{"start":{"x":1300.999999999984,"y":886.0000140660824},"end":{"x":1293.999999999998,"y":574.0000005388392}},{"start":{"x":1293.999999999998,"y":574.0000005388392},"end":{"x":1419.999999999998,"y":499.00000004343656}},{"start":{"x":1419.999999999998,"y":499.00000004343656},"end":{"x":1418.999999999998,"y":464.00000000493606}},{"start":{"x":1418.999999999998,"y":464.00000000493606},"end":{"x":1323.999999999998,"y":424.0000000000108}},{"start":{"x":1323.999999999998,"y":424.0000000000108},"end":{"x":1189.999999999998,"y":423.000000000001}},{"start":{"x":1189.999999999998,"y":423.000000000001},"end":{"x":1067.9999996351971,"y":504.33310996404794}},{"start":{"x":1307.7471311207971,"y":1093.7893032030506},"end":{"x":2044.9999957453008,"y":1150.0000054856366}},{"start":{"x":1719.9866457324563,"y":864.9927948669017},"end":{"x":1707.9982984156711,"y":986.9990819308119}},{"start":{"x":1707.9982984156711,"y":986.9990819308119},"end":{"x":1784.9997425749743,"y":1016.9998611094494}},{"start":{"x":1784.9997425749743,"y":1016.9998611094494},"end":{"x":1852.9999852796082,"y":996.9999920577908}},{"start":{"x":1852.9999852796082,"y":996.9999920577908},"end":{"x":1845.9999975029575,"y":866.9999986527508}},{"start":{"x":1845.9999975029575,"y":866.9999986527508},"end":{"x":1902.9999995999835,"y":824.9999997841758}},{"start":{"x":1902.9999995999835,"y":824.9999997841758},"end":{"x":1888.9999999570712,"y":752.9999999768385}},{"start":{"x":1888.9999999570712,"y":752.9999999768385},"end":{"x":1930.999999989734,"y":736.9999999944612}},{"start":{"x":1930.999999989734,"y":736.9999999944612},"end":{"x":1950.9999999992187,"y":519.9999999995783}},{"start":{"x":1733.8564422332263,"y":498.1016209828923},"end":{"x":1950.9999999992187,"y":519.9999999995783}},{"start":{"x":1733.8564422332263,"y":498.1016209828923},"end":{"x":1709.999647393114,"y":507.00024960167025}},{"start":{"x":1709.999647393114,"y":507.00024960167025},"end":{"x":1712.9999773916604,"y":691.0000160038827}},{"start":{"x":1284.0886708625824,"y":-38.04695383308825},"end":{"x":1219.3273025724839,"y":25.985883602761874}},{"start":{"x":1219.3273025724839,"y":25.985883602761874},"end":{"x":1190.0417044908108,"y":156.99820130604405}},{"start":{"x":1190.0417044908108,"y":156.99820130604405},"end":{"x":1237.005958342758,"y":282.9997430196389}},{"start":{"x":1237.005958342758,"y":282.9997430196389},"end":{"x":1330.0008512715956,"y":322.9999632850793}},{"start":{"x":1330.0008512715956,"y":322.9999632850793},"end":{"x":1422.0000862746163,"y":206.99999627901872}},{"start":{"x":1422.0000862746163,"y":206.99999627901872},"end":{"x":1422.000009258754,"y":87.99999960067453}},{"start":{"x":1422.000009258754,"y":87.99999960067453},"end":{"x":1366.000000354681,"y":-19.000000015297246}},{"start":{"x":1366.000000354681,"y":-19.000000015297246},"end":{"x":1284.0886708625824,"y":-38.04695383308825}},{"start":{"x":872.0230693968081,"y":223.9692774770163},"end":{"x":868.005209738446,"y":472.99306196384447}},{"start":{"x":868.005209738446,"y":472.99306196384447},"end":{"x":682.0000566631004,"y":467.99992453927496}},{"start":{"x":682.0000566631004,"y":467.99992453927496},"end":{"x":674.0000000089236,"y":211.13724639784385}},{"start":{"x":674.0000000089236,"y":211.13724639784385},"end":{"x":872.0230693968081,"y":223.9692774770163}}] 
        
        engine.add "Goal",
          x: 2 * width - 230
          y: height + 150
      ->
        bg "sewage"

        lines []
        
        engine.delay 0, ->
          engine.first("Player").destroy()
          engine.first("CameraTarget").I.initialPosition = Point(width, height)

        text = engine.add "Trap",
          spriteName: "gameOver"
          x: width
          y: height
        do (I=text.I) ->
          text.on "update", ->
            I.y = height + Math.sin(I.age * Math.TAU / 10) * 100
            I.scale = 1 / (1 + I.age/10)
        
        win = engine.add "Trap",
          spriteName: "youWin"
          x: width
          y: height * 2
        
        do (I=win.I, self=win) ->
          self.on "update", ->
            I.y = height * 2 - Math.sin(I.age * Math.TAU / 20) * height * 3
    ]