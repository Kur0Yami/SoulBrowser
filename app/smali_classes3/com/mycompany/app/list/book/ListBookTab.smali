.class public Lcom/mycompany/app/list/book/ListBookTab;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookTab$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public static p(Ljava/util/ArrayList;J)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_1
    :goto_0
    if-ge v1, v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->D:J

    .line 27
    .line 28
    cmp-long v3, v3, p1

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 10
    .line 11
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final i(ZZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookTab;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/list/book/ListBookTab$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookTab;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookTab;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookTab;->a()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookTab;->f:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/mycompany/app/list/book/ListBookTab$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookTab;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final k(JZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookTab;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/list/book/ListBookTab$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookTab;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookTab;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookTab;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/list/book/ListBookTab$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookTab;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookTab;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab;->f:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookTab;->e:Z

    .line 3
    .line 4
    return-void
.end method
