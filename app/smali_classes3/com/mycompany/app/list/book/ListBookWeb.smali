.class public Lcom/mycompany/app/list/book/ListBookWeb;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookWeb$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public static p(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 10
    .line 11
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ZZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookWeb;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3, p1, p2, p2}, Lcom/mycompany/app/list/book/ListBookWeb;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookWeb;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookWeb;->g:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookWeb;->h:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/mycompany/app/list/book/ListBookWeb;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v2, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookWeb;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v2, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 21
    .line 22
    iget-object p1, v2, Lcom/mycompany/app/list/book/ListBookWeb;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final k(JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookWeb;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p3, p1, p2, p2}, Lcom/mycompany/app/list/book/ListBookWeb;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookWeb;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/mycompany/app/list/book/ListBookWeb;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookWeb;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookWeb;->a()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookWeb;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 17
    .line 18
    iget-object p1, v1, Lcom/mycompany/app/list/book/ListBookWeb;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookWeb;->g:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb;->h:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
