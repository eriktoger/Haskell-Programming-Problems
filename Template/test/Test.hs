import Test.HUnit
import Functions

testCase1 = TestCase (assertEqual "Description" ("correct answer") ("some calculation"))

testSuits = TestList [
                    TestLabel "test case 1" testCase1
                    ]

main :: IO ()
main = do
           runTestTT testSuits
           print("Tests Done!")
