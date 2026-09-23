.class public final Lcom/google/mlkit/vision/codescanner/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/codescanner/GmsBarcodeScanner;


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final j:Ljava/lang/Object;

.field public static k:Z


# instance fields
.field public final c:Landroid/content/Context;

.field public final f:Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;

.field public final g:Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

.field public final h:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/mlkit/vision/codescanner/internal/zze;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/mlkit/vision/codescanner/internal/zze;->j:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoj;->b()Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/google/mlkit/vision/codescanner/internal/zze;->g:Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/mlkit/vision/codescanner/internal/zze;->c:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/mlkit/vision/codescanner/internal/zze;->f:Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/mlkit/vision/codescanner/internal/zze;->h:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;

    .line 20
    .line 21
    return-void
.end method

.method public static c(Lcom/google/mlkit/vision/barcode/common/Barcode;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/codescanner/internal/zze;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/util/Pair;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/16 p0, 0xc9

    .line 23
    .line 24
    if-ne p1, p0, :cond_1

    .line 25
    .line 26
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 37
    .line 38
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 39
    .line 40
    const-string v1, "Failed to scan code."

    .line 41
    .line 42
    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const-string p0, "GmsBarcodeScannerImpl"

    .line 50
    .line 51
    const-string p1, "Scanning task source doesn\'t exist when setting back result."

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/mlkit/vision/codescanner/internal/zze;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v2, 0xd33d260

    .line 12
    .line 13
    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    const/16 v8, 0xcf

    .line 25
    .line 26
    move-object v3, p0

    .line 27
    invoke-virtual/range {v3 .. v8}, Lcom/google/mlkit/vision/codescanner/internal/zze;->b(JJI)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 31
    .line 32
    const-string v1, "Code scanner module is not supported on current Google Play Services version, please upgrade."

    .line 33
    .line 34
    const/16 v2, 0xcf

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_0
    move-object v3, p0

    .line 45
    invoke-static {v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstall;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    new-array v1, v1, [Lcom/google/android/gms/common/api/OptionalModuleApi;

    .line 51
    .line 52
    sget-object v2, Lcom/google/mlkit/vision/codescanner/internal/zzc;->c:Lcom/google/mlkit/vision/codescanner/internal/zzc;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v2, v1, v4

    .line 56
    .line 57
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;->areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lcom/google/mlkit/vision/codescanner/internal/zzd;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/google/mlkit/vision/codescanner/internal/zzd;-><init>(Lcom/google/mlkit/vision/codescanner/internal/zze;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->q(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final b(JJI)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v4, p5

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v8

    .line 13
    iget-object v0, v1, Lcom/google/mlkit/vision/codescanner/internal/zze;->g:Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

    .line 14
    .line 15
    new-instance v5, Lcom/google/android/gms/internal/mlkit_code_scanner/zzkc;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zziv;

    .line 21
    .line 22
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v7, v1, Lcom/google/mlkit/vision/codescanner/internal/zze;->f:Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v13, 0x0

    .line 31
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zziv;->a:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v7, v1, Lcom/google/mlkit/vision/codescanner/internal/zze;->f:Lcom/google/mlkit/vision/codescanner/GmsBarcodeScannerOptions;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zziv;->d:Ljava/lang/Boolean;

    .line 45
    .line 46
    sub-long v2, v2, p1

    .line 47
    .line 48
    const-wide v10, 0x7fffffffffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v2, v10

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zziv;->b:Ljava/lang/Long;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    const/16 v2, 0xcf

    .line 63
    .line 64
    if-eq v4, v2, :cond_0

    .line 65
    .line 66
    packed-switch v4, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->n:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->l:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->k:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->j:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->i:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_4
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->h:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_5
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->g:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->m:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;->f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 94
    .line 95
    :goto_0
    iput-object v2, v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zziv;->c:Lcom/google/android/gms/internal/mlkit_code_scanner/zzka;

    .line 96
    .line 97
    new-instance v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzix;

    .line 98
    .line 99
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzix;-><init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zziv;)V

    .line 100
    .line 101
    .line 102
    iput-object v2, v5, Lcom/google/android/gms/internal/mlkit_code_scanner/zzkc;->c:Lcom/google/android/gms/internal/mlkit_code_scanner/zzix;

    .line 103
    .line 104
    new-instance v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;

    .line 105
    .line 106
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;-><init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzkc;)V

    .line 107
    .line 108
    .line 109
    sget-object v3, Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;->f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;

    .line 110
    .line 111
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->e:Lcom/google/android/gms/tasks/Task;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_2

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Ljava/lang/String;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->g:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->c()Ljava/util/concurrent/Executor;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    new-instance v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;

    .line 141
    .line 142
    invoke-direct {v6, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;-><init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    .line 147
    .line 148
    iget-object v14, v1, Lcom/google/mlkit/vision/codescanner/internal/zze;->h:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;

    .line 149
    .line 150
    monitor-enter v14

    .line 151
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    const-wide/16 v10, -0x1

    .line 162
    .line 163
    cmp-long v0, v5, v10

    .line 164
    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    sub-long v5, v2, v5

    .line 175
    .line 176
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 177
    .line 178
    const-wide/16 v10, 0x1e

    .line 179
    .line 180
    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 181
    .line 182
    .line 183
    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    cmp-long v0, v5, v10

    .line 185
    .line 186
    if-gtz v0, :cond_4

    .line 187
    .line 188
    monitor-exit v14

    .line 189
    return-void

    .line 190
    :cond_4
    :goto_2
    :try_start_1
    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;->a:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    .line 191
    .line 192
    new-instance v15, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 193
    .line 194
    move-wide v5, v2

    .line 195
    new-instance v2, Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 196
    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x0

    .line 199
    const/16 v3, 0x5f03

    .line 200
    .line 201
    move-wide v6, v5

    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    move-wide/from16 v16, v6

    .line 205
    .line 206
    move-wide/from16 v6, p3

    .line 207
    .line 208
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    new-array v3, v3, [Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 213
    .line 214
    aput-object v2, v3, v13

    .line 215
    .line 216
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-direct {v15, v13, v2}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, v15}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zznz;

    .line 228
    .line 229
    move-wide/from16 v5, v16

    .line 230
    .line 231
    invoke-direct {v2, v14, v5, v6}, Lcom/google/android/gms/internal/mlkit_code_scanner/zznz;-><init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzoa;J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .line 236
    .line 237
    monitor-exit v14

    .line 238
    return-void

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    throw v0

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 3
    .line 4
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->i:Lcom/google/android/gms/common/Feature;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method
