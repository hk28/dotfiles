alias vz='NVIM_APPNAME=nvim-lazyvim nvim'   # LazyVim
alias vc='NVIM_APPNAME=nvim-nvchad nvim'    # NvChad
alias vk='NVIM_APPNAME=nvim-kickstart nvim' # Kickstart
alias va='NVIM_APPNAME=nvim-astrovim nvim'  # AstroVim
alias vhk='NVIM_APPNAME=nvim-hk nvim'
alias vrt='NVIM_APPNAME=nvim-rt nvim'
alias vcy='NVIM_APPNAME=nvim-cybervim nvim'

vv() {
	select config in lazyvim kickstart nvchad astrovim lunarvim; do
		NVIM_APPNAME=nvim-$config nvim
		break
	done
}
alias vl='NVIM_APPNAME=nvim-lunarvim nvim' # LunarVim
