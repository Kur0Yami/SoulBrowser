.class Lcom/mycompany/app/web/WebVideoPip$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip$7$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip$7$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$7$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$7$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$7$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$7$1;->c:Lcom/mycompany/app/web/WebVideoPip$7;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip$7;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 6
    .line 7
    iget v2, v1, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v2, "(function(){if(window.sbPlay)sbPlay();})();"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$7;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$7$1$1$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoPip$7$1$1$1;-><init>(Lcom/mycompany/app/web/WebVideoPip$7$1$1;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x3e8

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
