# PowerShell
#------------------------------------------------
# ���������Ľ����ն�
# bin/terminal.ps1 
#------------------------------------------------


$CONTAINER_NAME = "trojan"
$CONTAINER_ID = (docker ps -aq --filter name="$CONTAINER_NAME")
if([String]::IsNullOrEmpty($CONTAINER_ID)) {
    Write-Host "[$CONTAINER_NAME] ����û������ ..."

} else {
    docker exec -it -u root $CONTAINER_ID bash
}
