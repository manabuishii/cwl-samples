# This directory has samples for multiple file grep and count

On top page sample `grep-and-count.cwl` is for single file.

This directory has samples for multiple file grep and count
]
## How it works

### Pattern 1

- `grep.cwl` accept a single file as `File` and output is also `File`
- `wc.cwl` accept multiple input files as `File []`.

As it is, `grep.cwl` can not connect to `wc.cwl`
Because `grep.cwl` outputs `File`
but `wc.cwl` requires `File []`

So we need to manage this problem.

The solution is `Workflow` input accept multiple files.
And it will breaks input files to indivisual file by using `ScatterFeatureRequirement` .

## 日本語による解説

- [cwltool をインストールして、実際にCWLを実行してみる](https://qiita.com/manabuishiirb/items/d866af4a5b1032eba374)