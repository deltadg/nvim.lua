if vim.g.vscode then
	require("vscode-w3lt.core")
else
	require("w3lt.core")
	require("w3lt.lazy")

	vim.g.python3_host_prog = "/opt/anaconda3/bin/python"
end
