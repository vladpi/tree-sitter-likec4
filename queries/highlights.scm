; Comments and literals.
(comment) @comment
(string) @string
(number) @number
(float) @number
(percentage) @number
(boolean) @boolean @constant.builtin

[
  (hex_color)
  (rgb_color)
  (rgba_color)
] @string.special @enum

(lib_icon) @string.special

[
  (uri_with_schema)
  (uri_relative)
  (uri_alias)
] @link_uri

(link_property (string) @link_text)
(views_block (string) @title)
(view_group (string) @title)
(variant_property (string) @string.special)

; Structural keywords.
[
  "specification"
  "model"
  "views"
  "deployment"
  "global"
  "likec4lib"
  "import"
  "from"
  "extend"
  "view"
  "dynamic"
  "of"
  "extends"
  "include"
  "exclude"
  "where"
  "with"
  "group"
  "rank"
  "style"
  "styleGroup"
  "predicateGroup"
  "dynamicPredicateGroup"
  "parallel"
  "par"
  "instanceOf"
  "autoLayout"
  "predicate"
  "icons"
  "metadata"
  "not"
  "and"
  "or"
] @keyword

(element_kind_declaration "element" @keyword)
(tag_declaration "tag" @keyword)
(relationship_kind_declaration "relationship" @keyword)
(color_declaration "color" @keyword)
(deployment_node_kind_declaration "deploymentNode" @keyword)

; Property-like statements and keys.
(string_property key: (string_property_key) @keyword @property)
(style_property key: (style_property_key) @keyword @property)
(link_property "link" @keyword @property)
(icon_property "icon" @keyword @property)
(navigate_to "navigateTo" @keyword @property)
(variant_property "variant" @keyword @property)
(metadata_entry key: (identifier) @property)

[
  "element.kind"
  "element.tag"
  "kind"
  "tag"
  "source.kind"
  "source.tag"
  "target.kind"
  "target.tag"
] @property

[
  "element.kind"
  "element.tag"
  "kind"
  "tag"
  "source.kind"
  "source.tag"
  "target.kind"
  "target.tag"
] @keyword

; Declarations.
(element_kind_declaration name: (identifier) @type @enum)
(relationship_kind_declaration name: (identifier) @type @function)
(deployment_node_kind_declaration name: (identifier) @type @enum)
(color_declaration name: (identifier) @type @enum)
(tag_declaration name: (identifier) @attribute @tag)


(element_declaration kind: (identifier) @type @keyword)
(element_declaration name: (identifier) @variable @label)

(deployment_node kind: (identifier) @type @keyword)
(deployment_node name: (identifier) @variable @label)

(instance_of name: (identifier) @variable @label)
(view_declaration name: (identifier) @label @primary)
(dynamic_view_declaration name: (identifier) @label @primary)
(predicate_group name: (identifier) @variable @primary)
(dynamic_predicate_group name: (identifier) @variable @primary)
(global_style name: (identifier) @variable @primary)
(global_style_group name: (identifier) @variable @primary)

; References.
(view_declaration extends: (identifier) @label @variable)
(dynamic_view_declaration extends: (identifier) @label @variable)
(global_ref (identifier) @variable)
(navigate_to (identifier) @label @variable)
(import_statement (identifier) @variable)

(fqn_ref root: (identifier) @variable)
(fqn_member name: (identifier) @property @label)
(descendant_ref selector: (descendant_selector) @variable.special)
(tag_ref (identifier) @attribute @tag)

(element_filter (identifier) @type)
(where_condition (identifier) @type)

[
  "this"
  "it"
] @variable.special

; Relationship kinds and arrows.
(arrow_typed) @operator
(arrow_typed kind: (identifier) @type @function)
(dot_relation) @operator
(dot_relation kind: (identifier) @type @function)

; Enum-like contextual values.
[
  "TopBottom"
  "LeftRight"
  "BottomTop"
  "RightLeft"
  "same"
  "min"
  "max"
  "source"
  "sink"
  "none"
  "true"
  "false"
] @constant.builtin

(style_property
  key: (style_property_key) @_variant_key
  value: (property_value (identifier) @variant)
  (#match? @_variant_key "^(shape|variant)$"))

(style_property
  key: (style_property_key) @_enum_key
  value: (property_value (identifier) @enum)
  (#match? @_enum_key "^(color|iconColor|size|iconSize|iconPosition|border|line|head|tail)$"))

(style_property
  key: (style_property_key) @_icon_key
  value: (property_value (lib_icon) @string.special)
  (#eq? @_icon_key "icon"))

(style_property
  key: (style_property_key) @_icon_uri_key
  value: (property_value [
    (uri_with_schema)
    (uri_relative)
    (uri_alias)
  ] @link_uri)
  (#eq? @_icon_uri_key "icon"))

; Operators and punctuation.
[
  (arrow_directed)
  (arrow_backward)
  (arrow_bidirectional)
  "="
  "=="
  "!="
  "!=="
  "->"
  "<-"
  "<->"
] @operator

(wildcard) @variable.special

[
  "{"
  "}"
  "("
  ")"
  "["
  "]"
] @punctuation.bracket

[
  ","
  ":"
  ";"
  "."
] @punctuation.delimiter

"#" @punctuation.special
