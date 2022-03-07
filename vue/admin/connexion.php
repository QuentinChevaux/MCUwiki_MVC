<?php

    $title = 'Admin Connexion';

    include './vue/common/header_admin.php';

?>

<div class="admin_div">
        
        <form action="" method="POST" id="admin_login">
        
            <div class="w-50 mx-auto">
        
                <div class="form-floating mt-4">
                    
                    <input type="text" name="login" class="form-control"/>
                    <label for="login" class="form-label">Login :</label>
                        
                </div>
                    
                <div class="form-floating mt-4">
                    
                    <input type="password" name="password" class="form-control"/>
                    <label for="password" class="form-label">Password :</label>
                        
                </div>
        
                <div>
            
                    <button type="submit" name="valider" class="btn btn-dark w-100 mt-4 dashboard_form_validate_button">Se Connecter</button>
            
                </div>
                
            </div>
        
        </form>

    </div>

</body>
</html>