# unset_proxy.sh
unset http_proxy
unset https_proxy
unset all_proxy
unset HTTP_PROXY
unset HTTPS_PROXY

git config --global --unset http.proxy  
git config --global --unset https.proxy
