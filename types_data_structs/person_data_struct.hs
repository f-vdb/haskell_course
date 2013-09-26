
data Gender = Male | Female deriving (Eq, Show, Read)

data Person = Person {
    firstName :: String,
    lastName :: String,
    gender :: Gender,
    salary :: Int
} deriving (Eq, Show)

filtGender :: Gender -> [Person] -> [Person]
filtGender gend people = filter ((gend ==) . gender) people

main :: IO ()
main = do
    let people = [Person "Bob" "Baker" Male 700,
                  Person "Alice" "Allen" Female 800]
    putStr "The females are: "
    print $ filtGender Female people
    putStr "The males are: "
    print $ filtGender Male people

{--
If we have already the list of list we could convert them with function people = flip map peopleList (\f:l:g:s:[] -> Person {firstName=f,lastName=l,gender = read g, salary=read s}) where peopleList = [["Bob", "Baker", "male", "70000"], ["Alice","Allen","female","82000"]] – viorior 2 days ago --}
