.class public Lcom/mycompany/app/list/ListTaskCmp;
.super Lcom/mycompany/app/list/ListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/ListTaskCmp$ListTask;,
        Lcom/mycompany/app/list/ListTaskCmp$SaveTask;
    }
.end annotation


# static fields
.field public static k:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

.field public c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

.field public d:Lcom/mycompany/app/list/ListScan;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/mycompany/app/list/ListTaskCmp$SaveTask;

.field public i:Z

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/list/ListTaskCmp;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/list/ListTaskCmp;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 7
    .line 8
    return-void
.end method

.method public static p(Lcom/mycompany/app/list/ListTaskCmp;Ljava/util/ArrayList;Ljava/lang/String;III)V
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

.method public static r(Lcom/mycompany/app/main/MainUri$UriItem;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 27
    .line 28
    iput-wide v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 31
    .line 32
    iput-wide v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    iput p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 36
    .line 37
    const p0, -0x70708

    .line 38
    .line 39
    .line 40
    iput p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 41
    .line 42
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_black_24:I

    .line 43
    .line 44
    iput p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 45
    .line 46
    sget p0, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    if-ne p0, v2, :cond_1

    .line 50
    .line 51
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->X0(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iput-object p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 56
    .line 57
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/list/ListTaskCmp;->s(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public static s(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x4

    .line 36
    if-ne v0, v2, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->X0(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 67
    .line 68
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 85
    .line 86
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/16 v2, 0x2e

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/4 v3, -0x1

    .line 99
    if-eq v2, v3, :cond_4

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iput-object v3, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 107
    .line 108
    add-int/2addr v2, v1

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 120
    .line 121
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/list/ListTaskCmp;->d:Lcom/mycompany/app/list/ListScan;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v3, v2, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iput-boolean v1, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 20
    .line 21
    :cond_1
    iput-object v0, v2, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 22
    .line 23
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->d:Lcom/mycompany/app/list/ListScan;

    .line 24
    .line 25
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->d:Lcom/mycompany/app/list/ListScan;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public final g(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->e:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->f:Z

    .line 5
    .line 6
    sput-boolean v0, Lcom/mycompany/app/list/ListTaskCmp;->k:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/mycompany/app/list/ListTaskCmp;->e:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->d:Lcom/mycompany/app/list/ListScan;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v3, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iput-boolean v1, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 26
    .line 27
    :cond_1
    iput-object v2, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 28
    .line 29
    :cond_2
    new-instance v0, Lcom/mycompany/app/list/ListScan;

    .line 30
    .line 31
    new-instance v3, Lcom/mycompany/app/list/ListTaskCmp$1;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/mycompany/app/list/ListTaskCmp$1;-><init>(Lcom/mycompany/app/list/ListTaskCmp;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/mycompany/app/list/ListTaskCmp;->a:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    invoke-direct {v0, v4, v5, p1, v3}, Lcom/mycompany/app/list/ListScan;-><init>(Landroid/content/Context;IZLcom/mycompany/app/list/ListScan$ListScanListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->d:Lcom/mycompany/app/list/ListScan;

    .line 43
    .line 44
    iget-object p1, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iput-boolean v1, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 49
    .line 50
    :cond_3
    iput-object v2, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 51
    .line 52
    new-instance p1, Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Lcom/mycompany/app/list/ListScan$ScanTask;-><init>(Lcom/mycompany/app/list/ListScan;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final h(Ljava/util/List;Z)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v6, p1

    .line 7
    move v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/list/ListTaskCmp;->q(ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i(ZZZ)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/mycompany/app/list/ListTaskCmp;->e:Z

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/mycompany/app/list/ListTaskCmp;->f:Z

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/mycompany/app/list/ListTaskCmp;->g:Z

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v0, p0

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/list/ListTaskCmp;->q(ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/list/ListTaskCmp;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->f:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->g:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->i:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/list/ListTaskCmp;->j:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v2, p0

    .line 25
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/list/ListTaskCmp$ListTask;-><init>(Lcom/mycompany/app/list/ListTaskCmp;ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v2, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 29
    .line 30
    iget-object p1, v2, Lcom/mycompany/app/list/ListTaskCmp;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final l(Ljava/lang/String;ZZ)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v3, p1

    .line 6
    move v1, p2

    .line 7
    move v4, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/list/ListTaskCmp;->q(ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->i:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/list/ListTaskCmp;->j:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public final q(ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/mycompany/app/list/ListTaskCmp;->k:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/list/ListTaskCmp;->a()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 8
    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move v6, p4

    .line 14
    move-object v7, p5

    .line 15
    move-object v8, p6

    .line 16
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/list/ListTaskCmp$ListTask;-><init>(Lcom/mycompany/app/list/ListTaskCmp;ZZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v2, Lcom/mycompany/app/list/ListTaskCmp;->c:Lcom/mycompany/app/list/ListTaskCmp$ListTask;

    .line 20
    .line 21
    iget-object p1, v2, Lcom/mycompany/app/list/ListTaskCmp;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
