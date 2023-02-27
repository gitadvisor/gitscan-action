// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.ErrorElement
import codeql.swift.elements.expr.Expr

module Generated {
  class UnresolvedSpecializeExpr extends Synth::TUnresolvedSpecializeExpr, Expr, ErrorElement {
    override string getAPrimaryQlClass() { result = "UnresolvedSpecializeExpr" }

    /**
     * Gets the sub expression of this unresolved specialize expression.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertUnresolvedSpecializeExprToRaw(this)
              .(Raw::UnresolvedSpecializeExpr)
              .getSubExpr())
    }

    /**
     * Gets the sub expression of this unresolved specialize expression.
     */
    final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
  }
}
