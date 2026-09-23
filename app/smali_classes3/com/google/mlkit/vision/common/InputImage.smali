.class public Lcom/google/mlkit/vision/common/InputImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/MLTaskInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/common/InputImage$ImageFormat;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public volatile a:Landroid/graphics/Bitmap;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/mlkit/vision/common/InputImage;->a:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    const-string v0, "Invalid rotation. Only 0, 90, 180, 270 are supported currently."

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/google/mlkit/vision/common/InputImage;->d:I

    .line 32
    .line 33
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/google/mlkit/vision/common/InputImage;
    .locals 16

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lcom/google/mlkit/vision/common/InputImage;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->b()Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    sub-long/2addr v7, v0

    .line 33
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->e:Lcom/google/android/gms/tasks/Task;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->i:Ljava/util/HashMap;

    .line 40
    .line 41
    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    .line 42
    .line 43
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    if-nez v12, :cond_0

    .line 48
    .line 49
    move-object v15, v2

    .line 50
    move/from16 p0, v3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Ljava/lang/Long;

    .line 58
    .line 59
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    sub-long v12, v9, v12

    .line 64
    .line 65
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    move-object v15, v2

    .line 68
    move/from16 p0, v3

    .line 69
    .line 70
    const-wide/16 v2, 0x1e

    .line 71
    .line 72
    invoke-virtual {v14, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    cmp-long v2, v12, v2

    .line 77
    .line 78
    if-gtz v2, :cond_1

    .line 79
    .line 80
    return-object v15

    .line 81
    :cond_1
    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 94
    .line 95
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 96
    .line 97
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    .line 98
    .line 99
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    .line 100
    .line 101
    const v2, 0x7fffffff

    .line 102
    .line 103
    .line 104
    and-int v3, p0, v2

    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->d:Ljava/lang/Integer;

    .line 111
    .line 112
    and-int v3, v4, v2

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->f:Ljava/lang/Integer;

    .line 119
    .line 120
    and-int/2addr v2, v5

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->e:Ljava/lang/Integer;

    .line 126
    .line 127
    const-wide v2, 0x7fffffffffffffffL

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    and-long/2addr v2, v7

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->a:Ljava/lang/Long;

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->g:Ljava/lang/Integer;

    .line 145
    .line 146
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    .line 147
    .line 148
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzin;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    .line 157
    .line 158
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;

    .line 159
    .line 160
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_2

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->g:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :goto_1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->c()Ljava/util/concurrent/Executor;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;

    .line 191
    .line 192
    invoke-direct {v3, v6, v2, v11, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 196
    .line 197
    .line 198
    return-object v15
.end method
