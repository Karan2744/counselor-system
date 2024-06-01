<?php
include('../connection.php');
if(!empty($_POST["sub_id"])) 
{
 $id=intval($_POST['sub_id']);
$query=mysqli_query($conn,"SELECT * FROM sub_category WHERE sub_courseid=$id");
?>
<option value="">Select Sub Category</option>
<?php
 while($row=mysqli_fetch_array($query))
 {
  ?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['sub_coursecat']); ?></option>
  <?php
 }
}
?>