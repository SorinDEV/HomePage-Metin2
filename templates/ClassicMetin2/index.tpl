<!doctype html>
<head lang="ro-RO">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="keywords" name="keywords" content="{$settings->website_key}">
    <meta name="description" content="{$settings->website_desc}">

    <link rel="icon" href="{$http}://{$settings->website_address}/templates/{$settings->template}/images/favicon.ico">

    <title>{$settings->website_name}</title>

    <!-- Bootstrap core CSS -->
    <link href="{$http}://{$settings->website_address}/templates/{$settings->template}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{$http}://{$settings->website_address}/templates/{$settings->template}/css/custom.css" rel="stylesheet">
  </head>

  <body>
  
{include file="header.tpl"}


    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

      

          <!-- Blog Post -->
          <div class="card mb-4">
<img src="{$http}://{$settings->website_address}/templates/{$settings->template}/images/metin2.jpg" class="img-fluid" alt="Responsive image">
            <div class="card-body">
              <h2 class="card-title">{$LANG.header_card_title}</h2>
              <p class="card-text">{$LANG.header_card_desc}</p>
            </div>
         
          </div>
		  
		  
<h2>{$LANG.home_last_news}</h2>
 <!-- Blog Post -->
          <div class="card mb-4">
            <div class="card-body">

  {foreach from=$noutati item=entry key=name} 

    <h2>{$entry.title}</h2>
	<hr>
    <p>{$entry.text}</p>
    <div>
		<div class="row">
			<div class="col"><button type="button" class="btn btn-primary" onclick="window.location.href='{$http}://{$settings->website_address}/index.php?news={$entry.id}'">{$LANG.home_view_subject}</button></div>
			<div class="col"><p class="text-right"> <span class="badge badge-success">{$LANG.home_postedon} {$entry.datetime|date_format:"%A, %B %e, %Y"} </span></p></div>
		</div>
    </div>     
    <hr>
{/foreach} 
		   </div>
         
          </div>
        </div>
  
{include file="right-sidebar.tpl"}
        

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

{include file="footer.tpl"}
  </body>
</html>
