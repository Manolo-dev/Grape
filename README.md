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