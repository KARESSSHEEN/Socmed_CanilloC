<?php include 'views/header.php'; ?>
        <div class="input-form">
            <p class="title">SIGNUP</p>
            
            <form action="models/signup_account.php" method="POST">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="krssshn@online.com">
                <label for="firstname">First Name</label>
                <input type="text" id="firstname" name="firstname" placeholder="Karess Sheen">
                <label for="lastname">Last Name</label>
                <input type="text" id="lasttname" name="lastname" placeholder="Canillo">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="**********">
                <label for="conpass">Confirm Password</label>
                <input type="password" id="conpass" name="conpass" placeholder="**********">
                <input type="submit" value="signup">
            </form>
        </div>
   <?php include 'views/footer.php';