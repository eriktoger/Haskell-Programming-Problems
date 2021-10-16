import Test.HUnit
import Functions

testCase1 = TestCase (assertEqual "6 6 4 -> 4" (4) (calculation "6 6 4"))

testSuits = TestList [
                    TestLabel "test case 1" testCase1
                    ]

main :: IO ()
main = do
           runTestTT testSuits
           print("Tests Done!")
