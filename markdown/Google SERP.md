title: Google SERP

## Flags

> Flags: `(?i-Ums)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * -s: Dot does not match newline
> * i: Case insensitive

## Regular Expression Search

```ruby
/(?i-Ums)(?:https?:\/\/)?[\da-z\.-]+\.google\.com\/url\?.*?&url=(.*?)&\w{3}=.*$/
```

---

## Test string:

```text
https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=17&cad=rja&uact=8&sqi=2&ved=0ahUKEwi30uGCofzJAhVGeSYKHYWxA3IQFghPMBA&url=https%3A%2F%2Fgithub.com%2Fttscoff&usg=AFQjCNF8o7h4WFsxdW1R47xH4Jrpe4xAWA&bvm=bv.110151844,d.eWE

```


