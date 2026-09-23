.class Lcom/mycompany/app/web/WebVideoPip$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip$4$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip$4$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$4$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$4$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$4$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$4$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$4$1;->c:Lcom/mycompany/app/web/WebVideoPip$4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$4;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoPip;->q:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->i:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iput-wide v2, v0, Lcom/mycompany/app/web/WebVideoPip;->l:J

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->i:Lcom/mycompany/app/view/MyCoverView;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->i:Lcom/mycompany/app/view/MyCoverView;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/web/WebVideoPip$16;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoPip$16;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v3, 0x1388

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->c:Lcom/mycompany/app/main/MainActivity;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebVideoPip$5;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoPip$5;-><init>(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
