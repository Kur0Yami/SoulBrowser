.class public Lcom/mycompany/app/pref/PrefPath;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:Z

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefPath"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPath;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/mycompany/app/pref/PrefPath;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefPath;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefPath;->i:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefPath;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefPath;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefPath;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 43
    .line 44
    move p1, v2

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    monitor-exit v3

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_3
    iget-object v1, v1, Lcom/mycompany/app/pref/PrefCore;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    const-class v1, Lcom/mycompany/app/pref/PrefPath;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 64
    .line 65
    const-string v3, "PrefPath"

    .line 66
    .line 67
    invoke-virtual {p1, p0, v3}, Lcom/mycompany/app/pref/PrefCore;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    move p1, v2

    .line 72
    goto :goto_2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    throw p0

    .line 76
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 77
    .line 78
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->j()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    :cond_5
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->S:Lcom/mycompany/app/pref/PrefPath;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefPath;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPath;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const-string p1, "mAlbumPath"

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->j:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "mCmpPath"

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->k:Ljava/lang/String;

    .line 28
    .line 29
    const-string p1, "mPdfPath"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->l:Ljava/lang/String;

    .line 36
    .line 37
    const-string p1, "mSdkVer2"

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sput p1, Lcom/mycompany/app/pref/PrefPath;->m:I

    .line 45
    .line 46
    const-string p1, "mCheckPath"

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPath;->n:Z

    .line 54
    .line 55
    const-string p1, "mPathDown"

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->o:Ljava/lang/String;

    .line 62
    .line 63
    const-string p1, "mPathAlbum"

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->p:Ljava/lang/String;

    .line 70
    .line 71
    const-string p1, "mDocUri"

    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->q:Ljava/lang/String;

    .line 78
    .line 79
    const-string p1, "mUriDown"

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 86
    .line 87
    const-string p1, "mScanAlbum"

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 94
    .line 95
    const-string p1, "mScanPdf"

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 102
    .line 103
    const-string p1, "mScanZip"

    .line 104
    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 110
    .line 111
    const-string p1, "mScanFont"

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->v:Ljava/lang/String;

    .line 118
    .line 119
    const-string p1, "mScanImage"

    .line 120
    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->w:Ljava/lang/String;

    .line 126
    .line 127
    const-string p1, "mScanVideo"

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->x:Ljava/lang/String;

    .line 134
    .line 135
    const-string p1, "mScanMusic"

    .line 136
    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    sput-object p0, Lcom/mycompany/app/pref/PrefPath;->y:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    sput-object p0, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 148
    .line 149
    const-string p0, "PrefPath"

    .line 150
    .line 151
    sput-object p0, Lcom/mycompany/app/pref/PrefPath;->i:Ljava/lang/String;

    .line 152
    .line 153
    return-void
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefPath;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPath;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string v1, "mUriDown"

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p0}, Lcom/mycompany/app/main/MainUri;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/main/MainUri;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefPath;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPath;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    :goto_0
    return-void

    .line 12
    :cond_1
    const-string v0, "mSdkVer2"

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefPath;->m:I

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "mCheckPath"

    .line 20
    .line 21
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPath;->n:Z

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const-string v0, "mPathDown"

    .line 27
    .line 28
    sget-object v1, Lcom/mycompany/app/pref/PrefPath;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "mPathAlbum"

    .line 34
    .line 35
    sget-object v1, Lcom/mycompany/app/pref/PrefPath;->p:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "mDocUri"

    .line 41
    .line 42
    sget-object v1, Lcom/mycompany/app/pref/PrefPath;->q:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
