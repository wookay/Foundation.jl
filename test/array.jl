using Foundation
using Test

@test [1,2,3].count == 3

a = [1,2,3]
a.append(5)

@test a == [1,2,3,5]
