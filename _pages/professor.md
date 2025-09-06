---
title: "Chanyoung Park @ KAIST"
layout: gridlay
excerpt: "Chanyoung Park @ KAIST"
sitemap: false
permalink: /professor/
---

<!-- Jump to [staff](#staff), [master and bachelor students](#master-and-bachelor-students), [alumni](#alumni), [administrative support](#administrative-support), [lab visitors](#lab-visitors). -->

## Professor
{% for member in site.data.professor %}
<div class="row">
<div class="col-sm-8 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="30%" style="float: left" />
  <h4>{{ member.name }}</h4>
  {{ member.info }}<br>E-mail: {{ member.email }}<br>
  Tel: +82-42-350-3137<br> 
  Office: {{ member.office }}<br>
  [[CV]]({{ member.cv_url }}){:target="_blank"}[[Google Scholar]]({{ member.gs_url }}){:target="_blank"}
  <ul style="overflow: hidden">
  </ul>
</div>
</div>
{% endfor %}

### About
- I am an associate professor in the [Department of Industrial Engineering and Systems](https://ie.kaist.ac.kr/){:target="_blank"} and also affiliated with the [Graduate School of AI](http://gsai.kaist.ac.kr/){:target="_blank"} at [KAIST](http://kaist.ac.kr/){:target="_blank"}. 
- Before joining KAIST, I was a postdoctoral research fellow in Computer Science at University of Illinois at Urbana-Champaign. I obtained my Ph.D degree in Computer Science and Engineering from Pohang University of Science and Technology (POSTECH), and B.S. in Computer Science from Sogang University.

### Research Interest
- <b>AI for Scientific Discovery</b>
  - Materials / Chemistry
  - Biology
  - Engineering / Electronic Design Automation (EDA) / Circuit Analysis
- <b>Agentic AI</b>
- <b>LLM / Multimodal Data Mining</b>
  - Recommender System, Graph Neural Networks
  - LLM Safety, Scene Graph Generation, Video Language Model
  - Anomaly Detection, Time Series Analysis
- <b>Data-Centric AI</b>
  - Model Robustness, Adversarial Attack/Defense
  - Imbalanced Learning, Few-show Learning, Explainable AI
<!-- #### (Click [here](https://kaist-dsail.github.io/files/research.pdf){:target="_blank"} for more detail) -->
<!-- - <b>Data-Centric AI, AI for Science, Graph Neural Networks, Multimodal Data Mining</b> -->
  <!-- - Mining meaningful knowledge from multimodal data to develop artificial intelligence solutions for various real-world applications across different disciplines. -->
<!--   - Keywords: Multimodal user behavior analysis, Machine learning for graphs, Graph neural network, Graph representation learning, AI for Science -->
  <!-- - <b>Application domains</b>:  -->
  <!-- Recommendation system, AI for Science (Materials science, Chemistry, Bioinformatics), Large Language Model applications, Scene understanding, Social network analysis, Medical image analysis, Fraud/Anomaly detection, Knowledge graph, Sentiment analysis, Purchase/Click prediction, Time-series and spatio-temporal analysis, etc. -->

### Announcements
<!-- - <mark style='background-color: #ffd33d'><b>I am looking for interns to join our group during this Summer break (8 weeks). </b> -->
  <!-- Click <a href="https://ise.kaist.ac.kr/notices/view/id/3026" target="_blank">here</a> for more detail (Due date&#58;May. 7). Apply through the <a href="https://forms.gle/3nbchqaLEvhewWPj9" target="_blank">official link</a> and send an email to cy.park (at) kaist.ac.kr <b>with your CV and transcript</b> to confirm that you have submitted your application. -->
- <span style="color:red"><b>I am actively seeking for passionate and self-motivated Ph.D. students, MS students, and postdocs. If you are interested, send me an email with your interests, CV, and transcript.</b></span>  
- I am also looking for undergraduate students who are interested in doing internship in our lab, which will be open every summer and winter. If you are interested, send me an email with your interests, CV, and transcript. 
  + Interns will get opportunities to study about research topics that our lab is focusing on, and participate in research projects with graduate students.
  + If you are interested in joining our lab as a graduate student, I strongly recommend you to do an internship before you apply.
- There are three ways to join our lab. You can apply through 1) [Department of Industrial Engineering and Systems](https://ie.kaist.ac.kr/){:target="_blank"} or 2) [Graduate School of Data Science](https://gsds.kaist.ac.kr/){:target="_blank"} or 3) [Graduate School of AI](http://gsai.kaist.ac.kr/){:target="_blank"}.


<!-- ### News
- (2022.11) A paper got accepted at NeurIPS 2022 GLFrontiers Workshop.
- (2022.10) A paper got accepted at EMNLP 2022 (Findings).
- (2022.09) A paper got accepted at ICDM 2022.
- (2022.08) I gave a tutorial at <a href="https://sites.google.com/view/dbsummerschool2022" target="_blank">2022 데이터베이스 소사이어티 여름학교</a>.
- (2022.08) Three papers got accepted at CIKM 2022.
- (2022.05) A paper got accepted at KDD 2022.
- (2022.04) Two papers got accepted at SIGIR 2022.
- (2021.12) A paper got accepted at AAAI 2022.
- (2021.09) A paper got accepted at ICDM 2021.
- (2021.07) Call For Paper: Frontiers in Artificial Intelligence [(Graph representation learning: Methods and Applications)](https://www.frontiersin.org/research-topics/22665/graph-representation-learning-methods-and-applications#overview){:target="_blank"}
- (2021.06) I gave a tutorial at <a href="http://kiie.org/wp/2021a/online.asp" target="_blank">2021 대한산업공학회 춘계학술대회</a>.
- (2021.04) A paper got accepted at SIGIR 2021.
- (2021.02) I gave a tutorial at [2021 한국인공지능학회 동계단기강좌](http://aiassociation.kr/Conference/ConferenceView.asp?AC=0&CODE=CC20210101&CpPage=104#CONF){:target="_blank"} [[Slide]](https://kaist-dsail.github.io/files/MLGraph2021.pdf){:target="_blank"}.
- (2021.01) A paper got accepted at WWW 2021.
- (2020.11) I joined KAIST as an assistant professor.
- (2020.09) A paper got accepted at ICDM 2020.
- (2020.02) A paper got accepted at KDD 2020 (research track).
- (2019.11) A paper got accepted at AAAI 2020.
- (2019.05) Two papers got accepted at CIKM 2019.
- (2019.01) I joined University of Illinois at Urbana-Champaign as a postdoctoral research fellow.
- (2018.10) I successfully defended Ph.D thesis. -->

<!-- ### Selected Presentation Slide
- <b>Recent Advancement in Machine Learning on Graph 2</b> [[Slide]](https://kaist-dsail.github.io/files/MLGraph2022.pdf){:target="_blank"} ([2022 데이터베이스 소사이어티 여름학교](https://sites.google.com/view/dbsummerschool2022){:target="_blank"})
- <b>Recent Advancement in Machine Learning on Graph 1</b> [[Slide]](https://kaist-dsail.github.io/files/MLGraph2021.pdf){:target="_blank"} ([2021 한국인공지능학회 동계단기강좌](http://aiassociation.kr/Conference/ConferenceView.asp?AC=0&CODE=CC20210101&CpPage=104#CONF){:target="_blank"}) 
-->



### Work Experience
- <b>KAIST (Korea Advanced Institute of Science and Technology)</b>, Daejeon, South Korea
  + Associate Professor (2025.03 - Present)
  + Assistant Professor (2020.11 - 2025.02)
- <b>University of California San Diego</b>, CA, USA 
  + Visiting Scholar in Computer Science and Engineering Department (2025.01 - Present)
  + Host: [Prof. Julian McAuley](https://cseweb.ucsd.edu/~jmcauley/){:target="_blank"}
- <b>University of Illinois at Urbana-Champaign</b>, IL, USA 
  + Postdoctoral Research Fellow in Computer Science Department (2019.3 - 2020.10)
  + Host: [Prof. Jiawei Han](http://hanj.cs.illinois.edu/){:target="_blank"}
- <b>Microsoft Research</b>, Beijing, China 
  + Research Intern in [Social Computing Group](https://www.microsoft.com/en-us/research/group/social-computing-beijing/){:target="_blank"} (2017.9 - 2017.12)
  + Host: [Dr. Xing Xie](https://www.microsoft.com/en-us/research/people/xingx/){:target="_blank"}
- <b>NAVER</b>, Seongnam, South Korea 
  + Research Intern in NAVER Shopping (2017.3 - 2017.6)
  + Host: [Dr. Jung-Tae Lee](https://scholar.google.com/citations?user=b7aYQFAAAAAJ&hl=en){:target="_blank"}
    


### Education
- <b>POSTECH (Pohang University of Science and Technology)</b>
  + Ph.D. in Computer Science and Engineering (2019)
  + Dissertation: Recommendation Framework via Matrix Factorization and Translation
  <!-- + Advisor: [Prof. Hwanjo Yu](http://hwanjoyu.org/){:target="_blank"} -->
- <b>Sogang University</b>
  + B.S. in Computer Science and Engineering (2014)
  <!-- + Graduated with Honors (Magma Cum Laude) -->


### Teaching
- <b>DS535: Recommender System and Machine Learning on Graphs</b>
  + Fall 2021, 2022, 2023, 2024

- <b>CoE202: Basics of Artificial Intelligence</b>
  + Fall 2021

- <b>IE343: Statistical Machine Learning</b>
  + Spring 2021, 2022, 2023, 2024

- <b>DS503: Machine Learning for Data Science</b>
  + Spring 2023, 2024

- <b>KSE527: Deep Learning</b>
  + Spring 2022


### Awards
- Song-Am Distinguished Research Award, KAIST (2024)
- Best Academic Award, ISE KAIST (2024)
- Best Paper Award, KDD 2024 Workshop on Federated Learning for Data Mining and Graph Analytics (FedKDD) (2024)
- Best Paper Award, KDD 2024 Workshop on Human-Interpretable AI (2024)
- Gold Prize, 30th Samsung Humantech Paper Award (2024)
- Technology Innovation Awards of College of Engineering, KAIST (2023)
- Top Reviewer of NeurIPS 2023
- Best Paper Award, ICML 2023 Workshop on Computational Biology (2023)
- KAIST Excellence in Teaching Award of Year 2022, KAIST (2023)
- Best Teaching Award, ISE KAIST (2022)
- ICDM 2018 Travel Award (2018)
- Award of excellence, Microsoft Research Asia Internship Program, Beijing, China (2017)
- Naver Ph.D Fellowship (2016)
- Top 1.1% in RecSys Challenge (2015)

### Selected Talks
- <b>Learning on Graph and its Application to Biomedical Data</b> [[Slide]](https://kaist-dsail.github.io/files/LOG2024.pdf){:target="_blank"} @ 
<a href="https://aiassociation.kr/Conference/ConferenceView.asp?AC=0&CODE=CC20240101&CpPage=231#CONF" target="_blank">2024 한국인공지능학회 동계단기강좌</a>
- <b>그래프 신경망 기반 화학/소재분야 연구 동향 (Out-of-Distribution 문제를 중심으로)</b> <a href="https://kaist-dsail.github.io/files/SAIT2023.pdf" target="_blank">[Slide]</a> @ 삼성전자 종합기술원, 삼성전자 DS
- <b>Universal User Representation Learning based on Continual Learning</b> <a href="https://kaist-dsail.github.io/files/NAVER_Techtalk2023.pdf" target="_blank">[Slide]</a> @ NAVER Techtalk
- <b>그래프 신경망 기반 화학/소재분야 연구 동향</b> <a href="https://kaist-dsail.github.io/files/KCC2023.pdf" target="_blank">[Slide]</a> @ <a href="https://www.kiise.or.kr/conference/main/getContent.do?CC=KCC&CS=2023&PARENT_ID=011500&content_no=1795" target="_blank">KCC 2023</a>, 
<a href="https://www.materic.or.kr/v2/mchannel/view.asp?id=6269&type=webinar" target="_blank">메릭웨비나</a> 
- <b>Representation Learning on Graphs</b> [[Slide]](https://kaist-dsail.github.io/files/GRL.pdf){:target="_blank"} @ IBS Data Science Group
- <b>Recent Advancement in Machine Learning on Graph 2</b> [[Slide]](https://kaist-dsail.github.io/files/MLGraph2022.pdf){:target="_blank"} @ 
<a href="https://sites.google.com/view/dbsummerschool2022" target="_blank">2022 데이터베이스 소사이어티 여름학교</a>
- <b>Recent Advancement in Machine Learning on Graph 1</b> [[Slide]](https://kaist-dsail.github.io/files/MLGraph2021.pdf){:target="_blank"} @ 
<a href="http://aiassociation.kr/Conference/ConferenceView.asp?AC=0&CODE=CC20210101&CpPage=104#CONF" target="_blank">2021 한국인공지능학회 동계단기강좌</a>,
KRICT,
<a href="https://cse.postech.ac.kr/recent-advances-in-machine-learning-on-graphs/?pageds=3&p_id=80&k=&c= " target="_blank">POSTECH CSE</a>,
<a href="https://cs.sogang.ac.kr/front/cmsboardview.do?currentPage=1&searchField=D.TITLE&searchValue=%EC%84%B8%EB%AF%B8%EB%82%98&searchLowItem=ALL&bbsConfigFK=1905&siteId=cs&pkid=868035" target="_blank">Sogang CSE</a>,
<a href="http://kiie.org/wp/2021a/online.asp" target="_blank">2021 대한산업공학회 춘계학술대회</a>,
ETRI,
NewDB,
<a href="https://data.seoultech.ac.kr/notice/bbs/?do=view&profboardidx=0&bnum=57140&bidx=511932&cate=7&allboard=false&nowpage=1" target="_blank">SeoulTech Data Science</a>,
APCTP,
<a href="http://www.bigcomputing.org/tutorials.html" target="_blank">IEEE BigComp 2022 Tutorial</a>
- <b>Graph-based Multi-aspect User Behavior Analysis</b> @ 
<a href="https://www.kiise.or.kr/conference/main/getContent.do?CC=kcc&CS=2021&content_no=1350&PARENT_ID=011400" target="_blank">KCC</a>,
Korea Military Academy,
<a href="https://event.dbsj.org/kjdb2021/index.html" target="_blank">KJDB</a>


### Academic Services
#### Conference Program Committee/Reviewer
- Regular PC Member/Reviewer in KDD, NeurIPS, ICLR, ICML, AAAI, WWW, SIGIR, WSDM, IJCAI, CIKM, LoG, ECML-PKDD, BigData, etc
- Area Chair in KDD, ICLR, NeurIPS, ICML (Since 2024)
- Area chair in ICML 2024 AI4Science Workshop, NeurIPS 2023 AI4Science Workshop

<!-- - ACM SIGKDD Conference on Knowledge Discovery and Data Mining (KDD) [2022-present]
- The Web Conference (WWW) [2020-present]
- AAAI Conference on Artificial Intelligence (AAAI), [2021-present]
- Conference on Neural Information Processing Systemss (NeurIPS) [2022-present]
- International Conference on Machine Learning (ICML) [2023-present]
- The International Conference on Learning Representations (ICLR), 2022
- ACM International Conference on Research and Development in Information Retrieval (SIGIR) [2023-present]
- ACM International Web Search and Data Mining Conference (WSDM) [2023-present]
- International Joint Conference on Artificial Intelligence (IJCAI) [2023-present]
- ACM International Conference on Information and Knowledge Management (CIKM) [2023-present]
- International ACM SIGIR Conference on Information Retrieval in the Asia Pacific (SIGIR-AP) [2023-present]
- Learning on Graphs Conference (LoG) [2022-present]
- The Web Conference (WWW) Poster Track, 2020
- ACM International Conference on Information and Knowledge Management (CIKM) Short Paper Track, 2020
- IEEE International Conference on Big Data (BigData) [2020-2023]
- ECML-PKDD Research Track [2023-present]
- ECML-PKDD Applied Data Science Track and Demo Track [2020-2021]
- International Conference on Database Systems for Advanced Applications (DASFAA), 2021
- International Conference on Big Data and Smart Computing (BigComp) 2023
- International Conference on Internet and Web Applications and Services (ICIW) [2017-2018]
- Graph Learning @ TheWebConf, 2022
- International Joint Conference on Artificial Intelligence (IJCAI) - Special Track on AI for Good, 2022


#### Journal Reviewer
- ACM Transactions on Knowledge Discovery from Data (TKDD)
- IEEE Transactions on Neural Networks and Learning Systems (TNNLS)
- ACM Transactions on Knowledge and Data Engineering (TKDE)
- ACM Transactions on Information Systems (TOIS)
- ACM Interactive, Mobile, Wearable and Ubiquitous Technologies (IMWUT)
- ACM Transactions on Intelligent Systems and Technology (TIST)
- Journal of Computational Science, Elsevier
- Physica A: Statistical Mechanics and its Applications, Elsevier
- ISA Transactions, Elsevier
- Journal of King Saud University, Elsevier
- Reliability Engineering & System Safety, Elsevier
- Applied Soft Computing, Elsevier
- Data & Knowledge Engineering, Elsevier
- Pattern Recognition, Elsevier
- Information Sciences, Elsevier
- Knowledge-Based Systems, Elsevier
- Expert Systems with Applications, Elsevier
- ISA Transactions, Elsevier
- Computational and Structural Biotechnology Journal, Elsevier
- Data Mining and Knowledge Discovery, Springer
- Frontiers of Computer Science, Springer
- Transactions on Asian and Low-Resource Language Information Processing, ACM
- Applied Intelligence (APIN), Springer
- An International Journal on Advances of Computer Science for Geographic Information Systems (GeoInformatica), Springer
- PLOS ONE, Public Library of Science
- IEEE Access
- Concurrency and Computation: Practice and Experience, John Wiley and Sons Ltd
- Applied Computational Intelligence and Soft Computing, Hindawi
- Mathematical Problems in Engineering, Hindawi
- Wireless Communications and Mobile Computing, Hindawi
- Mathematics, MDPI
- Electronics, MDPI
- Applied Sciences, MDPI
- Information, MDPI
- Entropy, MDPI
 --><!-- 
#### Editorial Boards
- Frontiers in Artificial Intelligence [(Graph representation learning: Methods and Applications)](https://www.frontiersin.org/research-topics/22665/graph-representation-learning-methods-and-applications#overview){:target="_blank"}
- Frontiers in Big Data -->

#### Event Organizations
- General Chair, The ACM International Conference on Information and Knowledge Management (CIKM) [2025]
- Proceedings Chair, The ACM International Conference on Information and Knowledge Management (CIKM) [2023]

<!-- #### Event Organizations -->

<!-- ### Teaching
- POSTECH CSED312: Operating System
  + Teaching Assistant (Fall 2016)
- POSTECH CSED352: Data Communications
  + Teaching Assistant (Fall 2014)
 -->









