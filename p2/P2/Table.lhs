Since we have to compare the values,
we build up some stuff for working with the table.

> module P2.Table where

> import Data.Int (Int32)
>
> import qualified Data.Map as M

> augment :: M.Map String (a, b) -> M.Map String (a, b, [Int32])
> augment = M.intersectionWith (\z (x, y) -> (x, y, z)) bounds

We statically know the optimum bounds,
so let's just store that and be done with it.

> bounds :: M.Map String [Int32]
> bounds = M.fromList
>     [ ("a280",      [2579])
>     , ("ali535",    [202310])
>     , ("bayg29",    [1610])
>     , ("bays29",    [2020])
>     , ("berlin52",  [7542])
>     , ("bier127",   [118282])
>     , ("brd14051",  [468942, 469445])
>     , ("burma14",   [3323])
>     , ("ch130",     [6110])
>     , ("ch150",     [6528])
>     , ("d198",      [15780])
>     , ("d493",      [35002])
>     , ("d657",      [48912])
>     , ("d1291",     [50801])
>     , ("d1655",     [62128])
>     , ("d2103",     [79952, 80450])
>     , ("d15112",    [1564590, 1573152])
>     , ("d18512",    [644650, 645488])
>     , ("eil51",     [426])
>     , ("eil76",     [538])
>     , ("eil101",    [629])
>     , ("fl417",     [11861])
>     , ("fl1400",    [20127])
>     , ("fl1577",    [22204, 22249])
>     , ("fl3795",    [28723, 28772])
>     , ("fnl4461",   [182566])
>     , ("gil262",    [2378])
>     , ("gr96",      [55209])
>     , ("gr137",     [69853])
>     , ("gr202",     [40160])
>     , ("gr229",     [134602])
>     , ("gr431",     [171414])
>     , ("gr666",     [294358])
>     , ("kroA100",   [21282])
>     , ("kroB100",   [22141])
>     , ("kroC100",   [20749])
>     , ("kroD100",   [21294])
>     , ("kroE100",   [22068])
>     , ("kroA150",   [26524])
>     , ("kroB150",   [26130])
>     , ("kroA200",   [29368])
>     , ("kroB200",   [29437])
>     , ("lin105",    [14379])
>     , ("lin318",    [42029])
>     , ("linhp318",  [41345])
>     , ("nrw1379",   [56638])
>     , ("p654",      [34643])
>     , ("pcb442",    [50778])
>     , ("pcb1173",   [56892])
>     , ("pcb3038",   [137694])
>     , ("pr76",      [108159])
>     , ("pr107",     [44303])
>     , ("pr124",     [59030])
>     , ("pr136",     [96772])
>     , ("pr144",     [58537])
>     , ("pr152",     [73682])
>     , ("pr226",     [80369])
>     , ("pr264",     [49135])
>     , ("pr299",     [48191])
>     , ("pr439",     [107217])
>     , ("pr1002",    [259045])
>     , ("pr2392",    [378032])
>     , ("rat99",     [1211])
>     , ("rat195",    [2323])
>     , ("rat575",    [6773])
>     , ("rat783",    [8806])
>     , ("rd100",     [7910])
>     , ("rd400",     [15281])
>     , ("rl1304",    [252948])
>     , ("rl1323",    [270199])
>     , ("rl1889",    [316536])
>     , ("rl5915",    [565040, 565530])
>     , ("rl5934",    [554070, 556045])
>     , ("rl11849",   [920847, 923368])
>     , ("st70",      [675])
>     , ("ts225",     [126643])
>     , ("tsp225",    [3919])
>     , ("u159",      [42080])
>     , ("u574",      [36905])
>     , ("u724",      [41910])
>     , ("u1060",     [224094])
>     , ("u1432",     [152970])
>     , ("u1817",     [57201])
>     , ("u2152",     [64253])
>     , ("u2319",     [234256])
>     , ("ulysses16", [6859])
>     , ("ulysses22", [7013])
>     , ("usa13509",  [19947008, 19982889])
>     , ("vm1084",    [239297])
>     , ("vm1748",    [336556])
>     ]