.class public Lcom/mycompany/app/list/book/ListBookPdf;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookPdf$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public static p(Lcom/mycompany/app/list/book/ListBookPdf;Ljava/util/ArrayList;Ljava/lang/String;III)V
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
    sget v0, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 51
    .line 52
    :cond_1
    iget v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 53
    .line 54
    mul-int/lit8 v0, v0, 0xa

    .line 55
    .line 56
    iget v1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 57
    .line 58
    add-int/2addr v0, v1

    .line 59
    int-to-long v0, v0

    .line 60
    iput-wide v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 61
    .line 62
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

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
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookPdf;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 5
    .line 6
    const-wide/16 p2, -0x1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, p2, p3, v0}, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookPdf;JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookPdf;->a:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookPdf;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookPdf;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookPdf;->e:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookPdf;JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf;->a:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookPdf;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookPdf;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookPdf;->a:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookPdf;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    invoke-direct {p2, p0, v0, v1, p1}, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookPdf;JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookPdf;->a:Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookPdf;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf;->e:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
