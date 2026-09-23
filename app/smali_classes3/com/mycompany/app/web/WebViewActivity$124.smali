.class Lcom/mycompany/app/web/WebViewActivity$124;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$124;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$124;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->G:Z

    if-eqz v2, :cond_t7

    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->S5(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_t7

    if-eqz v1, :cond_t7

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setBackPlay(Z)V

    const-string v3, "(function(){try{Object.defineProperty(document,'hidden',{configurable:true,get:function(){return false;}});Object.defineProperty(document,'visibilityState',{configurable:true,get:function(){return 'visible';}});}catch(e){}if(!window.sb_bp){window.sb_bp=1;document.addEventListener('visibilitychange',function(e){try{e.stopImmediatePropagation();}catch(x){}},true);}})();"

    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :cond_after_t7

    :cond_t7
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->T7(Landroid/webkit/WebView;)V

    :cond_after_t7
    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$124$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$124$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$124;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
