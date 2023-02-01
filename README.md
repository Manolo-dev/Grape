---
marp: true
---

<style>
:root { --monokai-background: #272822; --monokai-current-line: #44475a; --monokai-foreground: #F8F8F2; --monokai-comment: #75715E; --monokai-red: #F92672; --monokai-orange: #FD971F; --monokai-yellow: #E6DB74; --monokai-green: #A6E22E; --monokai-cyan: #66D9EF; --monokai-purple: #AE81FF; --monokai-pink: #E69F66; --color-border-default: #F8F8F2; }

section {
  background-color: var(--monokai-background);
  color: var(--monokai-foreground);
}

pre {
  background: var(--monokai-background);
  color: var(--monokai-foreground);
}

table, tr, th, td {
  background: var(--monokai-background);
  color: var(--monokai-foreground);
}

h1 { color: var(--monokai-red); }
h2 { color: var(--monokai-orange); }
h3 { color: var(--monokai-yellow); }
h4 { color: var(--monokai-green); }
h5 { color: var(--monokai-cyan); }
h6 { color: var(--monokai-purple); }
a  { color: var(--monokai-pink); }

span[red] { color: var(--monokai-red); }
span[orange] { color: var(--monokai-orange); }
span[yellow] { color: var(--monokai-yellow); }
span[green] { color: var(--monokai-green); }
span[cyan] { color: var(--monokai-cyan); }
span[purple] { color: var(--monokai-purple); }
span[comment] { color: var(--monokai-comment); }
span[i] { font-style: italic }

pre code {
  display: block;
  overflow-x: auto;
  padding: 10px;
  background: var(--monokai-background);
  -webkit-text-size-adjust: none;
}

pre code *::selection, .hljs::selection { background: var(--monokai-current-line) !important; } .hljs { color: var(--monokai-foreground); } .hljs-string { color: var(--monokai-yellow); } .hljs-number { color: var(--monokai-purple) !important; } .hljs-title { color: var(--monokai-red) !important; } .hljs-built_in { color: var(--monokai-cyan) !important; } .hljs-keyword { color: var(--monokai-red) !important; } .hljs-params { color: var(--monokai-orange); } .hljs-comment { color: var(--monokai-comment); } .hljs-function > .hljs-keyword { color: var(--monokai-cyan) !important; font-style: italic; }

</style>

# Grape

## Qu'est-ce que Grape ?

**Grape** est un langage de programmation qui permet de créer des programmes pour la machine virtuelle **Raisin**. Il est inspiré de **C++** pour la gestion de la mémoire et des pointeurs, de **Ocaml**, **Ada** et **Python** pour la syntaxe, et de **Haskell** et **Javascript** pour l'aspect fonctionnel.

---

## Pourquoi Grape ?

**Grape** est simple à comprendre et à manipuler, de plus, si sa libraire standard ne vous plaît pas, libre à vous de la réécrire, ou de la remplacer par une autre.
**Grape** étant transpilé en **Raisin**, un pseudo assembleur proche de l'**ARM**, il est possible de lire le résultat de la transpilation et de comprendre comment son programme fonctionne ou pourquoi ne fonctionne-t-il pas.

---

## Comment utiliser Grape ?

**Grape** est un langage de programmation, il est donc nécessaire d'avoir un compilateur pour pouvoir l'utiliser. Pour cela, il faut télécharger le compilateur de **Grape**, qui est disponible [ici](https://github.com/Manolo-dev/Grape). Une fois le compilateur téléchargé, il faut le compiler avec un compilateur **C++17**, puis l'exécuter avec le fichier source en argument. Le compilateur va alors générer un fichier **Raisin**, qui pourra être exécuté avec la machine virtuelle **Raisin**.

---

## Exemple

<pre><code>
<span green>sont_chiffres_decroissants</span> <span red><-</span> ( <span cyan i>Int</span> ) <span red>:=</span> <span orange>n</span> <span red>=></span> {n <span red><</span> <span purple>10</span>
    <span red>|</span> <span purple>1</span> <span red>=></span> n
    <span red>|</span> n <span red>%</span> <span purple>10</span> <span red><=</span> (n <span red>//</span> <span purple>10</span>) <span red>%</span> <span purple>10</span> <span red>and</span> <span cyan>sont_chiffres_decroissants</span> (n <span red>//</span> <span purple>10</span>)
    }

<span cyan>sont_chiffres_decroissants</span> <span purple>10</span> <span comment>-- 1</span>
<span cyan>sont_chiffres_decroissants</span> <span purple>12</span> <span comment>-- 0</span>
<span cyan>sont_chiffres_decroissants</span> <span purple>221</span> <span comment>-- 1</span>
</code></pre>