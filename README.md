# What it is?
Provide test environments to compare  different (de-)serialization technologies.

## Example
Assume we do some high-fantasy role playing. Probably there are characters with some properties.
```
enum CharacterType {
  ORK,
  DWARF
}

struct Character {
  string name,
  CharacterType type
}

list<Character> Characters

struct Scene {
  datetime time,
  Characters characters
}
```
If there is not only (de-)serialization provided but also an notion of a service there may be something like
```
service GameServer {
  Scene GetScene ()
}
```
