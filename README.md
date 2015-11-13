# Symfony 2 Vim plugin

## Autocomplete routes and services

`<C-x><C-u>`

## Symfony shell

`<C-f>`

## Jumps

`<leader>v`

 * jump to controller from routing.yml
 * jump to view (twig) from controller
 * jump to view (twig) from view (twig)

### Expamples:

```yaml
_welcome:
    pattern:  /
    defaults: { _controller: AcmeDemoBundle:Welcome:index } # cursor at this line
    # will open: src/Acme/DemoBundle/Controller/WelcomeController.php

```

```php
class DefaultController extends Controller
{
    public function indexAction()
    {
        // cursor here and press <leader>v
        // will open: src/Acme/DemoBundle/Resources/views/Default/index.html.twig
    }
}
```

```jinja
{% extends "AcmeDemoBundle::layout.html.twig" %}
{# will open: src/Acme/DemoBundle/Resources/views/layout.html.twig #}
```

## Snippets

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

 * `usearray` - use Doctrine\Common\Collections\ArrayCollection;
 * `useassert` - use Symfony\Component\Validator\Constraints as Assert;
 * `usecontroller` - use Symfony\Bundle\FrameworkBundle\Controller\Controller;
 * `usefile` - use Symfony\Component\HttpFoundation\File\UploadedFile;
 * `useorm` - use Doctrine\ORM\Mapping as ORM;
 * `userequest` - use Symfony\Component\HttpFoundation\Request;
 * `useroute` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
 * `usetemplate` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

### Other:

 * `dump`, `d` - dump() function
 * `formtype` - form type template
 * `am` - action method
 * `controller` - controller template
 * `em` - get entity manager
 * `notfound` - create not found exception
 * `redirect` - $this->redirectToRoute('');
 * `repository` - $this->getDoctrine()->getRepository('')
