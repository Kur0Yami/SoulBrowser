.class public Lcom/mycompany/app/list/book/ListBookBlock;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookBlock$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public static p(Lcom/mycompany/app/list/book/ListBookBlock;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->b:Ljava/lang/String;

    .line 19
    .line 20
    iput p3, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 21
    .line 22
    sub-int/2addr p5, p3

    .line 23
    iput p5, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 24
    .line 25
    iput p4, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 26
    .line 27
    if-ne p4, p3, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static q(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefList;->k0:I

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefList;->l0:I

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

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
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookBlock;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 5
    .line 6
    const-wide/16 p2, -0x1

    .line 7
    .line 8
    invoke-direct {p1, p0, p2, p3}, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookBlock;J)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookBlock;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookBlock;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookBlock;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookBlock;->e:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    invoke-direct {p1, p0, v0, v1}, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookBlock;J)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock;->a:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookBlock;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 5
    .line 6
    invoke-direct {p3, p0, p1, p2}, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookBlock;J)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookBlock;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookBlock;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 5
    .line 6
    const-wide/16 p2, -0x1

    .line 7
    .line 8
    invoke-direct {p1, p0, p2, p3}, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookBlock;J)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookBlock;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

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
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookBlock;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock;->e:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
