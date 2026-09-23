.class public Lcom/mycompany/app/pref/PrefSync;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefSync"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefSync;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/pref/PrefSync;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefSync;->i:Ljava/lang/String;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    const-class v3, Lcom/mycompany/app/pref/PrefSync;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/mycompany/app/pref/PrefSync;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/pref/PrefSync;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

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
    const-class v1, Lcom/mycompany/app/pref/PrefSync;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

    .line 64
    .line 65
    const-string v3, "PrefSync"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->X:Lcom/mycompany/app/pref/PrefSync;

    .line 92
    .line 93
    return-object p0
.end method

.method public static s(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

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
    const-string p1, "mSplash"

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sput-boolean p1, Lcom/mycompany/app/pref/PrefSync;->j:Z

    .line 19
    .line 20
    const-string p1, "mSecretMode"

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->d(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sput-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 28
    .line 29
    const-string p1, "mNormalIndex"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sput p1, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 36
    .line 37
    const-string p1, "mSecretIndex"

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;->f(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    sput p0, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 44
    .line 45
    sget p1, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 46
    .line 47
    sput p1, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 48
    .line 49
    sput p0, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 50
    .line 51
    const-string p0, "PrefSync"

    .line 52
    .line 53
    sput-object p0, Lcom/mycompany/app/pref/PrefSync;->i:Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 20
    .line 21
    sput v0, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 22
    .line 23
    const-string v1, "mSecretIndex"

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 29
    .line 30
    .line 31
    return-void
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
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

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
    sget v0, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    sput v1, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 19
    .line 20
    const-string v0, "mNormalIndex"

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    sput v1, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 32
    .line 33
    const-string v0, "mSecretIndex"

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    const-string v0, "mSecretMode"

    .line 39
    .line 40
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 8
    .line 9
    sget v1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    .line 31
    sput v1, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 32
    .line 33
    const-string v0, "mNormalIndex"

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    sget v0, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 39
    .line 40
    sget v1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 41
    .line 42
    if-eq v0, v1, :cond_4

    .line 43
    .line 44
    sput v1, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 45
    .line 46
    const-string v0, "mSecretIndex"

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
