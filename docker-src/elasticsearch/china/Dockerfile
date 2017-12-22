FROM elasticsearch:6.1.1.1

# install elasticsearch-analysis-ik
RUN wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.1.1/elasticsearch-analysis-ik-6.1.1.zip -O elasticsearch-analysis-ik.zip
RUN unzip elasticsearch-analysis-ik.zip
RUN mv elasticsearch elasticsearch-analysis-ik
RUN mv elasticsearch-analysis-ik/ plugins/
RUN rm elasticsearch-analysis-ik.zip

# install elasticsearch-analysis-pinyin
RUN wget https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v6.1.1/elasticsearch-analysis-pinyin-6.1.1.zip -O elasticsearch-analysis-pinyin.zip
RUN unzip elasticsearch-analysis-pinyin.zip
RUN mv elasticsearch elasticsearch-analysis-pinyin
RUN mv elasticsearch-analysis-pinyin/ plugins/
RUN rm elasticsearch-analysis-pinyin.zip

# install elasticsearch-analysis-stconvert
RUN wget https://github.com/medcl/elasticsearch-analysis-stconvert/releases/download/v6.1.1/elasticsearch-analysis-stconvert-6.1.1.zip -O elasticsearch-analysis-stconvert.zip
RUN unzip elasticsearch-analysis-stconvert.zip
RUN mv elasticsearch elasticsearch-analysis-stconvert
RUN mv elasticsearch-analysis-stconvert/ plugins/
RUN rm elasticsearch-analysis-stconvert.zip

# install elasticsearch-analysis-mmseg
#RUN wget https://github.com/medcl/elasticsearch-analysis-mmseg/releases/download/v5.5.2/elasticsearch-analysis-mmseg-5.5.2.zip -O elasticsearch-analysis-mmseg.zip
#RUN unzip elasticsearch-analysis-mmseg.zip
#RUN mv elasticsearch elasticsearch-analysis-mmseg
#RUN mv elasticsearch-analysis-mmseg/ plugins/
#RUN rm elasticsearch-analysis-mmseg.zip
