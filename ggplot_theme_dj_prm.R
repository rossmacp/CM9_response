#' Don Jackson, BMS Cambridge
#' Custom ggplot theme with bolded text for easier legibility
#' 
#' Use just like a built-in theme:
#'   myplot <- ggplot(...) + theme_dj(15)  
#'   
#' @param base_font (default 12): specifies the minimum font used in the plot
#' @param base_family: specifies the font family
#' @param base_theme (default theme_bw): base on a different ggplot theme 

theme_dj <- function(base_size = 12, base_family = "",
					 base_theme = theme_bw()) {
	
	if(!(any(class(base_theme) == "theme") & 
		 any(class(base_theme) == "gg"))) {
		stop("base_theme argument must be a ggplot theme")
	}
	
	# defer to font size in base_theme IFF base_size is at default
	if( base_size == 12 & base_theme$text$size != base_size){
		base_size <- base_theme$text$size
	}
	
	
	# update theme elements
	base_theme +
		theme( text = element_text(size = base_size),
			   axis.text = element_text(size=rel(1)),
			   axis.title = element_text(face="bold", size=rel(1),  vjust = 0.1, hjust=0.5),
			   plot.title = element_text(lineheight=1, face="bold", size = rel(1.25), hjust = 0.5),
			   legend.text = element_text(size=rel(1)),
			   legend.title = element_text(size=rel(1), face="bold"),
			   strip.text = element_text(face="bold", size=rel(1.0)),
			   legend.key = element_rect(colour = NA)
		)
	
}
