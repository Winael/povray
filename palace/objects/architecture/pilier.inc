//---- début du fichier pilier.inc ----//

    //-------------------------------------------
    //  author : Winael
    //  date : 2015-03-10
    //-------------------------------------------

    #ifndef (Inclus_Pilier)

        #declare Inclus_Pilier = 1;

        //  Construire un pilier

            #macro Faire_Pilier (cote, hauteur, textures)

                box {
    
                    //  Corner 1 :
    
                        <0, 0, 0>,
    
                    //  Corner 2 :
    
                        <cote, hauteur, cote>
    
                    // Texture :
    
                        texture {
         
                                textures
    
                        } // end of texture
    
                } // end of box

            #end // of Faire_Pilier

        //---------------------------------------

    #end

//---- fin du fichier pilier.inc ----//
