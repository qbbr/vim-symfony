vim-symfony
===========

autocomplete routes and service
-------------------------------

`<C-x><C-u>`

jump to view
------------

`<leader>v`

```php
<?php

namespace Acme\DemoBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     * @Template()
     */
    public function indexAction()
    {
        // CURSOR HERE and press <leader>v
        // will open: src/Acme/DemoBundle/Resources/views/Default/index.html.twig
        return array();
    }
}
```

snippets
--------

Annotation:

`@a` - @Assert\  
`@o` - @ORM\  
`@oc` - @ORM\Column()  
`@oc` - @ORM\Entity()  
`@og` - @ORM\GeneratedValue(strategy="AUTO")  
`@oi` - @ORM\Id  
`@olife` - @ORM\HasLifecycleCallbacks()  
`@ot` - @ORM\Table()  
`@r` - @Route()  
`@rn` - @Route("", name="")  
`@t` - @Template()

Use:

`usearray.snippet` - use Doctrine\Common\Collections\ArrayCollection;  
`useassert` - use Symfony\Component\Validator\Constraints as Assert;  
`usecontroller` - use Symfony\Bundle\FrameworkBundle\Controller\Controller;  
`usefile` - use Symfony\Component\HttpFoundation\File\UploadedFile;  
`useorm` - use Doctrine\ORM\Mapping as ORM;  
`userequest` - use Symfony\Component\HttpFoundation\Request;  
`useroute` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;  
`usetemplate` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

Other:

`abstracttype` - abstract type template  
`am` - action method  
`controller` - controller template  
`em` - entity manager  
`notfound` - create not found exception  
`redirect` - $this->redirect('');  
`repository` - $this->getDoctrine()->getRepository('')
