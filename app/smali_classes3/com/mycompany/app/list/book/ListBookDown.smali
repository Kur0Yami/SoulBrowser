.class public Lcom/mycompany/app/list/book/ListBookDown;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/book/ListBookDown$ListTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public static p(Lcom/mycompany/app/list/book/ListBookDown;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-ne p3, v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget p3, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p3, v0, :cond_3

    .line 17
    .line 18
    sget-object p1, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 19
    .line 20
    array-length p1, p1

    .line 21
    add-int/lit8 p3, p1, -0x1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-ge v0, p1, :cond_2

    .line 25
    .line 26
    sget-object v1, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 27
    .line 28
    aget v1, v1, v0

    .line 29
    .line 30
    if-ne p2, v1, :cond_1

    .line 31
    .line 32
    move p3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->k0:[I

    .line 38
    .line 39
    array-length p2, p1

    .line 40
    rem-int/2addr p3, p2

    .line 41
    aget p1, p1, p3

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    return-object p1

    .line 49
    :cond_4
    :goto_2
    if-nez p0, :cond_5

    .line 50
    .line 51
    const-string p0, "Download"

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_5
    sget p1, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static q(Lcom/mycompany/app/list/book/ListBookDown;Ljava/util/ArrayList;Ljava/lang/String;III)V
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

.method public static r(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_3

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const/4 v1, 0x3

    .line 45
    if-ne v0, v1, :cond_4

    .line 46
    .line 47
    iget v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 48
    .line 49
    if-ne v0, v3, :cond_2

    .line 50
    .line 51
    const-string v0, "7"

    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, ""

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    const-string v0, "44"

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 84
    .line 85
    :cond_4
    :goto_2
    sget v0, Lcom/mycompany/app/pref/PrefList;->b1:I

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 98
    .line 99
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 106
    .line 107
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookDown;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/mycompany/app/list/book/ListBookDown$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookDown;ZJ)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookDown;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookDown;->e:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/mycompany/app/list/book/ListBookDown$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookDown;ZJ)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(JZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookDown;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 5
    .line 6
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/mycompany/app/list/book/ListBookDown$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookDown;ZJ)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/book/ListBookDown;->a()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/mycompany/app/list/book/ListBookDown$ListTask;-><init>(Lcom/mycompany/app/list/book/ListBookDown;ZJ)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown;->e:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method
