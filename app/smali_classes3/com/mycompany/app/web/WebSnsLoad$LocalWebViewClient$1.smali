.class Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient$1;->c:Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient$1;->c:Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "(function(){var vds=document.querySelectorAll(\"script[type=\'application/json\']\");var txt=null;if(vds&&(vds.length>0)){for(var i=0;i<vds.length;i++){if(vds[i].innerText.includes(\'.mp4\')){txt=vds[i].innerText;break;}}}android.onStoryData(txt);})();"

    .line 21
    .line 22
    invoke-static {v1, v0, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->r:Z

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/4 v2, 0x1

    .line 36
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->r:Z

    .line 37
    .line 38
    iput v3, v0, Lcom/mycompany/app/web/WebSnsLoad;->s:I

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/web/WebSnsLoad$7;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSnsLoad$7;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v3, 0x190

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    return-void
.end method
