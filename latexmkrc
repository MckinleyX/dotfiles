#Partially stolen from https://github.com/vEnhance/dotfiles/blob/main/latexmkrc
$out_dir="build";
sub asy {return system("asy -outname \$(dirname '$_[0]')/$out_dir '$_[0]'");}

add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","tex",0,"asy");


#add_cus_dep('pytxcode', 'tex', 0, 'pytxcode2tex');
#sub pytxcode2tex { return system("pythontex \"$_[0]\""); }
