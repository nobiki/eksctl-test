  # --name=obk-test \          #クラスタ名
  # --region=ap-northeast-1 \  #リージョン
  # --version=1.18 \           #バージョン
  # --node-type=t3.medium \    #Workerインスタンスタイプ
  # --nodes=2 \                #Workerノード数
  # --nodes-min=2 \            #Workerオートスケール最小
  # --nodes-max=2 \            #Workerオートスケール最大
  # --node-volume-size=20      #Workerディスクサイズ

eksctl create cluster \
    --vpc-cidr 10.0.0.0/16 \
    --vpc-nat-mode HighlyAvailable \
    --region ${AWS_REGION} --zones ${AWS_REGION}a,${AWS_REGION}c \
    --name obk-eks-handson \
    --version ${K8S_VER} \
    --nodegroup-name ng-sample \
    --node-type t3.small \
    --nodes 3 \
    --nodes-min 2 \
    --nodes-max 4
