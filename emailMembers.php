<?php

	echo "<form method='post' action='submit_email.php' id='person_email_send'>
		<fieldset>
		    <h3><b>Basic Info</b></h3>
		    <label for='name'>Email Subject:</label>
		    <input type='text' id='name' name='user_name' required>

		    <label for='phone'>Email Message:</label>
		    <textarea rows='4' cols='50' name='user_message'></textarea>
	  	</fieldset>

	  	<fieldset>
		    <br><h3><b>Mailing List</b></h3>

		    <h3>Who Should Get This?</h3>
		    <input type='radio' id='all_members' value='all_members' name='user_members'><label for='all_members' class='light'>All Members</label><br>
		    <input type='radio' id='social_gas_members' value='social_gas_members' name='user_members'><label for='social_gas_members' class='light'>Only Social/Gas Pass Members</label><br>
		    <input type='radio' id='all_gas_members' value='all_gas_members' name='user_members'><label for='all_gas_members' class='light'>Only Gas Pass Members</label><br>
		    <input type='radio' id='all_social_members' value='all_social_members' name='user_members'><label for='all_social_members' class='light'>Only Social Members</label><br>
		    <input type='radio' id='all_non_members' value='all_non_members' name='user_members'><label for='all_non_members' class='light'>Only Non-Paid Members</label><br><br>

		    <h3>Age Groups</h3>
		    <input type='checkbox' id='all_ages' value='all_ages' name='user_age_all'><label for='all_ages' class='light'>All Ages</label><br>
		    <input type='checkbox' id='freshman' value='freshman' name='user_age_freshman'><label for='freshman' class='light'>Freshman</label><br>
		    <input type='checkbox' id='sophomore' value='sophomore' name='user_age_sophomore'><label for='sophomore' class='light'>Sophomores</label><br>
		    <input type='checkbox' id='junior' value='junior' name='user_age_junior'><label for='junior' class='light'>Juniors</label><br>
		    <input type='checkbox' id='senior' value='senior' name='user_age_senior'><label for='senior' class='light'>Seniors</label><br>

		 </fieldset>

		
		<br><br>
		<div class='row uniform'>
			<div class='12u'>
				<ul class='actions align-center'>
					<li><input type='submit' value='Send Email' /></li>
				</ul>
			</div>
		</div>
	</form>";
?>
