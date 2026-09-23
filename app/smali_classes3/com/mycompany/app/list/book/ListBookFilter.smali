.class public Lcom/mycompany/app/list/book/ListBookFilter;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookFilter$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public static p(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefList;->u0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 10
    .line 11
    return-void
.end method

.method public final i(ZZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookFilter;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 5
    .line 6
    const-wide/16 p2, -0x1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, p2, p3, v0}, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookFilter;JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookFilter;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookFilter;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookFilter;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookFilter;->e:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookFilter;JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k(JZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookFilter;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookFilter;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookFilter;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookFilter;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    invoke-direct {p2, p0, v0, v1, p1}, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookFilter;JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookFilter;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookFilter;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter;->e:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
