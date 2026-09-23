.class Lcom/mycompany/app/web/WebViewActivity$369;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$369;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$369;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->kl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ll:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ml:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/mycompany/app/web/WebViewActivity;->nl:J

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->kl:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->ll:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->ml:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v2, ""

    .line 27
    .line 28
    :goto_0
    if-eqz v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-string v3, ""

    .line 32
    .line 33
    :goto_1
    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v7, "(function(){var url="

    .line 48
    .line 49
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ";var cd="

    .line 56
    .line 57
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ";var mime="

    .line 64
    .line 65
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ";var size="

    .line 72
    .line 73
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ";try{var fname=window.__sbLastDlName||\'\';if(!fname){var links=document.querySelectorAll(\'a[download]\');for(var i=0;i<links.length;i++){if(links[i].href===url){fname=links[i].getAttribute(\'download\')||\'\';break;}}}if(fname&&(!cd||cd.indexOf(\'filename\')<0)){cd=\'attachment; filename=\"\'+String(fname).split(\'\"\').join(\'\\\\\"\')+\'\"\';}if(fname&&mime===\'text/plain\'&&/\\.[A-Za-z0-9]+$/.test(fname)&&!/\\.txt$/i.test(fname)){mime=\'application/octet-stream\';}window.__sbLastDlName=\'\';}catch(e){}function __sbFin(sblnk){var sbblb=document.getElementById(\'sb_down_blob\');if(sbblb){document.body.removeChild(sbblb);}sbblb=document.createElement(\'a\');sbblb.href=sblnk;sbblb.id=\'sb_down_blob\';sbblb.style=\'display:none\';document.body.appendChild(sbblb);android.onBlobDown(sblnk,cd||\'\',mime||\'\',size);}function __sbGo(){var xhr=new XMLHttpRequest();xhr.open(\'GET\',url,true);xhr.responseType=\'blob\';xhr.onload=function(){if(this.status==200||this.status==0){try{__sbFin(URL.createObjectURL(this.response));return;}catch(e){}}android.onBlobDown(url,cd||\'\',mime||\'\',size);};xhr.onerror=function(){android.onBlobDown(url,cd||\'\',mime||\'\',size);};xhr.send();}try{var b=window.__sbBlobs&&window.__sbBlobs[url];if(b){__sbFin(URL.createObjectURL(b));}else{__sbGo();}}catch(e){__sbGo();}})();"

    .line 80
    .line 81
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
