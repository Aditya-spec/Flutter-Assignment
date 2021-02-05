void main() {

////???????????

  var PartyMembers = [2, 4, 5, 94, 90, 3, 3, 12, 22]; //list of party memebrs.
ffff
  Map<int, int> store = {}; //taking an empty map to store memebr's count.

  for (int i = 0; i < PartyMembers.length; i++) {
    if (store.containsKey(PartyMembers[i])) {
      store[PartyMembers[i]] = store[PartyMembers[i]] +
          1; //if store contains the memeber, increase it's count by 1.

    } else {
      store[PartyMembers[i]] =
          1; //if store does not contains the member, put 1 at it's count.
    }
  }
  var count = 0;
  store.forEach((key, value) {
    if (value > 1) {
      count = count +
          1; //if any memebers's count is greater than 1 it will change "count value".
    }
  });

  if (count > 1) // if count is greater than 1, that means it is a Boys party.
  {
    print("BOYS");
  } else {
    print("GIRLS"); // if not then it is a Girls party.
  }
}
