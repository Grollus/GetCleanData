## Data Dictionary - Samsung Data

### Data Manipulations Performed

    Raw data was imported.  Test and training data sets were bound together by row with activity and subject 
    labels column bound to the data set. Using the feature text file, column names were added.  These column 
    names were "cleaned" by performing the following steps:
            *characters converted to lower case
            *numeric activity labels replaced with descriptive (i.e. "Walking") labels
            *"-" removed
            *"()" removed
            *"(" & ")" removed
            *"_" removed
            *"," removed


### Variable Descriptions
  **subject**   
  
        Identification number for study participant
        1-30
    
  **activity**
  
        Description of the activity the subject was performing
      
            *Walking
            *WalkingDownStairs
            *WalkingUpstairs
            *Sitting
            *Standing
            *Laying
  **Gyroscope and accelerometer 3-axial data** 
        
        Normalized between -1, 1
        Tidy contains the average of each of the following variables, grouped by 
        subject and activity.
        
            *tbodyaccmeanx
            *tbodyaccmeany                 
            *tbodyaccmeanz                   
            *tbodyaccstdx
            *tbodyaccstdy
            *tbodyaccstdz                   
            *tgravityaccmeanx                 
            *tgravityaccmeany                 
            *tgravityaccmeanz                
            *tgravityaccstdx               
            *tgravityaccstdy            
            *tgravityaccstdz                  
            *tbodyaccjerkmeanx                
            *tbodyaccjerkmeany               
            *tbodyaccjerkmeanz                
            *tbodyaccjerkstdx                
            *tbodyaccjerkstdy                 
            *tbodyaccjerkstdz                 
            *tbodygyromeanx"                   
            *tbodygyromeany                   
            *tbodygyromeanz                   
            *tbodygyrostdx                    
            *tbodygyrostdy                    
            *tbodygyrostdz                    
            *tbodygyrojerkmeanx               
            *tbodygyrojerkmeany               
            *tbodygyrojerkmeanz               
            *tbodygyrojerkstdx                
            *tbodygyrojerkstdy                
            *tbodygyrojerkstdz                
            *tbodyaccmagmean                  
            *tbodyaccmagstd                   
            *tgravityaccmagmean               
            *tgravityaccmagstd                
            *tbodyaccjerkmagmean              
            *tbodyaccjerkmagstd               
            *tbodygyromagmean                 
            *tbodygyromagstd                  
            *tbodygyrojerkmagmean             
            *tbodygyrojerkmagstd              
            *fbodyaccmeanx                    
            *fbodyaccmeany                    
            *fbodyaccmeanz                    
            *fbodyaccstdx                     
            *fbodyaccstdy                     
            *fbodyaccstdz                     
            *fbodyaccmeanfreqx                
            *fbodyaccmeanfreqy                
            *fbodyaccmeanfreqz                
            *fbodyaccjerkmeanx                
            *fbodyaccjerkmeany                
            *fbodyaccjerkmeanz                
            *fbodyaccjerkstdx                 
            *fbodyaccjerkstdy                 
            *fbodyaccjerkstdz                 
            *fbodyaccjerkmeanfreqx            
            *fbodyaccjerkmeanfreqy            
            *fbodyaccjerkmeanfreqz            
            *fbodygyromeanx                   
            *fbodygyromeany                   
            *fbodygyromeanz                   
            *fbodygyrostdx                    
            *fbodygyrostdy                    
            *fbodygyrostdz                    
            *fbodygyromeanfreqx               
            *fbodygyromeanfreqy               
            *fbodygyromeanfreqz               
            *fbodyaccmagmean                  
            *fbodyaccmagstd                   
            *fbodyaccmagmeanfreq              
            *fbodybodyaccjerkmagmean          
            *fbodybodyaccjerkmagstd           
            *fbodybodyaccjerkmagmeanfreq      
            *fbodybodygyromagmean             
            *fbodybodygyromagstd              
            *fbodybodygyromagmeanfreq         
            *fbodybodygyrojerkmagmean         
            *fbodybodygyrojerkmagstd          
            *fbodybodygyrojerkmagmeanfreq     
            *angletbodyaccmeangravity         
            *angletbodyaccjerkmeangravitymean 
            *angletbodygyromeangravitymean    
            *angletbodygyrojerkmeangravitymean
            *anglexgravitymean                
            *angleygravitymean                
            *anglezgravitymean                
