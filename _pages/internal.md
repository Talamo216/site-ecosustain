---
layout: page
permalink: /internal/
title: Internal
description: Information for members of the project
nav: false
---

# Guidelines for `bibtex` in the scientific reports

1. It is best to use UTF-8, there is no need for LaTeX codes ("`\~a`"
   for "`ã`" etc.). **Definitely** avoid "`\'\i`", it prevents the
   document from compiling.
2. Include the `abstract` field (in the original language).
3. For the month, use `month=blah`, where `blah` is the three-letter
   lowercase month abbreviation in English **without quotes or curly
   braces** (other formats are valid but may cause problems in some
   cases).
4. Always include the `doi` field.
5. For electronic publications, you may replace `pages` with `eid`
   (check the biblatex docs).
6. If the paper is open access, there is no need to add a `url` field,
   the `doi` entry is enough. If it is not and you have a preprint
   or other accessible version available (in the institutional
   repository, on your homepage, in arxiv...), include a `url` field
   with a link to it.
7. Add a `keywords` field with (multiple tags are ok, like
   `keywords={br,submitted}`):

   * `br` for papers published in Brazilian (non-international) events
   * `submitted` for submitted papers
   * `masters` for masters thesis (use the bibtex type `thesis`; for
      PhD thesis, also use the bibtex type `thesis` but do not add a
      keyword)
   * `course` for courses
   * `software` for programs (use the bibtex type `misc`)
   * `dataset` for datasets (use the bibtex type `misc`)

## Some examples

{% capture exemplos %}
{% raw %}
% Um artigo em que o DOI aponta para a versão final e a URL aponta
% para a versão arquivada no repositório institucional
@article{detectingtree,
 title     = {Detecting tree and wire entanglements with deep learning},
 author    = {Oliveira, Artur André and Buckeridge, Marcos S
              and Hirata, Roberto},
 journal   = {Trees},
 pages     = {1--13},
 year      = {2022},
 publisher = {Springer},
 doi       = {10.1007/s00468-022-02305-0},
 url       = {http://repositorio.usp.br/item/003090666},
}

% Um artigo em que o DOI aponta para a versão final e a URL aponta
% para o preprint
@article{leite22,
 author  = {Leonardo Leite and Nelson Lago and Claudia Melo
            and Fabio Kon and Paulo Meirelles},
 title   = {A theory of organizational structures for development
            and infrastructure professionals},
 year    = {2022},
 journal = {IEEE Transactions on Software Engineering},
 month   = aug,
 pages   = {1--30},
 doi     = {10.1109/TSE.2022.3199169},
 url     = {http://www.techrxiv.org/doi/full/10.36227/techrxiv.19210347.v3},
}

% Um artigo de acesso aberto (basta indicar o DOI)
@article{cordeiro23,
 author  = {Cordeiro, Bruna M. O. S. and Rodrigues Filho, Roberto
            and Júnior, Iwens G. S. and Costa, Fábio M.},
 title   = {{STEER}: An Architecture to Support Self-adaptive
            {IoT} Networks for Indoor Monitoring Applications},
 volume  = {14},
 doi     = {10.5753/jisa.2023.3084},
 number  = {1},
 journal = {Journal of Internet Services and Applications},
 year    = {2023},
 pages   = {107-123},
}

% Um paper em evento internacional; é uma entrada "normal"
@inproceedings{barbosa23,
 author    = {Barbosa, Eder M. and Lima, Josias and
              Santos, Alessandro and Baptista, Patricia},
 booktitle = {2023 {IEEE} International Smart Cities Conference ({ISC2})},
 title     = {Using Cellular Infrastructures Data to Foster the Transition
              Towards Smart Cities: a Systematic Mapping},
 year      = {2023},
 pages     = {1-7},
 doi       = {10.1109/ISC257844.2023.10293311},
}

% Um paper em evento nacional; observe o campo "keywords"
@inproceedings{sbseg_estendido_sato22,
 author    = {Jessica Sato and Jorge Ribeiro and Roberto Araujo
              and José Pina and Daniel Batista},
 title     = {Utilização de Animações para Comparação de Hashes
              em Votação Eletrônica via Internet},
 booktitle = {Companion Proceedings of the 22nd Brazilian Symposium
              on Information and Computational Systems Security},
 location  = {Santa Maria},
 year      = {2022},
 pages     = {256-263},
 publisher = {SBC},
 address   = {Porto Alegre, RS, Brasil},
 doi       = {10.5753/sbseg_estendido.2022.224854},
 keywords = {br},
}

% Software; observe o campo "keywords"
@misc{lente-software,
 keywords = {software},
 author   = {3CLTSM},
 title    = {{3CLSTM} -- An Improved Tool for Detection of {XSS}
             Attacks by Combining {CNN} with {LSTM}},
 year     = {2020},
 url      = {github.com/clente/3clstm},
}

% minicurso ministrado no Brasil; observe o campo "keywords"
@inbook{camilo2022redes,
 title     = {Redes de Canais de Pagamento: Provendo Escalabilidade
              para Pagamentos em Criptomoedas},
 author    = {Gustavo Camilo and Gabriel Rebello and Lucas Souza
              and Guilherme Thomaz and Maria Potop-Butucaru
              and Marcelo Amorim and Miguel Campista and Luís Costa},
 year      = {2022},
 booktitle = {Minicursos do XL Simpósio Brasileiro de Redes de
              Computadores e Sistemas Distribuídos (SBRC)},
 url       = {www.gta.ufrj.br/ftp/gta/TechReports/CRS22.pdf},
 publisher = {SBC},
 keywords  = {br, course},
}

% Relatório técnico é "other"; observe o campo "keywords"
@techreport{RT-MAC-2023-01,
 author      = {Ana Y. F. de Lima, Fabio Kon},
 title       = {Impacts of the {COVID-19} pandemic on the
                bicycle sharing system in {São Paulo}},
 institution = {Department of Computer Science, Institute
                of Mathematics and Statistics, University
                of São Paulo},
 year        = {2023},
 keywords    = {other},
}
{% endraw %}
{% endcapture %}
{% highlight bibtex %}
{{ exemplos }}
{% endhighlight %}
