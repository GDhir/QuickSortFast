#include <tuple>
#include <vector>
#include "gtest/gtest.h"
#include <cstdlib> 
#include <ctime> 
#include <algorithm>

class SortedResultsFixture : public::testing::TestWithParam<std::vector<int>> {
};

using ValuesContainer = std::vector<std::vector<int>>;

ValuesContainer make_values()
{
    srand((unsigned)time(0));
    int max_size{10000};

    ValuesContainer allInputs;

    std::vector<int> input;

    for( int i = 1; i <= max_size; i++ ) {
        for( int j = 0; j < i; j++ ) {
            input.push_back(rand());
        }
        allInputs.emplace_back(input);
        input.clear();

    }

    allInputs.emplace_back(std::vector<int>());

    for( int i = 0; i < 1000; i++ ) {
        input.push_back(5);
    }

    allInputs.emplace_back(input);
    input.clear();

    for( int i = 0; i < 1000; i++ ) {
        input.push_back(-5);
    }

    allInputs.emplace_back(input);
    input.clear();

    return allInputs;
}

INSTANTIATE_TEST_CASE_P(
    Ex,
    SortedResultsFixture,
    ::testing::ValuesIn(make_values())
);