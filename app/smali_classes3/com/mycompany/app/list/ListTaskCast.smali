.class public Lcom/mycompany/app/list/ListTaskCast;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/ListTaskCast$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public static p(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x2e

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 10
    .line 11
    return-void
.end method

.method public final h(Ljava/util/List;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/ListTaskCast;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v5, p1

    .line 10
    move v3, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/list/ListTaskCast$ListTask;-><init>(Lcom/mycompany/app/list/ListTaskCast;ZZLjava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, v1, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 15
    .line 16
    iget-object p1, v1, Lcom/mycompany/app/list/ListTaskCast;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final i(ZZZ)V
    .locals 6

    .line 1
    iput-boolean p3, p0, Lcom/mycompany/app/list/ListTaskCast;->d:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/list/ListTaskCast;->a()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/list/ListTaskCast$ListTask;-><init>(Lcom/mycompany/app/list/ListTaskCast;ZZLjava/lang/String;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 17
    .line 18
    iget-object p1, v1, Lcom/mycompany/app/list/ListTaskCast;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/ListTaskCast;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCast;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCast;->e:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/list/ListTaskCast;->f:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v2, p0

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/list/ListTaskCast$ListTask;-><init>(Lcom/mycompany/app/list/ListTaskCast;ZZLjava/lang/String;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v2, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 22
    .line 23
    iget-object p1, v2, Lcom/mycompany/app/list/ListTaskCast;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/ListTaskCast;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v4, p1

    .line 10
    move v2, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/list/ListTaskCast$ListTask;-><init>(Lcom/mycompany/app/list/ListTaskCast;ZZLjava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, v1, Lcom/mycompany/app/list/ListTaskCast;->c:Lcom/mycompany/app/list/ListTaskCast$ListTask;

    .line 15
    .line 16
    iget-object p1, v1, Lcom/mycompany/app/list/ListTaskCast;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCast;->e:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCast;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
