.class Lcom/mycompany/app/web/WebVideoPip$8;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$8;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$8;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/mycompany/app/web/WebVideoPip;->w:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    iput-wide v3, v0, Lcom/mycompany/app/web/WebVideoPip;->w:J

    .line 8
    .line 9
    cmp-long v3, v1, v3

    .line 10
    .line 11
    if-gtz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "(function(){if(window.sbSeekTo)sbSeekTo("

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ");})();"

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$8$1;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoPip$8$1;-><init>(Lcom/mycompany/app/web/WebVideoPip$8;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v2, 0x64

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
