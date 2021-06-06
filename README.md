
#  input_type_field

  

A multi platform input type.
With current keyboard type parameter input fields will force you to enter only digits (for example) but this is not the case when executing your code on the web or on desktop apps.
This is the main purpose of this package is to help developers set input fields  easily and across all platforms.

  

##  Getting Started

  
So all you have to do to have the package in you project is to add this on your pubspec.yaml file:
```yaml
dependencies:
  input_type_field: ^1.0.0
```

##  Usage

The implementation it's really simple just wrap your TextField with MaterialTextType widget and add the constructor you want 
 * available constructors:
	 * integer: will let you enter only numbers
	 * number: can be used for floating and signed numbers 
	 * datetime: for dates and time formats
	 * phone: for phone numbers input  fields

If you are using `CupertinoTextField` wrap it with `CupertinoTextType` and choose one of the constructors above

```dart
    MaterialTextType.integer(
		textField:  TextField(
		decoration:  InputDecoration(hintText:  "Age"),
		onChanged: (value) {
			print(value);
		}
	))
```

```dart
    MaterialTextType.phone(
	    textField:  TextField(
		    decoration:  InputDecoration(hintText:  "Phone number"),
		  )
	)
```

```dart
   CupertinoTextType.number(
	   cupertinoTextField:  CupertinoTextField(
		   placeholder:  "Product Price"
		 )
	)
```

```dart
  CupertinoTextType.datetime(
	  cupertinoTextField:  CupertinoTextField(
		  placeholder:  "Product Date",
		)
	)
```

Of course you can implement `CupertinoTextField` and `TextField` the way you want it  won't be affected by  
`CupertinoTextType` or by `MaterialTextType`

### Github repository
For more  information and to contribute to this project head back to the repository below
[https://github.com/koukibadr/Input-Text-Type](https://github.com/koukibadr/Input-Text-Type)