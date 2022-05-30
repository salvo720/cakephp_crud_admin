<?php 

/**
 * @var \App\View\AppView $this
 */
?>
<div class="users form content">
    <?= $this->Form->create() ?>
    <fieldset>
        <legend><?= __('Please enter your username and password') ?></legend>
        <?= $this->Form->control('username') ?>
        <?= $this->Form->control('password') ?>
    </fieldset>
    <?= $this->Form->button(__('Login')); ?>
    <?= $this->Form->end() ?>
</div>


?>


<!-- in /templates/Users/login.php -->
<!-- <div class="users form">
<?php   /* = $this->Flash->render() */ ?>
    <h3>Login</h3>
    <?php   /* = $this->Form->create() */ ?>
    <fieldset>
        <?php  /* = $this->Form->control('email', ['required' => true]) */ ?>
        <?php  /* = $this->Form->control('password', ['required' => true]) */ ?>
    </fieldset>
    <?php /* = $this->Form->submit(__('Login')); */ ?>
    <?php  /* = $this->Form->end() */ ?>
</div> -->