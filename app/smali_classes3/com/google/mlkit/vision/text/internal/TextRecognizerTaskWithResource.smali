.class public Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/MLTask<",
        "Lcom/google/mlkit/vision/text/Text;",
        "Lcom/google/mlkit/vision/common/InputImage;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

.field public static i:Z = true

.field public static final j:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field public final d:Lcom/google/mlkit/vision/text/internal/zzm;

.field public final e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

.field public final f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

.field public final g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->a:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 2
    .line 3
    sput-object v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->j:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 4
    .line 5
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->h:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/mlkit/vision/text/internal/zzm;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-interface {p3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x7

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->h:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;-><init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Lcom/google/mlkit/vision/text/internal/zzm;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->c()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->b()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

    .line 46
    .line 47
    iput-object p3, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Lcom/google/mlkit/vision/text/internal/zzm;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/zzm;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    sput-boolean v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Lcom/google/mlkit/vision/text/internal/zzm;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/zzm;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final d(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Lcom/google/mlkit/vision/text/Text;
    .locals 5

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Lcom/google/mlkit/vision/text/internal/zzm;

    .line 9
    .line 10
    invoke-interface {v2, p1}, Lcom/google/mlkit/vision/text/internal/zzm;->a(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 15
    .line 16
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;JLcom/google/mlkit/vision/common/InputImage;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    sput-boolean v3, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v2

    .line 27
    :try_start_2
    iget v3, v2, Lcom/google/mlkit/common/MlKitException;->c:I

    .line 28
    .line 29
    const/16 v4, 0xe

    .line 30
    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->j:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;JLcom/google/mlkit/vision/common/InputImage;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;JLcom/google/mlkit/vision/common/InputImage;)V
    .locals 22

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long v2, v0, p2

    .line 6
    .line 7
    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzq;

    .line 8
    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    move-object/from16 v5, p4

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/text/internal/zzq;-><init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;JLcom/google/android/gms/internal/mlkit_vision_text_common/zzou;Lcom/google/mlkit/vision/common/InputImage;)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v21, v4

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    move-object/from16 v0, v21

    .line 22
    .line 23
    iget-object v5, v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 24
    .line 25
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->k:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 26
    .line 27
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzub;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 36
    .line 37
    sget-boolean v5, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Z

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;->b:Ljava/lang/Boolean;

    .line 44
    .line 45
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v6, v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 51
    .line 52
    invoke-interface {v6}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-static {v6}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iput-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 61
    .line 62
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 63
    .line 64
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;)V

    .line 65
    .line 66
    .line 67
    iput-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 68
    .line 69
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 70
    .line 71
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;)V

    .line 72
    .line 73
    .line 74
    new-instance v7, Lcom/google/mlkit/vision/text/internal/zzr;

    .line 75
    .line 76
    invoke-direct {v7, v1}, Lcom/google/mlkit/vision/text/internal/zzr;-><init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->c()Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    move-object v4, v5

    .line 84
    move-wide v5, v2

    .line 85
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;

    .line 86
    .line 87
    iget-object v3, v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 88
    .line 89
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzua;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;JLcom/google/mlkit/vision/text/internal/zzr;)V

    .line 90
    .line 91
    .line 92
    move-object v4, v2

    .line 93
    move-wide v2, v5

    .line 94
    invoke-interface {v8, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v15

    .line 101
    sub-long v13, v15, v2

    .line 102
    .line 103
    iget-object v2, v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

    .line 104
    .line 105
    iget-object v3, v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 106
    .line 107
    invoke-interface {v3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->h()I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    iget v11, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->c:I

    .line 112
    .line 113
    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    const-wide/16 v7, -0x1

    .line 125
    .line 126
    cmp-long v0, v5, v7

    .line 127
    .line 128
    if-nez v0, :cond_0

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    sub-long v5, v3, v5

    .line 138
    .line 139
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 140
    .line 141
    const-wide/16 v7, 0x1e

    .line 142
    .line 143
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 144
    .line 145
    .line 146
    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    cmp-long v0, v5, v7

    .line 148
    .line 149
    if-gtz v0, :cond_1

    .line 150
    .line 151
    monitor-exit v2

    .line 152
    return-void

    .line 153
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;->a:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    .line 154
    .line 155
    new-instance v5, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 156
    .line 157
    new-instance v9, Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 158
    .line 159
    const/16 v19, 0x0

    .line 160
    .line 161
    const/16 v20, -0x1

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    const/16 v17, 0x0

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    new-array v6, v6, [Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    aput-object v9, v6, v7

    .line 176
    .line 177
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-direct {v5, v7, v6}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, v5}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;

    .line 189
    .line 190
    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v5}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .line 195
    .line 196
    monitor-exit v2

    .line 197
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    throw v0
.end method
