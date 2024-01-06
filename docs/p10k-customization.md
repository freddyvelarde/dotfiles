First of all run this command to get all the colors supported for your terminal
and system

```
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f" ${${(M)$((i%6)):#3}:+$'\n'}; done
```

And then  you can edit the next file: `~/.p10k.zsh`
