var dir = isOpen ? 1 : -1

var newImageIndex = image_index + dir
if(newImageIndex < image_number && newImageIndex >= 0 ){
	image_index = newImageIndex
}
