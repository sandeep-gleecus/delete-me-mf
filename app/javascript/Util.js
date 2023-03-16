export default class Util {
  static padDigit(digit, padWith = '0') {
    return digit.toString().padStart(2, padWith);
  }
}
