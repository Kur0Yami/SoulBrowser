.class public Lcom/mycompany/app/pref/PrefEditor;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:F

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:F

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:F

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:F

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:F

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:F

.field public static Z:I

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:I

.field public static l:F

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:F

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:F

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:F

.field public static y:I

.field public static z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefEditor"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(II)I
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 v0, 0x5a

    .line 6
    .line 7
    if-le p1, v0, :cond_1

    .line 8
    .line 9
    move p1, v0

    .line 10
    :cond_1
    :goto_0
    rsub-int/lit8 p1, p1, 0x64

    .line 11
    .line 12
    mul-int/lit16 p1, p1, 0xff

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    const/high16 v0, 0x42c80000    # 100.0f

    .line 16
    .line 17
    div-float/2addr p1, v0

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    shl-int/lit8 p1, p1, 0x18

    .line 23
    .line 24
    const v0, 0xffffff

    .line 25
    .line 26
    .line 27
    and-int/2addr p0, v0

    .line 28
    or-int/2addr p0, p1

    .line 29
    return p0
.end method

.method public static s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefEditor;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/mycompany/app/pref/PrefEditor;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v1, Lcom/mycompany/app/pref/PrefEditor;->i:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    const-class v4, Lcom/mycompany/app/pref/PrefEditor;

    .line 26
    .line 27
    monitor-enter v4

    .line 28
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/pref/PrefEditor;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/pref/PrefEditor;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

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
    const-class v2, Lcom/mycompany/app/pref/PrefEditor;

    .line 56
    .line 57
    monitor-enter v2

    .line 58
    :try_start_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

    .line 59
    .line 60
    const-string v4, "PrefEditor"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->N:Lcom/mycompany/app/pref/PrefEditor;

    .line 87
    .line 88
    return-object p0
.end method
