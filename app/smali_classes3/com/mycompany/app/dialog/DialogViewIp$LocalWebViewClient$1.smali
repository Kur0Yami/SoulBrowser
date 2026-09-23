.class Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "function myIp(doc){if(!doc)return false;var ele=doc.querySelector(\"input[type=\'text\']\");if(!ele)return false;var el2=doc.querySelector(\"code[class*=\'raw-data\']\");if(!el2)return false;var val=null;var dat=null;if(window.ipload==0){window.ipload=1;}else{val=ele.value;dat=el2.innerHTML;}android.onIpDet(val,dat);return true;}(function(){window.ipload=0;myIp(document);if(!document.documentElement||window.sb_ip_osv)return;window.sb_ip_osv=new MutationObserver(e=>{for(var i=0;i<e.length;i++){var tgt=e[i].target;if(myIp(tgt)){break;}if(tgt.tagName==\'BODY\')break;}}),window.sb_ip_osv.observe(document.documentElement,{childList:!0,subtree:!0});})();"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
