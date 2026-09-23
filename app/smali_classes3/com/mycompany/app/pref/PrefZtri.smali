.class public Lcom/mycompany/app/pref/PrefZtri;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:F

.field public static B:F

.field public static C:Z

.field public static D:F

.field public static E:F

.field public static F:F

.field public static G:F

.field public static H:Z

.field public static I:F

.field public static J:F

.field public static K:F

.field public static L:F

.field public static M:Z

.field public static N:F

.field public static O:F

.field public static P:F

.field public static Q:F

.field public static R:F

.field public static S:F

.field public static T:F

.field public static U:F

.field public static V:F

.field public static W:F

.field public static X:F

.field public static Y:F

.field public static Z:F

.field public static a0:F

.field public static b0:F

.field public static c0:F

.field public static d0:F

.field public static e0:F

.field public static f0:F

.field public static g0:F

.field public static h0:Z

.field public static i:Ljava/lang/String;

.field public static i0:Z

.field public static j:Z

.field public static j0:I

.field public static k:Z

.field public static k0:Z

.field public static l:F

.field public static l0:I

.field public static m:F

.field public static m0:I

.field public static n:F

.field public static n0:Z

.field public static o:F

.field public static o0:Z

.field public static p:I

.field public static p0:Z

.field public static q:F

.field public static q0:Z

.field public static r:F

.field public static r0:Z

.field public static s:F

.field public static s0:Z

.field public static t:F

.field public static t0:Z

.field public static u:F

.field public static v:F

.field public static w:F

.field public static x:F

.field public static y:F

.field public static z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefZtri"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;
    .locals 5

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
    new-instance p0, Lcom/mycompany/app/pref/PrefZtri;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/mycompany/app/pref/PrefZtri;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v1, Lcom/mycompany/app/pref/PrefZtri;->i:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    const-class v4, Lcom/mycompany/app/pref/PrefZtri;

    .line 26
    .line 27
    monitor-enter v4

    .line 28
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/pref/PrefZtri;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/pref/PrefZtri;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    monitor-exit v4

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_2
    iget-object v2, v2, Lcom/mycompany/app/pref/PrefCore;->d:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    const-class v2, Lcom/mycompany/app/pref/PrefZtri;

    .line 56
    .line 57
    monitor-enter v2

    .line 58
    :try_start_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 59
    .line 60
    const-string v4, "PrefZtri"

    .line 61
    .line 62
    invoke-virtual {v1, p0, v4}, Lcom/mycompany/app/pref/PrefCore;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v2

    .line 66
    move v1, v3

    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    throw p0

    .line 71
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->j()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_5

    .line 80
    .line 81
    :cond_4
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->c0:Lcom/mycompany/app/pref/PrefZtri;

    .line 87
    .line 88
    return-object p0
.end method

.method public static s(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

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
    const-string v0, "mCastLtX"

    .line 12
    .line 13
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->R:F

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    const-string v0, "mCastRtX"

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->S:F

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    const-string v0, "mCastUpY"

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->T:F

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    const-string v0, "mCastDnY"

    .line 33
    .line 34
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->U:F

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

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
    const-string v0, "mDownLtX"

    .line 12
    .line 13
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->y:F

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    const-string v0, "mDownRtX"

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->z:F

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    const-string v0, "mDownUpY"

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->A:F

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    const-string v0, "mDownDnY"

    .line 33
    .line 34
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->B:F

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 40
    .line 41
    .line 42
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
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

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
    const-string v0, "mYpipLtX"

    .line 12
    .line 13
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->u:F

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    const-string v0, "mYpipRtX"

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->v:F

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    const-string v0, "mYpipUpY"

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->w:F

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    const-string v0, "mYpipDnY"

    .line 33
    .line 34
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->x:F

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
