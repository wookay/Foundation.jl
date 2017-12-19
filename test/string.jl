using Foundation
using Test

@test "abc".count == 3
@test_throws MethodError "abc".unknown_function
