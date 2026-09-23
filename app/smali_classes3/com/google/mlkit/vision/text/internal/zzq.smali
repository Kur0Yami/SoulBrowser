.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzub;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public final synthetic d:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;JLcom/google/android/gms/internal/mlkit_vision_text_common/zzou;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzq;->a:Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

    iput-wide p2, p0, Lcom/google/mlkit/vision/text/internal/zzq;->b:J

    iput-object p4, p0, Lcom/google/mlkit/vision/text/internal/zzq;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    iput-object p5, p0, Lcom/google/mlkit/vision/text/internal/zzq;->d:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzq;->a:Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/mlkit/vision/text/internal/zzq;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/zzq;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/mlkit/vision/text/internal/zzq;->d:Lcom/google/mlkit/vision/common/InputImage;

    .line 8
    .line 9
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;

    .line 15
    .line 16
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const-wide v7, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v7

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;->a:Ljava/lang/Long;

    .line 30
    .line 31
    iput-object v3, v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 32
    .line 33
    sget-boolean v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Z

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;->c:Ljava/lang/Boolean;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;->d:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;->e:Ljava/lang/Boolean;

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;

    .line 48
    .line 49
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoh;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;

    .line 53
    .line 54
    sget-object v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->j:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget v1, v4, Lcom/google/mlkit/vision/common/InputImage;->d:I

    .line 60
    .line 61
    const/16 v2, 0x23

    .line 62
    .line 63
    const v3, 0x32315659

    .line 64
    .line 65
    .line 66
    const/16 v6, 0x11

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, -0x1

    .line 70
    if-ne v1, v8, :cond_0

    .line 71
    .line 72
    iget-object v4, v4, Lcom/google/mlkit/vision/common/InputImage;->a:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Landroid/graphics/Bitmap;

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const/4 v4, 0x0

    .line 86
    if-eq v1, v6, :cond_3

    .line 87
    .line 88
    if-ne v1, v3, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    if-eq v1, v2, :cond_2

    .line 92
    .line 93
    move v4, v7

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, [Landroid/media/Image$Plane;

    .line 100
    .line 101
    aget-object v4, v4, v7

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    mul-int/lit8 v4, v4, 0x3

    .line 112
    .line 113
    div-int/lit8 v4, v4, 0x2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    :goto_1
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoa;

    .line 127
    .line 128
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    if-eq v1, v8, :cond_8

    .line 132
    .line 133
    if-eq v1, v2, :cond_7

    .line 134
    .line 135
    if-eq v1, v3, :cond_6

    .line 136
    .line 137
    const/16 v2, 0x10

    .line 138
    .line 139
    if-eq v1, v2, :cond_5

    .line 140
    .line 141
    if-eq v1, v6, :cond_4

    .line 142
    .line 143
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->i:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->j:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->k:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 159
    .line 160
    :goto_2
    iput-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoa;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;

    .line 161
    .line 162
    const v1, 0x7fffffff

    .line 163
    .line 164
    .line 165
    and-int/2addr v1, v4

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iput-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoa;->b:Ljava/lang/Integer;

    .line 171
    .line 172
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzod;

    .line 173
    .line 174
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzod;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoa;)V

    .line 175
    .line 176
    .line 177
    iput-object v1, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzod;

    .line 178
    .line 179
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 185
    .line 186
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-static {v2}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 195
    .line 196
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 197
    .line 198
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;)V

    .line 199
    .line 200
    .line 201
    iput-object v2, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 202
    .line 203
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;

    .line 204
    .line 205
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrx;)V

    .line 206
    .line 207
    .line 208
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 209
    .line 210
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object v0, v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 214
    .line 215
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_9

    .line 220
    .line 221
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 225
    .line 226
    :goto_3
    iput-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 227
    .line 228
    iput-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;

    .line 229
    .line 230
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;

    .line 231
    .line 232
    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;I)V

    .line 233
    .line 234
    .line 235
    return-object v0
.end method
