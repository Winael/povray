//---- début du fichier 53_Sunset_sky1.inc ----//

    //-------------------------------------------
    //  author : Winael
    //  date : 2015-03-10
    //-------------------------------------------

    #ifndef (Inclus_53_Sunset_sky1)

        #declare Inclus_53_Sunset_sky1 = 1;
        
        //  PARAMETRAGE  //

            //  Version POV-RAy :
            
                #version 3.7;
            
            //  Paramétrage Global :
            
                global_settings {
            
                    assumed_gamma 1.0
                }

            // 

            #default {

                finish {
                    
                    ambient 0.1
                    diffuse 0.9
                }
            } 
        
        //---------------------------------------
        
        //  INCLUDES  //

            //  Socle standard :

                #include "colors.inc"
                #include "textures.inc"
                #include "glass.inc"
                #include "metals.inc"
                #include "golds.inc"
                #include "stones.inc"
                #include "woods.inc"
                #include "shapes.inc"
                #include "shapes2.inc"
                #include "functions.inc"
                #include "math.inc"
                #include "transforms.inc"

        //---------------------------------------
         
        //  SOURCE DE LUMIERE  //

            //  Soleil :

                light_source {
        
                    //  Position
    
                        <3000, 3000, -3000>
    
                    //  Couleur :
    
                            color rgb <1, 1, 1>*0.9
                }

            //  Flash :

                light_source {

                    //  Position

                        Camera_Location

                    //  Couleur :

                        color rgb <0.9, 0.9, 1>*0.1 shadowless

                }

        //---------------------------------------
        
        //  PAYSAGES  //
        
            //  Ciel :
        
                #local SkyTransform = transform {

                    rotate <0, 0, 0>
                    translate <-3, 0, -1>
                }
        
                sky_sphere {
        
                    //  Couleur :
        
                        pigment {
        
                            gradient <0, 1, 0>
        
                            //  Dégradé
        
                                color_map {
        
                                    [ 0.00 color rgb <0.24, 0.32, 0.8>*0.3 ]
                                    [ 0.23 color rgb <0.16, 0.32, 0.7>*0.6 ]
                                    [ 0.37 color rgb <1, 0.3, 0> ]
                                    [ 0.52 color rgb <1, 0.6, 0> ]
                                    [ 0.65 color rgb <0.36, 0.32, 1.0>*0.7 ]
                                    [ 0.70 color rgb <0.14, 0.32, 1.0>*0.5 ]
                                    [ 1.00 color rgb <0.24, 0.32, 1.0>*0.3 ]
                                } // end color_map

                            scale 2
                            rotate <-15, 0, 0>
                            translate <0, 0.7, 0>
                        } // end of pigment
                } // end of sphere
        
            //-----------------------------------

            //  Nuages blancs :

                plane {

                    // Niveau de référence

                        <0, 1, 0>, 

                    //  Epaisseur :

                        1 

                    //  

                        hollow

                    //  Texture

                        texture {

                            //  Couleur 

                                pigment {


                                    //  Template

                                        bozo

                                    //  Turbulence

                                        turbulence 0.92

                                    //  Carte des couleurs

                                        color_map {

                                            [ 0.00 rgbt <1, 1, 1, 1> ] // <0.24, 0.32, 1.0>*0.7]
                                            [ 0.50 rgbt <1, 1, 1, 1> ] // <0.24, 0.32, 1.0>*0.7]
                                            [ 0.60 rgb <1, 1, 1> ]
                                            [ 0.85 rgb <0.25, 0.25, 0.25> ]
                                            [ 1.00 rgbt <0.5, 0.5, 0.5, 0.65> ]

                                        } // end of color_map

                                    //  Echelle

                                        scale 2

                                    //  Translation

                                        translate <0.5, 0, 0>

                                } // end of pigment

                            //  Finition 

                                finish {

                                    //  Ambiance

                                        ambient 1

                                    //  Diffusion 

                                        diffuse 0

                                } // end of finish

                            //  Rotation

                                rotate <0, 0, 0>

                            //  Transformation 

                                transform SkyTransform

                            //  Echelle

                                scale 10000

                        } // end of texture
                } // end of plane

            //-----------------------------------

            //  Nuages Oranges :

                plane {

                    // Niveau de référence

                        <0, 1, 0>, 

                    //  Epaisseur :

                        1 

                    //  

                        hollow

                    //  Texture

                        texture {

                            //  Couleur 

                                pigment {


                                    //  Template

                                        bozo

                                    //  Turbulence

                                        turbulence 0.92

                                    //  Carte des couleurs

                                        color_map {

                                            [ 0.00 rgbt <1, 1, 1, 1> ] // <0.24, 0.32, 1.0>*0.7]
                                            [ 0.45 rgbt <1, 1, 1, 1> ] // <0.24, 0.32, 1.0>*0.7]
                                            [ 0.75 rgbt <1, 0.1, 0, 0.5> ]
                                            [ 0.85 rgbt <0.75, 0.55, 0, 0.3> ]
                                            [ 1.00 rgbt <0.5, 0.35, 0.15, 0.75> ]

                                        } // end of color_map

                                    //  Echelle

                                        scale <1, 1, 1.5>*3.5

                                    //  Translation

                                        translate <0.5, 0, 1.5>

                                } // end of pigment

                            //  Finition 

                                finish {

                                    //  Ambiance

                                        ambient 1

                                    //  Diffusion 

                                        diffuse 0

                                } // end of finish

                            //  Rotation

                                rotate <0, 0, 0>

                            //  Transformation 

                                transform SkyTransform

                            //  Echelle

                                scale 9900

                        } // end of texture
                } // end of plane

            //-----------------------------------

            //  Brouillard au sol :

                fog {

                    //  Type de brouillard

                        fog_type 2

                    //  Distance 

                        distance 50

                    //  Couleur

                        color rgb <1, 0.55, 0.1>

                    //  Offset du brouillard

                        fog_offset 0.1

                    //  Altitude du brouillard

                        fog_alt 1.0

                    //  Turbulence

                        turbulence 1.8

                } // end of fog

            //-----------------------------------

            //  Sol :

                plane {

                    //  Niveau du sol

                        <0, 1, 0>,

                    //  Epaisseur

                        0

                    //  Texture

                        texture {

                            //  Couleur 

                                pigment {

                                    color rgb <0.35, 0.65, 0.0>*0.55

                                } // end of pigment

                            //  Normalisation

                                normal {

                                    //  

                                        bumps 0.75

                                    //  Echelle

                                        scale 0.015

                                } // end of normal

                            //  Finition 

                                finish {
                       
                                    phong 0.1

                                } // end of finish

                        } // end of texture
                } // end of plane

            //-----------------------------------





    #end

//---- fin du fichier 53_Sunset_sky1.inc ----//