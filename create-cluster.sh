eksctl create cluster \
  --name=obk-test \
  --region=ap-northeast-1 \
  --version=1.18 \
  --node-type=t3.medium \
  --nodes=2 \
  --nodes-min=2 \
  --nodes-max=2 \
  --node-volume-size=20

  # --name=obk-test-cluster \  #クラスタ名
  # --region=ap-northeast-1 \  #リージョン
  # --version=1.18 \           #バージョン
  # --node-type=t3.medium \    #Workerインスタンスタイプ
  # --nodes=2 \                #Workerノード数
  # --nodes-min=2 \            #Workerオートスケール最小
  # --nodes-max=2 \            #Workerオートスケール最大
  # --node-volume-size=20      #Workerディスクサイズ
