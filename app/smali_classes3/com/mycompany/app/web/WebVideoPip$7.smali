.class Lcom/mycompany/app/web/WebVideoPip$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$7;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoPip$7;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, v1, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "(function(){if(window.sbLoop)sbLoop("

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ");})();"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebVideoPip$7$1;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoPip$7$1;-><init>(Lcom/mycompany/app/web/WebVideoPip$7;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v2, 0x64

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method
