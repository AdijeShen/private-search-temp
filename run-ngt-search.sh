go run ngt-search/ngt-search.go -n 1000000 -d 128 -m 32 -k 10 -q 1000 -input ./SIFT-dataset/sift_base.fvecs -query ./SIFT-dataset/sift_query.fvecs \
                         -output ./private-search-result.txt -report ./private-search-report.txt -gnd ./SIFT-dataset/sift_groundtruth.ivecs


#go run ngt-search/ngt-search.go -n 3201821 -d 192 -m 32 -k 100 -q 1000 -input ./msmarco-dataset/msmarco_embeddings.npy -query ./msmarco-dataset/msmarco_queries.npy \
#                         -output ./msmarco-dataset/ngt-output.txt -report ./msmarco-dataset/ngt-report.txt 

#python testing_quality.py -input ./msmarco-dataset/ngt-output.txt  -output ./msmarco-dataset/ngt-output-docid.txt -report ./msmarco-dataset/ngt-report.txt 
