//---------------------------------------------//
//  PALACE.pov                                 //
//---------------------------------------------//

//-----------------------------------------------
//  author : Winael
//  date : 2015-03-10
//-----------------------------------------------

//  CAMERA  //

    //  Choix de la position de la caméra :

        #declare Camera_Number = 0;

    //  Définition des positions de la caméra :

        #switch ( Camera_Number )

            //  Vue de face :

                #case (0)

                    //  Position :

                        #declare Camera_Location = <0.00, 1.00, -3.00> ;

                    //  Direction :

                        #declare Camera_Look_At = <0.00, 1.00, 0.00> ;

                    //  Angle : 

                        #declare Camera_Angle = 75 ;

                #break

            //  Vue de diagonale :

                #case (1)

                    //  Position :

                        #declare Camera_Location = <2.00, 2.5, -3.00> ;

                    //  Direction :

                        #declare Camera_Look_At = <0.00, 1.00, 0.00> ;

                    //  Angle : 

                        #declare Camera_Angle = 90 ;

                #break

            //  Vue du côté droit :

                #case (2)

                    //  Position :

                        #declare Camera_Location = <3.00, 1.00, 0.00> ;

                    //  Direction :

                        #declare Camera_Look_At = <0.00, 1.00, 0.00> ;

                    //  Angle : 

                        #declare Camera_Angle = 90 ;

                #break

            //  Vue de haut :

                #case (3)

                    //  Position :

                        #declare Camera_Location = <0.00, 5.00, -0+0.000> ;

                    //  Direction :

                        #declare Camera_Look_At = <0.00, 0.00, 0+0.001> ;

                    //  Angle : 

                        #declare Camera_Angle = 90 ;

                #break

            //  Vue non définie (de face)

                #else

                    //  Position :

                        #declare Camera_Location = <0.00, 1.00, -3.50> ;

                    //  Direction :

                        #declare Camera_Look_At = <0.00, 1.00, 0.000> ;

                    //  Angle : 

                        #declare Camera_Angle = 90 ;

                #break

        #break

        #end // of "#switch ( Camera_Number )"

    //---------------------------------------

    camera { // ultra_wide_angle // orthographic

        //  Position

            location Camera_Location

        //  Right

            right x*image_width/image_height

        //  Angle

            angle Camera_Angle

        //  Direction

            look_at Camera_Look_At
    }
    
//-----------------------------------------------

//  INCLUDE

    #include "53_Sunset_sky1.inc"

//-----------------------------------------------
