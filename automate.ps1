Import-Module .\CWManage.psm1

###########################################
##################Edit#####################
###########################################

$myServer = "au.myconnectwise.net"
$myCompany = "CloudConnect"
$mypubkey = ""
$myprivatekey = ""
$myclientId = ""

$startTicketID = 100 #Start Processing from this ticket ID 
###########################################
###########################################
###########################################




function Start-CWMConnection
{
	# This is the URL to your manage server.
	$Server = $myServer

	# This is the company entered at login
	$Company = $myCompany

	#Public and private key created in connectwise manage
	$pubkey = $mypubkey
	$privatekey = $myprivatekey

	#ClientID created from https://developer.connectwise.com/ClientID
	$clientId = $myclientId


	# Connect to Manage server
	$Connection = @{
				Server = $Server
				Company = $Company 
				pubkey = $pubkey
				privatekey = $privatekey
				clientId = $clientId
			}
	Connect-CWM @Connection
	Write-Output "Authenticated Successfully"
} 


function Clean-UselessTickets
{
	Write-Output "Clearing Useless Tickets"
	
	#get recent 1000 tickets
	$tickets=Get-CWMTicket -condition "id>$startTicketID" -pageSize 1000
	
	########################################################################
	#clear tickets "Ticket #*/has been submitted to Cloud Connect Helpdesk"
	########################################################################
	
	#select relevant tickets
	$target =$tickets |Where-Object {$_.summary -like "Ticket #*/has been submitted to Cloud Connect Helpdesk"}
	
	Write-Output $target.count

	#create completed status object
	$completed = @{id=""; name="Completed"; _info=""}

	#for relevant ticket update status to completed
	foreach($ticket in $target){
		Update-CWMTicket -TicketID $ticket.id -Operation "replace" -Path "status" -Value $completed
	}

	##########################################################################
	
} 


function Begin-Automation
{
	
	#start connectwise manage session
	Start-CWMConnection
	
	#clean up monitoring board of useless tickets
	Clean-UselessTickets
	
	#end connectwise manage session
	Disconnect-CWM
	Write-Output "Session Closed"
	
} 
