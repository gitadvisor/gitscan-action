/**
 * @name Use of a predictable seed in a secure random number generator
 * @description Using a predictable seed in a pseudo-random number generator can lead to predictability of the numbers generated by it.
 * @kind problem
 * @problem.severity error
 * @security-severity 9.8
 * @precision high
 * @id java/predictable-seed
 * @tags security
 *       external/cwe/cwe-335
 *       external/cwe/cwe-337
 */

import java
import semmle.code.java.security.RandomQuery

from GetRandomData da, RValue use, PredictableSeedExpr source
where
  da.getQualifier() = use and
  unsafelySeeded(use, source)
select da, "Usage of a SecureRandom number generator seeded with a $@.", source, "predictable value"
