//---- début du fichier rdc_piece1.inc ----//

    //-------------------------------------------
    //  author : Winael
    //  date : 2015-03-10
    //-------------------------------------------

    #ifndef (Inclus_Rdc_Piece1)

        #declare Inclus_Rdc_Piece1 = 1;

        //  Création du parquet

            object {

                Faire_Parquet(15)

            } // end of parquet

        //---------------------------------------

        //  Création du pilier

            object {

                Faire_Pilier(0.5, 4, White_Marble)

            } // end of pilier

        //---------------------------------------

        //  Création du mur x

            object {

                Faire_Mur(15, 4, epaisseur_mur_bat_1, White_Marble, 0)

                translate <0, 0, 15 - epaisseur_mur_bat_1/2>
            
            } // end of mur x

        //---------------------------------------

        //  Création du mur x

            object {

                Faire_Mur(15, 4, epaisseur_mur_bat_1, White_Marble, 90)

                translate <15 - epaisseur_mur_bat_1/2, 0, 15 - epaisseur_mur_bat_1/2>
            
            } // end of mur x

        //---------------------------------------


    #end

//---- fin du fichier rdc.inc ----//