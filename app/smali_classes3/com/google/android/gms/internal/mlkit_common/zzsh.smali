.class public final Lcom/google/android/gms/internal/mlkit_common/zzsh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Lcom/google/android/gms/internal/mlkit_common/zzaf;

.field public static final j:Lcom/google/android/gms/internal/mlkit_common/zzai;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/mlkit_common/zzsc;

.field public final d:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field public final e:Lcom/google/android/gms/tasks/Task;

.field public final f:Lcom/google/android/gms/tasks/Task;

.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "optional-module-barcode"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-string v1, "com.google.android.gms.vision.barcode"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->d(I[Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzah;)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->j:Lcom/google/android/gms/internal/mlkit_common/zzai;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzsc;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->b:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->d:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->c:Lcom/google/android/gms/internal/mlkit_common/zzsc;

    .line 29
    .line 30
    const-class p3, Lcom/google/android/gms/internal/mlkit_common/zzsv;

    .line 31
    .line 32
    monitor-enter p3

    .line 33
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->a:Lcom/google/android/gms/internal/mlkit_common/zzsv;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsv;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzsv;->a:Lcom/google/android/gms/internal/mlkit_common/zzsv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :goto_0
    monitor-exit p3

    .line 48
    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->g:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->a()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzse;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzsh;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->e:Lcom/google/android/gms/tasks/Task;

    .line 67
    .line 68
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->a()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsf;

    .line 76
    .line 77
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsf;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->f:Lcom/google/android/gms/tasks/Task;

    .line 88
    .line 89
    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzsh;->j:Lcom/google/android/gms/internal/mlkit_common/zzai;

    .line 90
    .line 91
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzai;->containsKey(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_1

    .line 96
    .line 97
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzai;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Ljava/lang/String;

    .line 102
    .line 103
    const/4 p3, 0x0

    .line 104
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 p1, -0x1

    .line 110
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->h:I

    .line 111
    .line 112
    return-void

    .line 113
    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzqt;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzsh;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzsh;->i:Lcom/google/android/gms/internal/mlkit_common/zzaf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroidx/core/os/ConfigurationCompat;->a(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzac;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_common/zzac;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    invoke-virtual {v2}, Landroidx/core/os/LocaleListCompat;->e()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ge v4, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Landroidx/core/os/LocaleListCompat;->c(I)Ljava/util/Locale;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->b(Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/mlkit_common/zzac;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    const/4 v2, 0x1

    .line 64
    iput-boolean v2, v3, Lcom/google/android/gms/internal/mlkit_common/zzz;->c:Z

    .line 65
    .line 66
    iget-object v2, v3, Lcom/google/android/gms/internal/mlkit_common/zzz;->a:[Ljava/lang/Object;

    .line 67
    .line 68
    iget v3, v3, Lcom/google/android/gms/internal/mlkit_common/zzz;->b:I

    .line 69
    .line 70
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzaf;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzsh;->i:Lcom/google/android/gms/internal/mlkit_common/zzaf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    monitor-exit v1

    .line 77
    :goto_1
    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->e:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    .line 78
    .line 79
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->h:Ljava/lang/Boolean;

    .line 82
    .line 83
    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->d:Ljava/lang/String;

    .line 84
    .line 85
    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->c:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->f:Lcom/google/android/gms/tasks/Task;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->f:Lcom/google/android/gms/tasks/Task;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->d:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->a()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_2
    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->f:Ljava/lang/String;

    .line 111
    .line 112
    const/16 p1, 0xa

    .line 113
    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->j:Ljava/lang/Integer;

    .line 119
    .line 120
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->h:I

    .line 121
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_common/zzqt;->k:Ljava/lang/Integer;

    .line 127
    .line 128
    return-object v0

    .line 129
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw p1
.end method
