.class Lcom/mycompany/app/list/ListTaskPdf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/list/ListScan$ListScanListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/list/ListTaskPdf;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/ListTaskPdf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/list/ListTaskPdf$1;->a:Lcom/mycompany/app/list/ListTaskPdf;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskPdf$1;->a:Lcom/mycompany/app/list/ListTaskPdf;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    iput-object v7, v0, Lcom/mycompany/app/list/ListTaskPdf;->d:Lcom/mycompany/app/list/ListScan;

    .line 5
    .line 6
    iget-object v8, v0, Lcom/mycompany/app/list/ListTaskPdf;->a:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v8, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v8}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v5, v1, Lcom/mycompany/app/data/DataList;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v8}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v7, v1, Lcom/mycompany/app/data/DataList;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    sget-boolean v1, Lcom/mycompany/app/list/ListTaskPdf;->k:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/list/ListTaskPdf;->q(ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    sput-boolean v1, Lcom/mycompany/app/list/ListTaskPdf;->k:Z

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/list/ListTaskPdf;->h:Lcom/mycompany/app/list/ListTaskPdf$SaveTask;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 53
    .line 54
    :cond_3
    iput-object v7, v0, Lcom/mycompany/app/list/ListTaskPdf;->h:Lcom/mycompany/app/list/ListTaskPdf$SaveTask;

    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/list/ListTaskPdf$SaveTask;

    .line 57
    .line 58
    invoke-direct {v1, v0, v5}, Lcom/mycompany/app/list/ListTaskPdf$SaveTask;-><init>(Lcom/mycompany/app/list/ListTaskPdf;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskPdf;->h:Lcom/mycompany/app/list/ListTaskPdf$SaveTask;

    .line 62
    .line 63
    invoke-virtual {v1, v8}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->b()V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskPdf$1;->a:Lcom/mycompany/app/list/ListTaskPdf;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/list/ListTaskPdf;->d:Lcom/mycompany/app/list/ListScan;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/ListTaskPdf;->a:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v2}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v1, v2, Lcom/mycompany/app/data/DataList;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/list/ListTaskPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->c()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
