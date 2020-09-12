# Android treble build GitHub Action

A GitHub Action for building Android GSI.

# Usage

```yml
- name: "Build Android treble GSI image"
  uses: memiks/treble-build-github-actions@v0.0.2
  with:
    args: "/bin/bash /treble/build-dakkar.sh rr arm-aonly-gapps-su arm64-ab-go-nosu"
```

Specify via `args` the Treble tasks to run.

Developed By
------------

* Lesur Frederic - <contact@memiks.fr>

License
-------

    Copyright 2020 Lesur Frederic

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
