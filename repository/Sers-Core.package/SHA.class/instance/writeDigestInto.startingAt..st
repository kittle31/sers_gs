as yet unclassified
writeDigestInto: aByteArray startingAt: start
  h0 storeTo: aByteArray at: start.
  h1 storeTo: aByteArray at: start + 4.
  h2 storeTo: aByteArray at: start + 8.
  h3 storeTo: aByteArray at: start + 12.
  h4 storeTo: aByteArray at: start + 16