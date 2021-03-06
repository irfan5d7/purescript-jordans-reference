module Syntax.SpecialCompilerFeatures.Holes where

{-
Sometimes, when writing code, we're not always sure what function/value
we should use. In such cases, we can use a feature called "holes"
to ask the compiler to tell us what it thinks should go there.
This feature can often be very helpful when debugging a compiler error
or when exploring a new library for the first time.
-}

warning :: String
warning =
  """
  When we compile our code and it includes a hole,
  the compiler will output a compiler error.

  The error message will include the compiler's guess as to what should
  be put there.

  Since this outputs a compiler error, we have to comment out the following code
  to make this project build on Travis CI and on local computers

  Uncomment the following lines and then build the folder to see how it works
  """
-- toString :: Int -> String
-- toString i = ?placeholder_name i

-- While this file has 2 "holes," the second one will not be reported by
-- the compiler because it produces an error at the first hole. Thus,
-- this feature can only be used once in a project per compilation.

-- someValue :: String
-- someValue = "hello" ?I_Don't_know " world"
