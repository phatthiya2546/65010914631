<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ภัททิยา แนวโอโล(แยม)</title>
</head>

<body>
	<h1>ภัททิยา แนวโอโล (แยม)</h1>
    <?php
    $student1 = 75;
    $student2 = 60;
    $student3 = 82;
    $student4 = 59;
    $student5 = 64;
   
     
 $sum = $student1 + $student2 + $student3 + $student4 + $student5;
	  $avg =$sum/5;
 
   echo "นิสิตคนที่1 ได้คะแนน {$student1} <br>";
   echo "นิสิตคนที่2 ได้คะแนน {$student2} <br>";
   echo "นิสิตคนที่3 ได้คะแนน {$student3} <br>";
   echo "นิสิตคนที่4 ได้คะแนน {$student4} <br>";
   echo "นิสิตคนที่5 ได้คะแนน {$student5} <br>";
   echo "ผลรวมของคะแนนสอบของนิสิตทุกคน{$sum}<br>" ;
   echo "คะแนนเฉลี่ยของนิสิตทุกคน {$avg}";
   
   ?>
 
 
</body>
</html>
