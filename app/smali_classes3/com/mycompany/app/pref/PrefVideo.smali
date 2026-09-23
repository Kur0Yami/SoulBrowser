.class public Lcom/mycompany/app/pref/PrefVideo;
.super Lcom/mycompany/app/pref/PrefCore;
.source "SourceFile"


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:I

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:I

.field public static u:Z

.field public static v:I

.field public static w:I

.field public static x:Z

.field public static y:Z

.field public static z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "PrefVideo"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/pref/PrefCore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefVideo;
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
    new-instance p0, Lcom/mycompany/app/pref/PrefVideo;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/mycompany/app/pref/PrefVideo;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v1, Lcom/mycompany/app/pref/PrefVideo;->i:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    const-class v4, Lcom/mycompany/app/pref/PrefVideo;

    .line 26
    .line 27
    monitor-enter v4

    .line 28
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/pref/PrefVideo;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/pref/PrefVideo;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

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
    const-class v2, Lcom/mycompany/app/pref/PrefVideo;

    .line 56
    .line 57
    monitor-enter v2

    .line 58
    :try_start_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

    .line 59
    .line 60
    const-string v4, "PrefVideo"

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

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
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->k()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p0, v0, Lcom/mycompany/app/main/MainApp;->Z:Lcom/mycompany/app/pref/PrefVideo;

    .line 87
    .line 88
    return-object p0
.end method
