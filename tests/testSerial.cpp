#include "testFixture.cpp"
#include <algorithm>
#include "../src/serialQuickSort.cpp"
#include "gtest/gtest.h"

TEST_P(SortedResultsFixture, ChecksIfSortWorksForRandomNumbers)
{
    auto& sortingCandidate = GetParam();
    std::vector<int> stlVector;
    std::copy(sortingCandidate.begin(), sortingCandidate.end(), std::back_inserter(stlVector));
    
    quickSort(const_cast<std::vector<int>&>(sortingCandidate));

    std::sort(std::begin(stlVector), std::end(stlVector));

    ASSERT_EQ( stlVector, sortingCandidate );
}

TEST(FactorialTest, Zero) {
  EXPECT_EQ(1, 1);
}





