ROC_PR
======

Receiver Operating Characteristic (ROC) and Precision Recall (PR).
------------------------------------------------------------------                
  - docs
       
      This directory contains document about ROC and PR called ROC_PR.pdf and files needed to 
      generate this document. Assuming you had cloned this repository, please edit the ROC_PR.tex 
      and then execute 'make' in your terminal if you want to modify this document.
       
  - programs
  
      This directory contains several matlab programs corresponding to the docs/ROC_PR.pdf. You 
      just need to clone them to your local repositoty and add them to the matlab path. Run the
      input functions and you will get the results.

    - PR_ROC_intersect
            
      - my_test
              
        Verify the domination relationship which is introduced in ROC_PR.pdf(section 3.3.1). Its 
        main function(two_points.m) is written personally. By comparing with the result gets from 
        the following prec_rec directory, we verified its correctness.
              
      - prec_rec
            
        Also verify the domination relationship which is introduced in ROC_PR.pdf. But it uses
        the prec_rec.m function. 
                
            
    - PR_advantages
          
        This program is used to explain that PR curve is more sensitive to ROC curve.
            
            
    - prec_rec_img_seg
            
        It contains two inputs, one is created image which is formed by inputing a matrix and the
        other is natural image. This program aims to obtain ROC and PR curves of image processed 
        after segmentation.
          
    - prec_rec.m
      
        A matlab function to compute and plot ROC and PR curves written by Stefan Schroedl.  
