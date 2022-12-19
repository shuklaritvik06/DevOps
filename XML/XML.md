# XML

XML-> eXtensible Markup Language

**Syntax**

Root = A root element should be there that is the parent of all the elements.

XML prolog = The initial line that is written in the XML, version and encoding declaration, it is optional.

Tags = All elements must have a closing tag and all the tags are case sensitive.

Attributes must be quoted, example

```XML
<friendList>
  <friend gender="male">
    <name>
      Rajesh
    </name>
    <age>
      18
    </age>
  </friend>
</friendList>

```
Nesting must be done properly.

Entity reference

| Character  |Entity reference  |
|:-:|:-|
| & | &amp; |
| < | &lt; |
| > | &gt; |
| " | &quot; |
| ' | &apos; |

**Comments**

<!-- This is a comment -->

In XML, whitespaces are preserved, whereas in HTML, multiple whitespaces are truncated into a single one.

**XML Namespace**

Suppose we have two XML document.

```xml
<table>
  <name>
    Makhani Daal
  </name>
  <price>
    129
  </price>
  <servings>
    4
  </servings>
</table>
```

```XML
<table>
<tr>
  <td>
    Apple
  </td>
  <td>
    Banana
  </td>
</tr>
</table>

```

So we can see that these two have a same table name, so if these are written in the same XML file it will create a conflict and to solve these name conflicts we use **prefix**


```xml
<r:table>
  <r:name>
    Makhani Daal
  </r:name>
  <r:price>
    129
  </r:price>
  <r:servings>
    4
  </r:servings>
</r:table>
```

```XML
<h:table>
<h:tr>
  <h:td>
    Apple
  </h:td>
  <h:td>
    Banana
  </h:td>
</h:tr>
</h:table>

```

**xmlns Attribute**

The Namespace can be defined by an xmlns Attribute in the start tag of the element, All child elements with the same prefix are associated with the same namespace.


```xml

<r:table xmlns:f="URI">
  <r:name>
    Makhani Daal
  </r:name>
  <r:price>
    129
  </r:price>
  <r:servings>
    4
  </r:servings>
</r:table>

<h:table xmlns:h="URI">
<h:tr>
  <h:td>
    Apple
  </h:td>
  <h:td>
    Banana
  </h:td>
</h:tr>
</h:table>
```

Or we can declared the namespace in the root element too, then we don't have to declare individually.

`<root xmlns:h="" xmlns:f="">`

**Default Namespaces**

Defining a default namespace for an element saves us from using prefixes in all the child elements.


```XML
<table xmlns="URI">
<tr>
  <td>
    Apple
  </td>
  <td>
    Banana
  </td>
</tr>
</table>

```

**DOM**

Represents the content of XML or HTML document as a tree structure. Can read, access, and update easily.

Dom is a programming interface (API).

**XPATH**

```xml
<bookstore>
  <book category="cooking">
    <title lang="en">Everyday Italian</title>
    <author>
      Ramesh
    </author>
    <year>
      2001
    </year>
    <price>
      2000
    </price>
  </book>
  <book category="horror">
    <title lang="en">Everyday Horror</title>
    <author>
      Ramesh
    </author>
    <year>
      2001
    </year>
    <price>
      2000
    </price>
  </book>
</bookstore>
```

**Absolute XPath**

`/bookstore/book[2]/author`  = Ramesh
`/bookstore/book[1]/title[@lang="en"]` = Everyday Italian

**Relative XPath**

`//*/book[2]/author`

**XSLT**

XSL is just a styling Language to convert XML to a bit of good looking format like HTML.


.xsl extension

XSD (XML Schema Definition)
