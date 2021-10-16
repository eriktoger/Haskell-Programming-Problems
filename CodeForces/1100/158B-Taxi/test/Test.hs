import Test.HUnit
import Functions

testCase1 = TestCase (assertEqual "T1" 4 (calcTaxis [1, 2, 4, 3, 3]))
testCase2 = TestCase (assertEqual "T2" 5 (calcTaxis [2, 3, 4, 4, 2, 1, 3, 1]))

testSuits = TestList [
                    TestLabel "test case 1" testCase1,
                    TestLabel "test case 2" testCase2
                    ]

main :: IO ()
main = do
           runTestTT testSuits
           print "Tests Done!"
