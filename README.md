# Benchm

Benchm is the simplest way to time your programs.

• Labels

• Built-in Iteration

• Set Default Iteration

## Usage

#### The simplest usage:

``` ruby
require 'benchm'

Benchm.ark do
  sleep 0.5
end
```

Results in:

``` java

Total: 0.501139 seconds
Average: 0.501139 seconds

```
#### With Labels:

``` ruby
Benchm.ark 'sleeping' do
  sleep 0.5
end
```

Results in:

``` java

Sleeping Total: 0.501113 seconds
Sleeping Average: 0.501113 seconds

```

#### Built-in Iteration:

``` ruby
Benchm.ark 5 do
  sleep 0.5
end
```

Results in:

``` java

Total: 2.504231 seconds
Average: 0.5008462 seconds

```

#### With adjustable default:

Benchm defaults to 1 repeat.
Change this easily:

``` ruby
Benchm.repeat = 5

Benchm.ark 'Test' do
  sleep 0.5
end
```

Results in:

``` java

Test Total: 2.503483 seconds
Test Average: 0.5006966 seconds

```


#### Everything combined:

``` ruby

Benchm.repeat = 20

Benchm.ark 'first' do
  sleep 0.5
end

Benchm.ark 'second' do
  sleep 0.3
end

```

Results in:

``` java

First Total: 10.011907 seconds
First Average: 0.50059535 seconds


Second Total: 6.010031 seconds
Second Average: 0.30050155 seconds

```


## Installation

Add this line to your application's Gemfile:
``` ruby
gem 'benchm'
```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install benchm

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
