import Test.HUnit
import Functions

testCase1 = TestCase (assertEqual "" (".t.r") ( translate "tour")  )
testCase2 = TestCase (assertEqual ""  (".c.d.f.r.c.s") ( translate "Codeforces") )
testCase3 = TestCase (assertEqual "" (".b.c.b") (translate "aBAcAba"))

testSuits = TestList [
                    TestLabel "test case 1" testCase1,
                    TestLabel "test case 2" testCase2,
                    TestLabel "test case 3" testCase3
                    ]

main :: IO ()
main = do
           runTestTT testSuits
           print("Tests Done!")
