 <?php 

      // Add at the end of the trail
      $this->Breadcrumbs->add(
      'Home',
      ['controller' => 'Blogs', 'action' => 'home'] ,
      ['class' => 'breadcrumb-item active' ]
      );
 
?>   
    <div class="container">

    <div class="row">
        <div class="col-4">
            <h3 style="color: #fff;" class="bg-info text-capitalize p-1">Recent Post</h3>
            <ul class="list-group list-group-flush">
            <?php foreach ($articleList as $key => $articleTitle ): ?> 
              <li class="list-group-item"><a href =<?php $this->Url->build(['controller'=>'Blogs','action'=>'view',$key]); ?>><?= $articleTitle ?></a></li>
            <?php endforeach ;?>
            </ul>

        </div>
        <div class="col-8">
            <div class="row">
               <div class="list-group ">
               <?php foreach ($articles as $key => $article):  ?>
                  <a href=<?= $this->Url->build(['controller'=>'Blogs','action'=>'view',$article->id]) ?> class="list-group-item list-group-item-action flex-column mb-2">
                    <div class="d-flex w-100 justify-content-between">
                      <h5 class="mb-1"><?= $article->title ?></h5>
                      <small>3 days ago</small>
                    </div>
                    <?= // Called as TextHelper
                   $this->Text->truncate(
                   $article->details, 
                    280,
                    [
                        'ellipsis' => '...',
                        'exact' => false
                    ]
                );
                ?>
                    <p class="mb-1"><?= $article->details ?></p>  
                                    
                  </a>
                  
                  <?php endforeach; ?>

                  <ul class="pagination">
                  
                  <?= $this->Paginator->prev('<<');?>

                  <?= $this->Paginator->numbers();?>

                  <?= $this->Paginator->next('>>');?>

                  </ul>
                  
                </div>
            </div>
        </div>
    </div>

    </div>
    
    </div>

<?php /* in piu dopo in caso tra ul e div (primo) 
<a href="#" class="list-group-item list-group-item-action flex-column mb-2">
<div class="d-flex w-100 justify-content-between">
  <h5 class="mb-1">List group item heading</h5>
  <small class="text-muted">3 days ago</small>
</div>
<p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
<small class="text-muted">Donec id elit non mi porta.</small>
</a>
<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
<div class="d-flex w-100 justify-content-between">
  <h5 class="mb-1">List group item heading</h5>
  <small class="text-muted">3 days ago</small>
</div>
<p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
<small class="text-muted">Donec id elit non mi porta.</small>
</a>
*/?>