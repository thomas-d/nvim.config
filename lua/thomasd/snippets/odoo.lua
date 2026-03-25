local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets('xml', {
  s('view', {
    t '<odoo>\n<data>\n<record id="',
    i(1, 'id'),
    t '" model="ir.ui.view"',
    i(2, ''),
    t '</record>\n</data>\n</odoo>',
  }),
})
