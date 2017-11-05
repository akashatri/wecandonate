require "config.php";
require "connect.php";

if(isset($_POST['submitform']) && isset($_POST['txn_id']))
{
	$_POST['nameField'] = esc($_POST['nameField']);
	$_POST['websiteField'] =  esc($_POST['websiteField']);
	$_POST['messageField'] = esc($_POST['messageField']);

	$error = array();

	if(mb_strlen($_POST['nameField'],"utf-8")<2)
	{
		$error[] = 'Please fill in a valid name.';
	}

	if(mb_strlen($_POST['messageField'],"utf-8")<2)
	{
		$error[] = 'Please fill in a longer message.';
	}

	if(!validateURL($_POST['websiteField']))
	{
		$error[] = 'The URL you entered is invalid.';
	}

	$errorString = '';
	if(count($error))
	{
		$errorString = join('<br />',$error);
	}
	else
	{
		mysql_query("	INSERT INTO dc_comments (transaction_id, name, url, message)
						VALUES (
							'".esc($_POST['txn_id'])."',
							'".$_POST['nameField']."',
							'".$_POST['websiteField']."',
							'".$_POST['messageField']."'
						)");

		if(mysql_affected_rows($link)==1)
		{
			$messageString = '<a href="aboutdonateus.php">You were added to our donor section!</a>';
		}
	}
}