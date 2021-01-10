#!/bin/bash
rm *.hi *.o l
stack ghc -- l.hs
mv l l-O0

rm *.hi *.o ls
stack ghc -- ls.hs
mv ls ls-O0

rm *.hi *.o r
stack ghc -- r.hs
mv r r-O0

rm *.hi *.o l
stack ghc -- -O2 l.hs
mv l l-O2

rm *.hi *.o ls
stack ghc -- -O2 ls.hs
mv ls ls-O2

rm *.hi *.o r
stack ghc -- -O2 r.hs
mv r r-O2

rm *.hi *.o
