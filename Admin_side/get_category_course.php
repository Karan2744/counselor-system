<?php
include('../connection.php');
if(!empty($_POST["cat_id"])) 
{
 $id=intval($_POST['cat_id']);
$query=mysqli_query($conn,"SELECT * FROM sub_course WHERE courseid=$id");
?>
<option value="">Select Category Of Course</option>
<?php
 while($row=mysqli_fetch_array($query))
 {
  ?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['sub_course']); ?></option>
  <?php
 }
}
?>