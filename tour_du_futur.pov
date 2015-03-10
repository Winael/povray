//  TOUR DU FUTUR //

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

    camera {

        //  Position :

            location <0, 0.2, -13>
    
        //  Direction :

            look_at <0, 6, 0>

        //  Ouverture :

            // aperture 1.0

        //  Floue :

            // blur_samples 100

        //  Focale :

            // focal_point <10, 5, 0>

    }

//  SOURCES DE LUMIERES :

    //  Source 1 :

        light_source {

            //  Position :

                <30, 30, -30>

            //  Couleur :

                rgb <1, 1, 1>
        }

//  PAYSAGE :

    //  Sol :

        plane {

            //  Référence :

                y

            //  Epaisseur :

                0

            //  Couleur : 

                pigment {

                    rgb <0.5, 0.5, 1>

                }

        }

// BATIMENTS :

    //  Tour :

        //  Base :

            //  Cone 1 :

                cone {

                    //  Extrêmité 1 :

                        //  Position :

                            <0, 0, 0>,

                        //  Rayon Extrêmité 1 :

                            3
                
                    //  Extrêmité 2 :

                        //  Position :

                            <0, 1, 0>,

                        //  Rayon Extrêmité 2 :

                            2

                    // Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Cone 2 :

                cone {

                    //  Extrêmité 1 :

                        //  Position :

                            <0, 1, 0>,

                        //  Rayon Extrêmité 1 :

                            2
                
                    //  Extrêmité 2 :

                        //  Position :

                            <0, 3, 0>,

                        //  Rayon Extrêmité 2 :

                            1

                    // Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

        //  Entrée :

            //  Mur 1 :

                box {

                    //  Corner 1 :

                        <0.5, 0, 0>,

                    //  Corner 2 :

                        <0.45, 0.75, -4>

                    //  Color :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Mur 2 :

                box {

                    //  Corner 1 :

                        <-0.5, 0, 0>,

                    //  Corner 2 :

                        <-0.45, 0.75, -4>

                    //  Color : 

                        pigment {

                            rgb <1, 1, 1>

                        } 
                }

            //  Mur 3 :

                box {

                    //  Corner 1 :

                        <0.5, 0.7, 0>,

                    //  Corner 2 :

                        <-0.5, 0.75, -4>

                    //  Color : 

                        pigment {

                            rgb <1, 1, 1>

                        } 
                }

        //  Tronc :

            cylinder {

                //  Extrêmité 1 :

                    <0, 3, 0>,

                //  Extrêmité 2 :

                    <0, 8, 0>

                //  Rayon :

                    1

                //  Couleur :

                    pigment {

                        rgb <1, 1, 1>

                    }
            }

        //  Passerelle :

            cylinder {

                //  Extrêmité 1 :

                    <0, 6.5, 0>,

                //  Extrêmité 2 :

                    <4, 6.5, 0>

                //  Rayon :

                    0.5

                //  Couleur :

                    pigment {

                        rgb <1, 1, 1>

                    }                   
            }

        //  Tour d'observation :

            //  Tronc :

                cylinder {

                    // Position :

                        //  Extrêmité 1 :

                            <3.75, 5, 0>,

                        //  Extrêmité 2 :

                            <3.75, 8, 0>

                    //  Rayon :
   
                        0.75

                    //  Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }

                }

            //  Sphère bas :

                sphere {

                    //  Centre :

                        <3.75, 5, 0>

                    //  Rayon :

                        0.75

                    //  Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Sphère haut :

                sphere {

                    //  Centre :

                        <3.75, 8, 0>

                    //  Rayon :

                        0.75

                    //  Couleur :

                        pigment {

                            rgb <1, 1, 1>

                        }
                } 

        //  Ascenseur :

            box {

                //  Corner 1 :

                    <0, 0, -0.15>,

                //  Corner 2 :

                    <1.3, 9, 0.15>

                //  Color :

                    pigment {

                        rgb <0, 0, 1>

                    }
            }

        //  Tête de tour

            //  Base :

                cone {

                    //  Extrêmité 1 :

                        //  Position :

                            <0, 8, 0>,

                        //  Rayon : 

                            1

                    //  Extrêmité 2 :

                        //  Position :

                            <0, 9, 0>,

                        //  Rayon : 

                            2

                    //  Color :

                        pigment {

                            rgb <1, 1, 1>

                        }
                }

            //  Corps :

                cylinder {

                    //  Position :

                        //  Extrêmité 1 :

                            <0, 9, 0>,

                        //  Extrêmité 2 :

                            <0, 11, 0>

                        //  Rayon :

                            2
                        
                        //  Couleur :

                            pigment {

                                rgb <1, 1, 1>
                                
                            }
                }








//