# Hu-s-Invariant-Moments

The functions compute the 7 invariant Hu's moments for an image and finally returns an array that contains the 7 moments . Users have the added option of computing the Hu's moments for a specific region of the image. To avail this feature, the user is requested to do the necessary preprocessing to create the mask that selects the interested region out of the whole image.
Example use of the functions:
eta_mat = SI_moment(input_image,mask);
hu_arr = Hu_Moments(eta_mat);
