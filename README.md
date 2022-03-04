## The Problem

In the eCommerce industry, it's important to track your company's product
pricing and metrics related to their current assortment. We'd like you to build
a report from some data about Designer Brands' products and pricing.

## Your Solution

Your objective is to build a command line program that parses the provided data
and displays a small report. The data should be passed to your program at
runtime as the file contents via standard input or as a file name/absolute path
command line argument. Here is how it might look to run your program with
TypeScript:

```
// File name as a command line argument
npx ts-node ./your-program.ts data.txt

// Absolute path as a command line argument
npx ts-node ./your-program.ts ~/Code/work-sample/data.txt

// File contents piped via stdin
cat data.txt | npx ts-node ./your-program.ts
```

Please write your solution with any strongly-typed language you're comfortable
with, but we strongly prefer to see solutions in the languages we use most:
TypeScript, Swift, or Kotlin. You don't need to sanitize the data, persist to
the filesystem, or manipulate the input file.

## The Data

Please save the data below in your project as `data.txt`.

```
Type,normal,Normal Price
Type,clearance,Clearance Price
Type,price_in_cart,Price In Cart
Product,59.99,39.98,10,false
Product,49.99,49.99,8,false
Product,79.99,49.98,5,false
```

In the data, there are price types and there are products that belong to the
price types. Price type entries will begin with `Type` and product entries begin
with `Product`. A price type record has an identification key and a display
name. A product record has the normal price, clearance price, quantity in stock,
and whether the price is hidden from customers until added to cart.

## Requirements

Generate a report that shows the number of products for each price type, and the
range of prices represented by that price type.

You can know that a product is normally priced if its normal price field is
equal to its clearance price field. If a product is on clearance, then the
clearance price will be less than the normal price.

We can't allow products with less than 3 in stock to be sold to customers, so
exclude those from your report data. Any products denoted as "Price In Cart" can
also be counted as normal price or clearance products when applicable.

Sort the output in descending order by how many products that met the inclusion
criteria above are in each price type.

When run with the provided data, here's the _exact_ output your report should
display:

```
Clearance Price: 2 products @ $39.98-$49.98
Normal Price: 1 product @ $49.99
Price In Cart: 0 products
```

## Evaluation criteria

You'll be evaluated on the following criteria:

- Full implementation of requirements
- Consistent design and architecture
- Command and mastery of language
- Testing approach and methodology
- README and documentation

Your program itself is evaluated on the requirements explicitly mentioned in
this document. There are no implicit/trick requirements related to parsing the
data and generating the report. Implementation details are yours to plan and
execute. Feel free to make decisions on anything you feel is ambiguous.

We want to understand how you approach solving problems, so we do ask that you
put sufficient time into a README that explains a bit about your solution and
decisions you made. For example, tell us about some trade-offs, tell us why you
decided to organize your code the way you did, tell us what you would have done
differently, etc.. We don't look for one specific solution, but we want to
understand why you made some of the choices you did.

## Time Limit

We want you to be respectful of your own time, but we also ask that you do your
best to showcase how you build production-ready software. This will include
organization, design, test coverage, and documentation. We're looking for a
thoughtful solution that fully implements and tests all requirements and
demonstrates your problem solving ability and thought processes. We ask that you
don't over-engineer, but don't over-simplify.

## UI Addendum

We understand that command line programs aren't the norm for UI positions, but
we can infer what we're looking for about your aptitude as a UI engineer from
this exercise. Most importantly, keeping this exercise a simple command line
program eliminates distractions and variables, such as frameworks and libraries,
which helps us consistently and objectively review your submitted solution.

## Questions

If you have questions or need clarification, please to reach out to your
recruiter. That said, if you feel something isn't in this document, you should
likely use your best judgement. Remember, this exercise is not meant to be
ambiguous, and we don't intend to trick you or leave out critical details.

## Turning In

Compress your code with `tar zcvf ${your-name}-work-sample.tgz ${project-dir}`
and submit the archive back to your recruiter. There's no deadline, but please
try to complete and return your solution to us in a timely manner. Do not
include your name or the position you're applying for in the submitted solution
code -- we anonymize submissions to reduce bias during the code review.
