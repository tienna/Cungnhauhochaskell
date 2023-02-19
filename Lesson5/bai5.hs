-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]
countVotes :: String -> Int

countVotes color= length $ filter (\x -> x==color) votes
--countVotes color= length $ filter (==color) votes