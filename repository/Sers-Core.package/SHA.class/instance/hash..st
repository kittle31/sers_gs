as yet unclassified
hash: aByteArrayOrString
  "Return the digest value for aByteArrayOrString"

  ^ self
    reset;
    updateWith: aByteArrayOrString asByteArray;
    digest