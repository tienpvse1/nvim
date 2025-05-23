local LspKind = {}

LspKind.Completion = {
	Text = { text = "Text", icon = "" },
	Method = { text = "Method", icon = "󰆧" },
	Function = { text = "Function", icon = "󰊕" },
	Constructor = { text = "Constructor", icon = "" },
	Field = { text = "Field", icon = "󰜢" },
	Variable = { text = "Variable", icon = "" },
	Class = { text = "Class", icon = "󰀫" },
	Interface = { text = "Interface", icon = "" },
	Module = { text = "Module", icon = "" },
	Property = { text = "Property", icon = "󰜢" },
	Unit = { text = "Unit", icon = "󰑭" },
	Value = { text = "Value", icon = "󰎠" },
	Enum = { text = "Enum", icon = "" },
	Keyword = { text = "Keyword", icon = "󰌋" },
	Snippet = { text = "Snippet", icon = "" },
	Color = { text = "Color", icon = "󰏘" },
	File = { text = "File", icon = "󰈙" },
	Reference = { text = "Reference", icon = "󰈇" },
	Folder = { text = "Folder", icon = "󰉋" },
	EnumMember = { text = "EnumMember", icon = "" },
	Constant = { text = "Constant", icon = "󰏿" },
	Struct = { text = "Struct", icon = "󰙅" },
	Event = { text = "Event", icon = "" },
	Operator = { text = "Operator", icon = "󰆕" },
	TypeParameter = { text = "TypeParameter", icon = "" },
}

return LspKind
