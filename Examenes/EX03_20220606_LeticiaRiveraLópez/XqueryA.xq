for $a in doc("JoaquinSabina")/lfm/topalbums
let $numrepro :=//album/playcount
where contains($a/album/name,"Calle")
order by $numrepro
return concat($a/album/name ,",", $numrepro)