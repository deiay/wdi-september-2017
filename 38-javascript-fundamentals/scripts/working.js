for (let i = 0; i <= 10; i++) {
  console.log(i);
}

for (var count = 10; count <= 20; count += 2) {
  console.log(count);
}

for (var index = 100; index > 0; index -= 3) {
  console.log(index);
}

for (var index = 1; index <= 256; index *= 4) {
  console.log(index);
}

var toBuy = ['hat','water','jeans']

for (let index = 0, index < toBuy.length; index++) {
    let item = toBuy[index];
    console.log(item);
}