# Payjp Tap

## How do I install these formulae?

`brew install payjp/tap/<formula>`

Or `brew tap payjp/tap`, trust the formula, and then install it:

```sh
brew tap payjp/tap
brew trust --formula payjp/tap/<formula>
brew install <formula>
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "payjp/tap"
brew "payjp/tap/<formula>", trusted: true
```

## Trusting formulae from this tap

Since Homebrew 6.0.0, formulae from third-party taps are not loaded until they
are trusted (see `brew trust --help` and [Tap Trust](https://docs.brew.sh/Tap-Trust)).
Installing with the fully qualified name, as shown above, trusts that formula
automatically. If you added the tap with `brew tap payjp/tap` and then run
`brew install <formula>`, Homebrew refuses to load the formula until you trust it:

```text
Error: Refusing to load formula payjp/tap/<formula> from untrusted tap payjp/tap.
```

Prefer trusting the specific formula you need (`brew trust --formula payjp/tap/<formula>`)
over trusting the whole tap (`brew trust payjp/tap`).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
