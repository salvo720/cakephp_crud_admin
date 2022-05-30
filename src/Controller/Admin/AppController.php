<?php
declare(strict_types=1);

namespace App\Controller\Admin;

use Cake\Controller\Controller;

use Cake\Event\EventInterface;

use Cake\Event\Event;
use Cake\Utility\Inflector;


class AppController extends Controller
{
    protected $user_logged=null;
    
    public function initialize(): void
    {
        parent::initialize();

        $this->loadComponent('RequestHandler');
        $this->loadComponent('Flash');

        // Add this line to check authentication result and lock your site
        // $this->loadComponent('Authentication.Authentication');
       
        $this->loadComponent('Auth',['authError' => __('Non puoi accedere a questa sezione')]);
        
        $this->loadComponent('UserLogs');
       
        // $this->Auth->allow(['login','index']);
        // $this->Auth->allow(['login','add']);
        $this->Auth->allow('login');

        $this->set('username',$this->Auth->user('username'));
        /*
         * Enable the following component for recommended CakePHP form protection settings.
         * see https://book.cakephp.org/4/en/controllers/components/form-protection.html
         */
        //$this->loadComponent('FormProtection');
    }
    
    public function beforeFilter(EventInterface $event){

        $this->loadModel('Users');

        $action = $this->request->getParam('action');
        $controller = $this->request->getParam('controller');
        // debug($action);
        // exit;

        if(!is_null($this->Auth->user('id'))){
            $id_user_logged = $this->Auth->user('id');
            $user_logged = $this->Users->get($id_user_logged);
            $this->user_logged = $user_logged;
            // $isMobile = $this->isMobile();
            $this->set(compact('user_logged', 'id_user_logged'));
            //  debug($this->user_logged);
            // exit;
        }
    }


    // public function beforeFilter1(\Cake\Event\EventInterface $event)
    // {
    // parent::beforeFilter($event);
    // // Configure the login action to not require authentication, preventing
    // // the infinite redirect loop issue
    // $this->Authentication->addUnauthenticatedActions(['login','add']);
    // // aggiugi o rimuovi add per accedere ad add  senza autenticazione
    // }

}
