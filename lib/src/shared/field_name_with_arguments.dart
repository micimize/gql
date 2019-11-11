import 'dart:convert';
import 'package:gql/ast.dart';

Object _resolveValueNode(ValueNode valueNode, Map<String, Object> variables) {
  if (valueNode is VariableNode)
    return variables[valueNode.name.value];
  else if (valueNode is ListValueNode)
    return valueNode.values
        .map((node) => _resolveValueNode(node, variables))
        .toList();
  else if (valueNode is ObjectValueNode) {
    return {
      for (var field in valueNode.fields)
        field.name.value: _resolveValueNode(field.value, variables)
    };
  } else if (valueNode is IntValueNode)
    return valueNode.value;
  else if (valueNode is FloatValueNode)
    return valueNode.value;
  else if (valueNode is StringValueNode)
    return valueNode.value;
  else if (valueNode is BooleanValueNode)
    return valueNode.value;
  else if (valueNode is EnumValueNode)
    return valueNode.name.value;
  else
    return null;
}

String fieldNameWithArguments(
    FieldNode fieldNode, Map<String, Object> variables) {
  if (fieldNode.arguments.isEmpty) return fieldNode.name.value;
  final Map<String, Object> argumentsObject = {
    for (var argumentNode in fieldNode.arguments)
      argumentNode.name.value: _resolveValueNode(argumentNode.value, variables)
  };
  final hashedArgs = json.encode(argumentsObject);
  return '${fieldNode.name.value}($hashedArgs)';
}
