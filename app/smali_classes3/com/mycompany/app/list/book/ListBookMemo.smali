.class public Lcom/mycompany/app/list/book/ListBookMemo;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookMemo$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

.field public d:Ljava/util/List;

.field public e:Z

.field public f:Ljava/lang/String;


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 10
    .line 11
    return-void
.end method

.method public final i(ZZZ)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/mycompany/app/list/book/ListBookMemo;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookMemo;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookMemo;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookMemo;->f:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p1, p0, v0, v1, v1}, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookMemo;ZLjava/util/List;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p3, p1, p1, p1}, Lcom/mycompany/app/list/book/ListBookMemo;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, p1, p1}, Lcom/mycompany/app/list/book/ListBookMemo;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookMemo;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 5
    .line 6
    invoke-direct {p2, p0, p1, p3, p4}, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookMemo;ZLjava/util/List;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookMemo;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

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
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookMemo;->e:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
