.class Lcom/mycompany/app/quick/QuickAdapter$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/quick/QuickAdapter$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter$15;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$15$1;->f:Lcom/mycompany/app/quick/QuickAdapter$15;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/quick/QuickAdapter$15$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$15$1;->f:Lcom/mycompany/app/quick/QuickAdapter$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter$15;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter$15$1;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickAdapter;->H(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdapter;->B:Ljava/util/List;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 30
    .line 31
    iget-wide v4, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 32
    .line 33
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/db/book/DbBookRecent;->f(Landroid/content/Context;J)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-boolean v3, v1, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    new-instance v1, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 58
    .line 59
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/quick/QuickAdapter$15$1$1;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickAdapter$15$1$1;-><init>(Lcom/mycompany/app/quick/QuickAdapter$15$1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    :cond_3
    :goto_0
    iput-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdapter;->D:Z

    .line 71
    .line 72
    return-void
.end method
