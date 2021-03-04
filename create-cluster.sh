  # --name=obk-test \          #クラスタ名
  # --region=ap-northeast-1 \  #リージョン
  # --version=1.18 \           #バージョン
  # --node-type=t3.medium \    #Workerインスタンスタイプ
  # --nodes=2 \                #Workerノード数
  # --nodes-min=2 \            #Workerオートスケール最小
  # --nodes-max=2 \            #Workerオートスケール最大
  # --node-volume-size=20      #Workerディスクサイズ

AWS_REGION=ap-northeast-1
eksctl create cluster \
  --name=obk-ekshandson \
  --version ${K8S_VER} \
  --nodes=3 --managed \
  --region ${AWS_REGION} --zones ${AWS_REGION}a,${AWS_REGION}c
