<?php 
session_start();
include_once("../../config/db.php");

// Fetch companies along with their profiles using LEFT JOIN
$sql = mysqli_query($conn, "
    SELECT c.*, cp.profile_photo 
    FROM companies c
    LEFT JOIN company_profiles cp ON c.id = cp.company_id
    WHERE c.approval = 'Approved'
");

$companies = mysqli_fetch_all($sql, MYSQLI_ASSOC);

$output = "";

if (count($companies) == 0) {
    $output .= "No users are available to chat";
} else {
    foreach ($companies as $company) {
        // Use default photo if profile_photo is empty or null
        $photo = !empty($company['profile_photo']) ? $company['profile_photo'] : 'images/default-profile.png';

        $output .= '
            <div class="conversation-card" data-id="' . $company['id'] . '" data-name="' . htmlspecialchars($company['name']) . '"
                 data-type="Company" data-user-type="company" onclick="openChatWindow(this)">
                <div class="profile-picture" style="background-image: url(\'../' . $photo . '\');"></div>
                <div class="message-content">
                    <div class="username">' . htmlspecialchars($company['name']) . '</div>
                    <div class="message"></div>
                </div>
            </div>
        ';
    }
}

echo $output;
?>
