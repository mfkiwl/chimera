#include "IdentifierRenamingVisitor.h"

void IdentifierRenamingVisitor::visit(Node *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Terminal *node) {
  if (node->getElement() == " [ ") {
    createIDContext(ContextType::expr);
  }

  if (node->getElement() == " ] ") {
    finishIDContext();
  }

  if (isStartingToken(node->getElement())) {
    

    startNewScope();

    if (node->getElement() == " module ") {
      createIDContext(ContextType::module);
    }

  } else if (isFnishingToken(node->getElement())) {

    finishScope();
  }

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Source_text *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Description_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Description *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_or_interface_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_item_no_pp *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Preprocessor_action *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_primitive *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_start *node) {
  createIDContext(ContextType::module);
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
  finishIDContext();
}

void IdentifierRenamingVisitor::visit(Lifetime_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Symbol_or_label *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_package_import_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_parameter_port_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_port_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_attribute_foreign_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_item_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_end *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Label_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_item_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Non_port_module_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_port_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_block *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_item_directive *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_or_generate_item *node) {
  createIDContext(ContextType::decl);
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
  finishIDContext();
}

void IdentifierRenamingVisitor::visit(Generate_region *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_block *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Timeunits_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_common_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Data_declaration_or_module_instantiation *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_param_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_override *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Gate_instantiation *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Type_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_import_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Always_construct *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Initial_construct *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_or_generate_item_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Continuous_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Loop_generate_construct *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Conditional_generate_construct *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assertion_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Final_construct *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Always_any *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Statement_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Reference_or_call *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Unqualified_id *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Procedural_timing_control_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assignment_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Seq_block *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Subroutine_call *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Conditional_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Nonblocking_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Case_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Loop_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Par_block *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Blocking_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Wait_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Procedural_assertion_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Procedural_continuous_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Event_trigger *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Disable_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Jump_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macrogenericitem *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay1 *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Statement_or_null *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Event_control *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Cycle_delay *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assignment_statement_no_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Inc_or_dec_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Lpvalue *node) {
  createIDContext(ContextType::expr);
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
  finishIDContext();
}

void IdentifierRenamingVisitor::visit(Expression *node) {
  createIDContext(ContextType::expr);
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
  finishIDContext();
}

void IdentifierRenamingVisitor::visit(Assign_modify_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Equiv_impl_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Cond_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Logor_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Logand_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Matches_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Bitor_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(With_exprs_suffix *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Xor_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Bitand_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Caseeq_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Logeq_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Comp_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Shift_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Open_range_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Add_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Mul_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Pow_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Unary_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Unary_prefix_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Unary_op *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Inc_or_dec_or_primary_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Postfix_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_primary *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Reference *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Reference_or_call_base *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Builtin_array_method *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Local_root *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Select_variable_dimension *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Hierarchy_extension *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Type_or_id_root *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_id *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Implicit_class_handle *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Qualified_id *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Genericidentifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_value_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameters *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Symbolidentifier *node) {
  // discover possible type of symbol
  node->setElement(placeID("logic"));
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macroidentifier *node) {
  node->setElement(placeID("logic"));
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Escapedidentifier *node) {
  node->setElement(placeID("logic"));
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Keywordidentifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Range_list_in_braces *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_value_simple *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_value *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_decnumber *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_realtime *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_identifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_timeliteral *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Begin *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Block_item_or_statement_or_null_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(End *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Block_item_or_statement_or_null_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Block_item_or_statement_or_null *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Block_item_decl *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(System_tf_call *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Systemtfidentifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Call_base *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_primary_no_groups *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_primary_parens *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_primary_braces *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assignment_pattern_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(String_literal *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Cast *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Constant_dec_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Based_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_unbasednumber *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Instantiation_base *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Lifetime *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Const_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Instantiation_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Non_anonymous_gate_instance_or_register_variable_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Non_anonymous_gate_instance_or_register_variable *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Gate_instance_or_register_variable *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Decl_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_port_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Trailing_decl_assignment_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_port_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_port_list_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_port_list_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_port *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_named *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Member_name *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Decl_dimensions *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_type_base *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Package_or_generate_item_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Genvar_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Clocking_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_declaration *node) {
  createIDContext(ContextType::decl);
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
  finishIDContext();
}

void IdentifierRenamingVisitor::visit(Task_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Function_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dpi_import_export *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specparam_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_type_or_implicit *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_variable_or_decl_assigns *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay3 *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Charge_strength_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay3_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(List_of_identifiers *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_variable_or_decl_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_variable *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_decl_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay3_or_drive_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Signing *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Decl_variable_dimension *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expression_or_null_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_type_primitive *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Trailing_decl_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_type_primitive_scalar *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Integer_vector_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Signed_unsigned_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Integer_atom_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Enum_data_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Non_integer_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Struct_data_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    List_of_ports_or_port_declarations_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_parameter_port_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_import_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Timescale_directive *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Misc_directive *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Time_literal *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expression_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_direction *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    List_of_identifiers_unpacked_dimensions *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(List_of_module_item_identifiers *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dir *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Var_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(List_of_port_identifiers *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_net_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Identifier_optional_unpacked_dimensions *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(List_of_ports_or_port_declarations *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    List_of_ports_or_port_declarations_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    List_of_ports_or_port_declarations_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_or_port_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Trailing_assign_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_expression_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Trailing_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_reference *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_reference_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Unique_priority_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expression_in_parens *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_or_event_control_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_or_event_control *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Event_expression_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Hierarchy_event_identifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Event_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Edge_operator *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Drive_strength_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Cont_assign_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Cont_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Drive_strength *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_mintypmax *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_mintypmax_trans_set *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expr_mintypmax_generalized *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_expr_or_assignment_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_expr_or_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_implication_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_prefix_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_if_else_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Simple_sequence_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_or_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_and_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_unary_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_intersect_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_within_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_throughout_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_delay_range_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_delay_repetition_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_expr_primary *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Sequence_repetition_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expression_or_dist *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Boolean_abbrev_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dist_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Value_range *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Expression_list_proper *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Streaming_concatenation *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Bin_based_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dec_based_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Hex_based_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Oct_based_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_binbase *node) {

  node->setElement("'b");

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_bindigits *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macronumericwidth *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_decbase *node) {

  node->setElement("'d");

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_decdigits *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_xzdigits *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Case_any *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Case_items *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Case_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Preprocessor_directive *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Param_type_followed_by_id_and_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_assign_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Localparam_assign_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Type_assignment_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_expr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_value_ranges_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Bit_logic_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Bit_logic *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_hexbase *node) {

  node->setElement("'h");

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_hexdigits *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_item_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_item_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_block *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Genvar_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(For_step_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(For_step *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(For_initialization_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Repeat_control *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(For_initialization *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(For_init_decl_or_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_expr_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_value_byname_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Preprocess_include_argument *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Pp_identifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macro_formals_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_stringliteral *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Parameter_value_byname_list_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Parameter_value_byname_list_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_value_byname *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Module_parameter_port_list_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Module_parameter_port_list_preprocessor_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Module_parameter_port_list_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Module_parameter_port *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Parameter_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Type_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_if *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_case_items *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_new *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dynamic_array_new *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Port_declaration_noattr *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Var_or_net_type_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Data_type_or_implicit_basic_followed_by_id_and_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Type_identifier_followed_by_id *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Type_identifier_or_implicit_basic_followed_by_id_and_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Defparam_assign_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Defparam_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Localparam_assign *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Argument_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_argument_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_argument_list_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_argument_list_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Any_argument *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Task_declaration_id *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_list_paren_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Tf_item_or_statement_or_null_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_item_or_statement_or_null_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_item_or_statement_or_null *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Task_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Scope_or_if_res *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Array_reduction_method *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Array_locator_method *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Gatetype *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Primitive_gate_instance_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Switchtype *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dr_strength1 *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dr_strength0 *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Primitive_gate_instance *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_scope *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Join_keyword *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Function_return_type_and_id *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Endfunction_label_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Function_item_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Statement_or_null_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_list_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_list_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_direction_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_item_expr_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_direction *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Generate_case_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Net_type_or_none *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Pull01 *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Statement_or_null_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Function_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Function_item_data_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_port_declaration *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Non_anonymous_instantiation_base *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(List_of_tf_variable_identifiers *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_variable_identifier_first *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tf_variable_identifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_octbase *node) {

  node->setElement("'o");

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_octdigits *node) {

  

  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_item_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_item_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_simple_path_decl *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Spec_reference_event *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Spec_notifier_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_edge_path_decl *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specparam_decl *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_simple_path *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Delay_value_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_path_identifiers *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Spec_polarity *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Spec_notifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_terminal_descriptor *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Edge_descriptor_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Casting_type *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_port_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_port_decls *node) {
  createIDContext(ContextType::decl);
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
  finishIDContext();
}

void IdentifierRenamingVisitor::visit(Udp_init_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_body *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_reg_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_initial_expr_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_input_declaration_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_entry_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_sequ_entry_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_comb_entry_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_sequ_entry *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_input_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_input_sym *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_output_sym *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_initial *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_port_decl *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specify_edge_path *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Polarity_operator *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Immediate_assertion_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Simple_immediate_assertion_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Deferred_immediate_assertion_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Action_block *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Enum_name_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Enum_name_list_item_last *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Enum_name_list_trailing_comma *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Enum_name *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Pos_neg_number *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macroiditem *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_declaration_modifiers_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Data_declaration_base *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Var_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specparam_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Specparam *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Concurrent_assertion_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Block_identifier_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Concurrent_assertion_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assert_property_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assume_property_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Cover_property_statement *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_spec *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Event_control_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_spec_disable_iff_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_item_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_item_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_virtual_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_declaration_extends_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Implements_interface_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_items_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_items *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Method_qualifier_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Method_prototype *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_constructor *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(List_of_variable_decl_assignments *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_item_qualifier_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Method_property_qualifier_list_not_starting_with_virtual *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Task_prototype *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Function_prototype *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_constructor_prototype *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Endnew_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Variable_decl_assignment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macro_formals_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Macro_formal_parameter *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Hierarchy_segment *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Select_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dpi_import_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dpi_spec_string *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Dpi_import_property_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Udp_comb_entry *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_ls_eq *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_rss_eq *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_rs_eq *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Packed_signing_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Struct_union_member_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_tagged_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Struct_union_member *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Random_qualifier_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Data_type_or_implicit_followed_by_id_and_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Type_identifier_or_implicit_followed_by_id_and_dimensions_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Assignment_pattern *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Structure_or_array_pattern_expression_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(
    Structure_or_array_pattern_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Structure_or_array_pattern_key *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_import_item_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Package_import_item *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Scope_prefix *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Tk_edge_descriptor *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Property_qualifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Class_item_qualifier *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Final_or_zero *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Stream_operator *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Slice_size_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Stream_expression_list *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Stream_expression *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Identifier_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}

void IdentifierRenamingVisitor::visit(Clocking_item_list_opt *node) {
  for (std::shared_ptr<Node> &child : node->getChildren()) {
    child->accept(*this);
  }
}