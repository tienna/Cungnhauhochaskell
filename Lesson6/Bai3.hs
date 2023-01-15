concat' :: [[a]]->[a]
--concat'  = foldr(++) []
concat'  = foldl(++) []