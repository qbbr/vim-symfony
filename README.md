# vim-symfony

vim for symfony 2

## autocomplete routes and service

`<C-x><C-u>`

## jumps

`<leader>v`

 * jump to controller from routing.yml
 * jump to view (twig) from controller
 * jump to view (twig) from view (twig)

### expample:

```php
class DefaultController extends Controller
{
    public function indexAction()
    {
        // CURSOR HERE and press <leader>v
        // will open: src/Acme/DemoBundle/Resources/views/Default/index.html.twig
    }
}
```

## snippets

### Annotation:

 * `@a` - @Assert\
 * `@o` - @ORM\
 * `@oc` - @ORM\Column()
 * `@oc` - @ORM\Entity()
 * `@og` - @ORM\GeneratedValue(strategy="AUTO")
 * `@oi` - @ORM\Id
 * `@olife` - @ORM\HasLifecycleCallbacks()
 * `@ot` - @ORM\Table()
 * `@r` - @Route()
 * `@rn` - @Route("", name="")
 * `@t` - @Template()

### Use:

 * `usearray.snippet` - use Doctrine\Common\Collections\ArrayCollection;
 * `useassert` - use Symfony\Component\Validator\Constraints as Assert;
 * `usecontroller` - use Symfony\Bundle\FrameworkBundle\Controller\Controller;
 * `usefile` - use Symfony\Component\HttpFoundation\File\UploadedFile;
 * `useorm` - use Doctrine\ORM\Mapping as ORM;
 * `userequest` - use Symfony\Component\HttpFoundation\Request;
 * `useroute` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
 * `usetemplate` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

### Other:

 * `abstracttype` - abstract type template
 * `am` - action method
 * `controller` - controller template
 * `em` - entity manager
 * `notfound` - create not found exception
 * `redirect` - $this->redirect('');
 * `repository` - $this->getDoctrine()->getRepository('')
