# Symfony Vim plugin

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

for SF2/3 see [sf-2-3](https://github.com/qbbr/vim-symfony/tree/sf-2-3) branch

## Autocomplete routes and services

`<C-x><C-u>`

## Jumps

`<leader>v`

 * jump to controller from routes.yaml
 * jump to view (twig) from controller
 * jump to view (twig) from view (twig)

### Examples

```yaml
index:
    path: /
    controller: App\Controller\DefaultController::index
    # will be open: src/Controller/DefaultController.php and goto action line
```

```php
class DefaultController extends Controller
{
    public function index()
    {
        // will be open: templates/default/index.html.twig
        return $this->render('default/index.html.twig', [ // cursor here and press <leader>v
            'controller_name' => 'IndexController',
        ]);
    }
}
```

```twig
{% extends 'base.html.twig' %}
{# will be open: templates/base.html.twig #}
```

## Snippets

### Annotations

 * `@a` - @Assert\
 * `@o` - @ORM\
 * `@oc` - @ORM\Column()
 * `@oe` - @ORM\Entity(repositoryClass="")
 * `@og` - @ORM\GeneratedValue(strategy="AUTO")
 * `@oi` - @ORM\Id
 * `@olife` - @ORM\HasLifecycleCallbacks()
 * `@ot` - @ORM\Table(name="")
 * `@r` - @Route("")
 * `@rn` - @Route("", name="")
 * `@m` - @Method("")
 * `@t` - @Template()
 * `@pc` - @ParamConverter("")

### `Use` statements

 * `usearray` - use Doctrine\Common\Collections\ArrayCollection;
 * `useassert` - use Symfony\Component\Validator\Constraints as Assert;
 * `usecache` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Cache;
 * `usecontroller` - use Symfony\Bundle\FrameworkBundle\Controller\Controller;
 * `usefile` - use Symfony\Component\HttpFoundation\File\UploadedFile;
 * `usemethod` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
 * `usenotfound` - use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
 * `useorm` - use Doctrine\ORM\Mapping as ORM;
 * `useparamconverter` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
 * `userequest` - use Symfony\Component\HttpFoundation\Request;
 * `useresponse` - use Symfony\Component\HttpFoundation\Response;
 * `usejsonresponse` - use Symfony\Component\HttpFoundation\JsonResponse;
 * `useroute` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
 * `usesecurity` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
 * `usetemplate` - use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

### Controller

 * `controller` - controller skeleton class
 * `dump`, `d` - dump() function
 * `get` - $this->get('')
 * `am` - action method for controller
 * `em` - $em = $this->getDoctrine()->getManager();
 * `notfound` - throw $this->createNotFoundException('');
 * `redirect` - $this->redirectToRoute('');
 * `repository` - $this->getDoctrine()->getRepository('')

### Form

 * `form` - form type skeleton class

#### Text Fields

 * `texttype` - use Symfony\Component\Form\Extension\Core\Type\TextType;
 * `textareatype` - use Symfony\Component\Form\Extension\Core\Type\TextareaType;
 * `emailtype` - use Symfony\Component\Form\Extension\Core\Type\EmailType;
 * `integertype` - use Symfony\Component\Form\Extension\Core\Type\IntegerType;
 * `moneytype` - use Symfony\Component\Form\Extension\Core\Type\MoneyType;
 * `numbertype` - use Symfony\Component\Form\Extension\Core\Type\NumberType;
 * `passwordtype` - use Symfony\Component\Form\Extension\Core\Type\PasswordType;
 * `percenttype` - use Symfony\Component\Form\Extension\Core\Type\PercentType;
 * `searchtype` - use Symfony\Component\Form\Extension\Core\Type\SearchType;
 * `urltype` - use Symfony\Component\Form\Extension\Core\Type\UrlType;
 * `rangetype` - use Symfony\Component\Form\Extension\Core\Type\RangeType;

#### Choice Fields

 * `choicetype` - use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
 * `entitytype` - use Symfony\Bridge\Doctrine\Form\Type\EntityType;
 * `countrytype` - use Symfony\Bridge\Doctrine\Form\Type\CountryType;
 * `languagetype` - use Symfony\Bridge\Doctrine\Form\Type\LanguageType;
 * `localetype` - use Symfony\Bridge\Doctrine\Form\Type\LocaleType;
 * `timezonetype` - use Symfony\Bridge\Doctrine\Form\Type\TimezoneType;
 * `currencytype` - use Symfony\Bridge\Doctrine\Form\Type\CurrencyType;

#### Date and Time Fields

 * `datetype` - use Symfony\Component\Form\Extension\Core\Type\DateType;
 * `datetimetype` - use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
 * `timetype` - use Symfony\Component\Form\Extension\Core\Type\TimeType;
 * `birthdaytype` - use Symfony\Component\Form\Extension\Core\Type\BirthdayType;

#### Other Fields

 * `checkboxtype` - use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
 * `filetype` - use Symfony\Component\Form\Extension\Core\Type\FileType;
 * `radiotype` - use Symfony\Component\Form\Extension\Core\Type\RadioType;

#### Field Groups

 * `collectiontype` - use Symfony\Component\Form\Extension\Core\Type\CollectionType;
 * `repeatedtype` - use Symfony\Component\Form\Extension\Core\Type\RepeatedType;

#### Hidden Fields

 * `hiddentype` - use Symfony\Component\Form\Extension\Core\Type\HiddenType;

#### Buttons

 * `buttontype` - use Symfony\Component\Form\Extension\Core\Type\ButtonType;
 * `resettype` - use Symfony\Component\Form\Extension\Core\Type\ResetType;
 * `submittype` - use Symfony\Component\Form\Extension\Core\Type\SubmitType;

#### Base Fields

 * `formtype` - use Symfony\Component\Form\Extension\Core\Type\FormType;
