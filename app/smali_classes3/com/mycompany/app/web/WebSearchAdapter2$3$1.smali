.class Lcom/mycompany/app/web/WebSearchAdapter2$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/web/WebSearchAdapter2$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter2$3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$3$1;->f:Lcom/mycompany/app/web/WebSearchAdapter2$3;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebSearchAdapter2$3$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2$3$1;->f:Lcom/mycompany/app/web/WebSearchAdapter2$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSearchAdapter2$3;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$3$1;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebSearchAdapter2;->d(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    iget-object v4, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, v4, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    iput-boolean v5, v4, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 46
    .line 47
    iget-wide v4, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 48
    .line 49
    invoke-static {v3, v4, v5}, Lcom/mycompany/app/db/book/DbBookRecent;->f(Landroid/content/Context;J)V

    .line 50
    .line 51
    .line 52
    iget v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->g:I

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v1}, Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->v:Landroid/os/Handler;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter2$3$1$1;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebSearchAdapter2$3$1$1;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2$3$1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    :cond_4
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 78
    .line 79
    return-void
.end method
