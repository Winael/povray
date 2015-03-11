//---- début du fichier murs.inc ----//

    //-------------------------------------------
    //  author : Winael
    //  date : 2015-03-10
    //-------------------------------------------

    #ifndef (Inclus_Murs)

        #declare Inclus_Murs = 1;

        //  Construire un mur

            #macro Faire_Mur (longueur, hauteur, epaisseur, textures, Angle)

                object {

                    box {

                        //  Corner 1

                            <0, 0, 0>,

                        //  Corner 2

                            <longueur, hauteur, epaisseur>

                        //  Texture

                            texture {

                                textures

                            }

                    } // end of box

                    //  Angle

                        rotate Angle

                } // end of object

            #end // end of macro Faire_Mur

        //---------------------------------------

    #end

//---- fin du fichier murs.inc ----//