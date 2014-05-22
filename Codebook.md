## Data Dictionary - Samsung Data

### Variable Descriptions and Names

    
   **Variable Name**  *subject*
  
        Identification number for the volunteer carrying out the experiment.  30 volunteers carried out the
        experiment, each identified with a number 1-30.
      
    
   **Variable Name**  *activity*
  
        Description of the activity the subject was performing.  Each volunteer performed all six activities
        while wearing a Samsung Galaxy S II on their waist.  Activities are label as follows:
      
            *Walking
            *WalkingDownStairs
            *WalkingUpstairs
            *Sitting
            *Standing
            *Laying
            
  **Gyroscope and accelerometer 3-axial data (i.e. features)** 
        
        3-axial linear acceleration and 3-axial angular velocity data was collected from the smartphones
        accelerometer and gyroscope at a constant rate of 50Hz. The obtained dataset was randomly partitioned
        into two sets, where 70% of volunteers generated training data and 30% generated test data.
        
        The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and
        then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The
        sensor acceleration signal, which has gravitational and body motion components, was separated using a
        Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to
        have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From
        each window, a vector of features was obtained by calculating variables from the time and frequency
        domain.
        
        This generated a 561-feature vector with time and frequency domain variables. We have extracted
        **only** the mean and standard deviation columns of those variables.
        
        'Tidy' contains the average of each of the following features, grouped by subject and activity.
        
        This data was normalized between [-1, 1]
        
  **Variable Names**
  
  *tbodyaccmeanx*
  
  *tbodyaccmeany*                 
  
  *tbodyaccmeanz*                   
  
  *tbodyaccstdx*
  
  *tbodyaccstdy*
  
  *tbodyaccstdz*                   
  
  *tgravityaccmeanx*                 
  
  *tgravityaccmeany*                 
  
  *tgravityaccmeanz*                
  
  *tgravityaccstdx*               
  
  *tgravityaccstdy*            
  
  *tgravityaccstdz*                  
  
  *tbodyaccjerkmeanx*                
  
  *tbodyaccjerkmeany*               
  
  *tbodyaccjerkmeanz*                
  
  *tbodyaccjerkstdx*                
  
  *tbodyaccjerkstdy*                 
  
  *tbodyaccjerkstdz*                 
  
  *tbodygyromeanx*                   
  
  *tbodygyromeany*                   
  
  *tbodygyromeanz*                   
  
  *tbodygyrostdx*                    
  
  *tbodygyrostdy*                    
  
  *tbodygyrostdz*                    
  
  *tbodygyrojerkmeanx*               
  
  *tbodygyrojerkmeany*               
  
  *tbodygyrojerkmeanz*               
  
  *tbodygyrojerkstdx*                
  
  *tbodygyrojerkstdy*                
  
  *tbodygyrojerkstdz*                
  
  *tbodyaccmagmean*                  
  
  *tbodyaccmagstd*                   
  
  *tgravityaccmagmean*               
  
  *tgravityaccmagstd*                
  
  *tbodyaccjerkmagmean*              
  
  *tbodyaccjerkmagstd*               
  
  *tbodygyromagmean*                 
  
  *tbodygyromagstd*                  
  
  *tbodygyrojerkmagmean*             
  
  *tbodygyrojerkmagstd*              
  
  *fbodyaccmeanx*                    
  
  *fbodyaccmeany*                    
  
  *fbodyaccmeanz*                    
  
  *fbodyaccstdx*                     
  
  *fbodyaccstdy*                     
  
  *fbodyaccstdz*                     
  
  *fbodyaccmeanfreqx*                
  
  *fbodyaccmeanfreqy*                
  
  *fbodyaccmeanfreqz*                
  
  *fbodyaccjerkmeanx*                
  
  *fbodyaccjerkmeany*                
  
  *fbodyaccjerkmeanz*                
  
  *fbodyaccjerkstdx*                 
  
  *fbodyaccjerkstdy*                 
  
  *fbodyaccjerkstdz*                 
  
  *fbodyaccjerkmeanfreqx*            
  
  *fbodyaccjerkmeanfreqy*            
  
  *fbodyaccjerkmeanfreqz*            
  
  *fbodygyromeanx*                   
  
  *fbodygyromeany*                   
  
  *fbodygyromeanz*                   
  
  *fbodygyrostdx*                    
  
  *fbodygyrostdy*                    
  
  *fbodygyrostdz*                    
  
  *fbodygyromeanfreqx*               
  
  *fbodygyromeanfreqy*               
  
  *fbodygyromeanfreqz*               
  
  *fbodyaccmagmean*                  
  
  *fbodyaccmagstd*
  
  *fbodyaccmagmeanfreq*
  
  *fbodybodyaccjerkmagmean*  
  
  *fbodybodyaccjerkmagstd* 
  
  *fbodybodyaccjerkmagmeanfreq*
  
  *fbodybodygyromagmean* 
  
  *fbodybodygyromagstd*
  
  *fbodybodygyromagmeanfreq*
  
  *fbodybodygyrojerkmagmean* 
  
  *fbodybodygyrojerkmagstd* 
  
  *fbodybodygyrojerkmagmeanfreq*     
  
  *angletbodyaccmeangravity*         
  
  *angletbodyaccjerkmeangravitymean* 
  
  *angletbodygyromeangravitymean*    
  
  *angletbodygyrojerkmeangravitymean*
  
  *anglexgravitymean*                
  
  *angleygravitymean*                
  
  *anglezgravitymean*   
  
### Data Manipulations Performed

    Raw data was imported from UCI data file. Testing and training data sets were bound together by row
    (training data then testing data) with activity and subject identifications column bound to the data set.
    'Features' variable names were extracted to label columns. Column names were "cleaned" by performing the
    following steps:
            *characters converted to lower case
            *numeric activity labels replaced with descriptive (i.e. "Walking") labels
            *"-" removed
            *"()" removed
            *"(" & ")" removed
            *"_" removed
            *"," removed
    
    We then choose the mean and standard deviation columns(the mean and standard deviations of the specific
    elements) and put those in a new data set.  Finally, we calculated the averages for each feature, 
    conditioned by subject *and* activity.  This 'tidy' data set forms our final product.