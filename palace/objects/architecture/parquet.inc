//---- début du fichier parquet.inc ----//

    //-------------------------------------------
    //  author : Winael
    //  date : 2015-03-10
    //-------------------------------------------

    #ifndef (Inclus_Parquet)

        #declare Inclus_Parquet = 1;

        //  Construire un parquet

            #macro Faire_Parquet (cote)

                box {
    
                    //  Corner 1

                        <0, 0, 0>,

                    //  Corner 2

                        <cote, 0.01, cote>

                    // texture

                        texture {
                       
                            pigment {
            
                                image_map {

                                    jpeg "objects/architecture/bamboo.jpg"

                                } 
                            }

                        
                            normal {
            
                                bump_map {

                                    jpeg "objects/architecture/bamboo.jpg"

                                } 
                            
                                bump_size 0.1
                            }

                            finish {
            
                                reflection {

                                    0,0.7 
                                    fresnel on

                                }
            
                                ambient 0 
                                diffuse 1
        
                            }

                            rotate x*90

                            scale <1/2,1,1>*40
                        
                        }
    
                        interior {
        
                            ior 2

                        }

                }

            #end // of Faire_parquet

        //---------------------------------------

    #end

//---- fin du fichier parquet.inc ----//