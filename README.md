#离线部署kubernetes脚本

1, kismatic： 基于开源的kismatic脚本进行修改与扩充，配置了离线部署kubernetes，增加了自定义calico3.0的支持，ntp安装，kong,istio,nfs,openebs,logging,monitor等插件模块安装

2, kubespray：基于开源的kismatic脚本进行修改与扩充，配置了离线部署kubernetes;

#kubernetes周边插件模块

addons: kong,istio,nfs,openebs,logging,monitor等插件模块ansible 离线安装脚本

#portus docker镜像仓库

使用systemd管理 docker-compose部署的portus docker镜像仓库

#chartmuseum charts仓库

使用systemd管理 chartmuseum charts仓库服务
