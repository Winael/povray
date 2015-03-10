//  PALACE //

//  VERSION :

    #version 3.7;

//  INCLUDES :

    #include "colors.inc"
    #include "textures.inc"

//  PARAMETRAGE GLOBAL

    global_settings { 

        assumed_gamma 1.0 

    }

//  CAMERA :

    //  POINT DE VUE 1 :
        //
        //      camera {
        // 
        //          //  Position :
        // 
        //              location <5, 1.75, -15>
        //     
        //          //  Direction :
        // 
        //              look_at <10, 2.5, 10>
        // 
        //          //  Ouverture :
        // 
        //              aperture 1.0
        // 
        //          //  Floue :
        // 
        //              blur_samples 100
        // 
        //          //  Focale :
        // 
        //              focal_point <10, 5, 0>
        // 
        //     }

    //  POINT DE VUE PIECE 1 :

        //  Centre vers pilier :

            camera {

                //  Position :

                    location <7.5, 1.75, 7.5>

                //  Direction :

                    look_at <0, 4, 0>
                    
            }

//  SOURCES DE LUMIERES :

    //  Source 1 :

        light_source {

            //  Position :

                <15, 10, -5>

            //  Couleur :

                rgb <1, 1, 1>
        }

    //  Source lumières bâtiment 1

        //  Pièce 1 :

            //  Plafonniers :

                //  Planfonnier 1 :

                    light_source {

                        //  Position :

                            <1, 3.85, 1>

                        //  Couleur :

                            rgb <1, 1, 1>
                    }

//  PAYSAGES :

    //  Ciel :

        sky_sphere {
	
	    //  Couleur :
    	
    	    pigment {

    	        // color LightBlue
    	    
    	        gradient y
    	        color_map {

    	            [0.00 color rgb <0.47, 0.86, 1> ]
    	            [0.20 color rgb <0.20, 0.59, 1> ]

    	        }
    	    }

    	//  Texture :


        }

    //  Sol :

        plane {

            //  Référence :

                y

            //  Epaisseur :

                0

            //  Couleur :

                pigment {

                    rgb <0, 1, 0> // Vert

                }
        }

//  BATIMENTS :

    //  Batiment 1 :

        // Pièce 1:

            //  Plancher :
    
                box {
    
                    //  Position coin 1 :
    
                        <0, 0, 0>,
    
                    //  Position coin 2 :
    
                        <15, 0.010, 15>
    
                    //  Couleur :

                        pigment {
    
                            rgb <.3, .2, .3>
    
                        }
                }

            //  Pilier :

                box {

                    //  Position coin 1 :
                
                        <0, 0, 0>,

                    //  Position coin 2 :

                        <0.5, 4, 0.5>

                    //  Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Mur 1 :

                difference {

                    box {
    
                        //  Position coin 1 :
    
                            <0, 0, 14.75>,
    
                        //  Position coin 2 :
    
                            <15.25, 4, 15.25>
    
                        //  Couleur :
    
                            pigment {
    
                                rgb <1, 1, 1>

                            }
                    }

                    box {

                        //  Corner 1 :

                            <4, 0, 14.75>,

                        //  Corner 2 :

                            <6, 2, 15.25>

                    }
                }

            //  Mur 2 :

                box {

                    //  Position coin 1 :

                        <14.75, 0, 0>,

                    //  Position coin 2 :

                        <15.25, 4, 15.25>

                    //  Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Face vitrée 1 :

                //  Vitre 1 :

                    box {
    
                        //  Position coin 1 :
    
                            <0.5, 0.01, 0>,
    
                        //  Position coin 2 :
    
                            <5, 4, 0.02>
    
                        //  Couleur :
    
                            // pigment {
                            //
                            //     rgb <0, 0, 1>
                            //
                            // }
    
                        //  Texture :
    
                            texture {
    
                                Green_Glass
    
                            }
    
                        //  Refraction
    
                            interior {
    
                                ior 1.5
                            }
                    }

                //  Vitre 2 :

                    box {
    
                        //  Position coin 1 :
    
                            <5, 0.01, 0>,
    
                        //  Position coin 2 :
    
                            <10, 4, 0.02>
    
                        //  Couleur :
    
                            // pigment {
                            //
                            //     rgb <0, 0, 1>
                            //
                            // }
    
                        //  Texture :
    
                            texture {
    
                                Green_Glass
    
                            }
    
                        //  Refraction
    
                            interior {
    
                                ior 1.5
                            }
                    }

                //  Vitre 3 :

                    box {
    
                        //  Position coin 1 :
    
                            <10, 0.01, 0>,
    
                        //  Position coin 2 :
    
                            <14.75, 4, 0.02>
    
                        //  Couleur :
    
                            // pigment {
                            //
                            //     rgb <0, 0, 1>
                            //
                            // }
    
                        //  Texture :
    
                            texture {
    
                                Green_Glass
    
                            }
    
                        //  Refraction
    
                            interior {
    
                                ior 1.5
                            }
                    }

                //  Joint 1 :

                    box {

                        //  Corner 1 :

                            <4.995, 0.010, -0.001>,

                        //  Corner 2 :
                        
                            <5.005, 4, 0.003>

                        //  Couleur :

                            pigment {

                                rgb <0, 0, 0>

                            }

                    }

                //  Joint 2 :

                    box {

                        //  Corner 1 :

                            <9.995, 0.010, -0.001>,

                        //  Corner 2 :
                        
                            <10.005, 4, 0.003>

                        //  Couleur :

                            pigment {

                                rgb <0, 0, 0>

                            }

                    }

            //  Face vitrée 2 :

                //  Vitre 1 :

                    box {
    
                        //  Position coin 1 :
    
                            <0, 0, 0.5>,
    
                        //  Position coin 2 :
    
                            <0.02, 4, 5>
    
                        //  Couleur :
    
                            // pigment {
                            //
                            //     rgb <0, 0, 1>
                            //
                            // }
    
                        //  Texture :
    
                            texture {
    
                                Green_Glass
                            }
    
                        //  Refraction
    
                            interior {
    
                                ior 1.5
                            }
                    }

                //  Vitre 2 :

                    box {
    
                        //  Position coin 1 :
    
                            <0, 0, 5>,
    
                        //  Position coin 2 :
    
                            <0.02, 4, 10>
    
                        //  Couleur :
    
                            // pigment {
                            //
                            //     rgb <0, 0, 1>
                            //
                            // }
    
                        //  Texture :
    
                            texture {
    
                                Green_Glass
                            }
    
                        //  Refraction
    
                            interior {
    
                                ior 1.5
                            }
                    }

                //  Vitre 3 :

                    box {
    
                        //  Position coin 1 :
    
                            <0, 0, 10>,
    
                        //  Position coin 2 :
    
                            <0.02, 4, 14.75>
    
                        //  Couleur :
    
                            // pigment {
                            //
                            //     rgb <0, 0, 1>
                            //
                            // }
    
                        //  Texture :
    
                            texture {
    
                                Green_Glass
                            }
    
                        //  Refraction
    
                            interior {
    
                                ior 1.5
                            }
                    }
                
                //  Joint 1 :

                    box {

                        //  Corner 1 :

                            <-0.001, 0.010, 4.995>,

                        //  Corner 2 :
                        
                            <0.003, 4, 5.005>

                        //  Couleur :

                            pigment {

                                rgb <0, 0, 0>

                            }

                    }

                //  Joint 2 :

                    box {

                        //  Corner 1 :

                            <-0.001, 0.010, 9.995>,

                        //  Corner 2 :
                        
                            <0.003, 4, 10.005>

                        //  Couleur :

                            pigment {

                                rgb <0, 0, 0>

                            }

                    }

            //  Plafond :

                box {

                    //  Corner 1 :

                        <0, 4, 0>,

                    //  Corner 2 :

                        <15, 5, 15>

                    //  Color :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Lumières :

                union {

                    cone {

                        //  Etrêmité 1

                            //  Position :

                                <0, 0, 0>,

                            //  Rayon : 

                                0.01

                        //  Extrêmité 2 :

                            //  Position :

                                <0, -0.005, 0>,

                            //  Rayon :

                                0.008

                        //  Couleur :
                        
                            pigment {

                                rgb <.5, .5, 0>

                            }      
                    }

                    sphere {

                        //  Centre :

                            <0, 0, 0>,

                        //  Rayon :

                            0.005

                        //  Couleur :

                            pigment {

                                rgb <1, 1, 1>

                            }
                    }

                    translate <1, 4, 1>
                }



