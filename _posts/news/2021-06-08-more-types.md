---
layout: postlog
title: "Stephanie Chatagner, More  Types"
date: 2021-06-08
categories: blog
permalink: /:categories/:year/:month/:day/:title.html
---

Well. 
Another type of data is the exact numerical values with **integer**. Integer are tinyint, smallint, int, and bigint. It's better to use the smallest type.      
|Type     |Range                                                                     |Storage                               |     
|tinyint  |0 <--> 255                                                                |1 byte(octet), ex: human age          |
|smallint |-2^15 <--> 2^15-1 (-32 768, 32 767)                                       |2 bytes ex: # students in school      |
|int      |-2^31 <--> 2^31-1 (-2 147 483 648, 2 147 483 647)                         |4 bytes ex: # students in university  |
|bigint   |-2^63 <--> 2^63-1 (-9 223 372 036 854 775 808, 9 223 372 036 854 775 807) |8 bytes|
<style>
.tablelines table, .tablelines td, .tablelines th {
        border: 1px solid black;
        }
</style>

| P | Q | P * Q |
| - | - | - |
| T | T | T |
| T | F | F |
| F | T | F |
| F | F | F |
{: .tablelines}
With +, -, \*, / or %, integer are converted into **numeric** before the final conversion in float, real, decimal, or numeric. Integer 5 give numeric (1, 0), 250 give (3, 0) , so long.

**decimal** are lenght-fixed and precision-fixed. With the maximum precision-fixed, values are betwween -10^38+1 and 10^38-1. decimal[ (p[,s])] : *p (precison)*, total number in the decimal, right part and left part of the comma with p between 1 and 38, default 18. (informatica only 16). *s (scale)*, right part of the comma. p minus s give the maximum number at the left part. Numeric is functionally the same as decimal.   
**float** Approximate data types for use with floating point numeric data. The ISO synonym for real is float(24). float [ ( n ) ] : n is the number of bits used to store the mantissa of the float number in scientific notation and indicates the level of precision and the storage size. If n is specified, its value must be between 1 and 53.    

So, step by step and keep learning!
<style>
.tablelines table, .tablelines td, .tablelines th {
        border: 1px solid black;
        }
</style>

<table class="tablelines">
  <thead>
    <tr>
      <th>P</th>
      <th>Q</th>
      <th>P * Q</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T</td>
      <td>T</td>
      <td>T</td>
    </tr>
    <tr>
      <td>T</td>
      <td>F</td>
      <td>F</td>
    </tr>
    <tr>
      <td>F</td>
      <td>T</td>
      <td>F</td>
    </tr>
    <tr>
      <td>F</td>
      <td>F</td>
      <td>F</td>
    </tr>
  </tbody>
</table>

<table class="tablelines">
  <tbody>
    <tr>
      <td>a</td>
      <td>b</td>
      <td>c</td>
    </tr>
    <tr>
      <td>1</td>
      <td>2</td>
      <td>3</td>
    </tr>
  </tbody>
</table>

<table class="tablelines">
  <thead>
    <tr>
      <th>Default aligned</th>
      <th style="text-align: left">Left aligned</th>
      <th style="text-align: center">Center aligned</th>
      <th style="text-align: right">Right aligned</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>First body part</td>
      <td style="text-align: left">Second cell</td>
      <td style="text-align: center">Third cell</td>
      <td style="text-align: right">fourth cell</td>
    </tr>
    <tr>
      <td>Second line</td>
      <td style="text-align: left">foo</td>
      <td style="text-align: center"><strong>strong</strong></td>
      <td style="text-align: right">baz</td>
    </tr>
    <tr>
      <td>Third line</td>
      <td style="text-align: left">quux</td>
      <td style="text-align: center">baz</td>
      <td style="text-align: right">bar</td>
    </tr>
  </tbody>
  <tbody>
    <tr>
      <td>Second body</td>
      <td style="text-align: left"> </td>
      <td style="text-align: center"> </td>
      <td style="text-align: right"> </td>
    </tr>
    <tr>
      <td>2 line</td>
      <td style="text-align: left"> </td>
      <td style="text-align: center"> </td>
      <td style="text-align: right"> </td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td>Footer row</td>
      <td style="text-align: left"> </td>
      <td style="text-align: center"> </td>
      <td style="text-align: right"> </td>
    </tr>
  </tfoot>
</table>

<table class="tablelines">
  <tbody>
    <tr>
      <td>A simple</td>
      <td>table</td>
    </tr>
    <tr>
      <td>with multiple</td>
      <td>lines</td>
    </tr>
  </tbody>
</table>
