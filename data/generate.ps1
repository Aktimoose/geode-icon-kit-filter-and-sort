cat category-data |
  python .\data-to-json.py |
  python .\check-element-separation.py |
  python .\check-valid-buckets-for-categories-and-sort.py |
  python .\check-item-completeness.py |
  python .\category-json-to-cpp.py |
  out-file -encoding utf8 ../src/constants/categories.cpp

dos2unix ../src/constants/categories.cpp

cat author-json.json |
  python .\check-element-separation.py |
  python .\check-valid-buckets-for-authors-and-sort.py |
  python .\check-item-completeness.py |
  python .\author-json-to-cpp.py |
  out-file -encoding utf8 ../src/constants/authors.cpp

dos2unix ../src/constants/authors.cpp
