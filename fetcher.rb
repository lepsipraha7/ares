#!/usr/bin/env ruby
require 'open-uri'
require 'json'
require 'yaml'

cisla_popisna = (1..1618).to_a-[4, 5, 6, 7, 8, 10, 12, 15, 16, 17, 19, 21, 22, 23, 25, 26, 27, 28, 29, 30, 31, 32, 33, 39, 40, 48, 49, 52, 53, 54, 55, 57, 59, 61, 62, 63, 64, 69, 70, 71, 72, 75, 77, 81, 82, 83, 84, 86, 87, 88, 90, 91, 92, 93, 95, 97, 105, 107, 108, 109, 110, 112, 115, 117, 118, 119, 120, 145, 150, 153, 154, 158, 165, 166, 169, 174, 179, 180, 185, 187, 226, 244, 251, 256, 257, 258, 266, 267, 273, 274, 275, 279, 280, 288, 289, 299, 322, 325, 409, 410, 437, 465, 468, 472, 478, 480, 485, 486, 487, 488, 496, 507, 509, 510, 543, 633, 634, 637, 638, 660, 664, 665, 697, 703, 714, 750, 778, 779, 780, 797, 863, 893, 898, 956, 957, 961, 962, 1009, 1016, 1033, 1034, 1038, 1089, 1095, 1180, 1226, 1227, 1231, 1279, 1446, 1526, 1533, 1543, 1544, 1549]

cisla_popisna.each{|cislo_popisne|
  puts cislo_popisne
  File.open(File.join("source","#{cislo_popisne}.xml"),"w") {
    |f| f<<open("http://wwwinfo.mfcr.cz/cgi-bin/ares/ares_es.cgi?jazyk=cz&obch_jm=&ico=&cestina=cestina&obec=Praha+7&k_fu=&maxpoc=1000&ulice=&cis_or=#{cislo_popisne}&cis_po=&setrid=ZADNE&pr_for=&nace=&xml=0&filtr=1").read
  }
}
