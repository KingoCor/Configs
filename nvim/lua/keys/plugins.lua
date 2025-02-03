require("keys/alias")

--[Файловый менеджер]--
nm("<C-F>",":Files<Cr>")

--[Molten]--
nm("<C-E>",":MoltenReevaluateCell<Cr>")
vm("<C-E>",":<BS><BS><BS><BS><BS>MoltenEvaluateVisual<Cr>")
