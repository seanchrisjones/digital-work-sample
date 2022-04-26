##  Design and Architecture
### Model
1) Models are created with a failable init using input from each line of data.txt
2) Computed properties created for convenience, for example, "price" will return the smaller of "clearance price" or "normal price"

### Parsing
1) Parsing on two level, on the document level with parse(document:)
2) Parse on the item level with parse(line:)

### Report Generator
1) Report Generator splits up the products into arrays of: clearance, normal, and cart items
- responsible for sorting the categories by numProducts
2) Report type has static factory to create a report from a list of ProductItem
- responsible for the output of individual categories
- report string is built sequentially (similary to builder pattern) based on criteria

Code Coverage: 79% 

