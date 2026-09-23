.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

.field public final synthetic f:Lcom/google/mlkit/vision/text/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/mlkit/vision/text/internal/zzr;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;->f:Lcom/google/mlkit/vision/text/internal/zzr;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->n1:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->j:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbp;

    .line 12
    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcc;->zzo()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbp;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;

    .line 46
    .line 47
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    const/4 v9, 0x0

    .line 55
    const-wide/16 v10, 0x0

    .line 56
    .line 57
    move v12, v9

    .line 58
    :goto_1
    if-ge v12, v8, :cond_0

    .line 59
    .line 60
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    add-int/lit8 v12, v12, 0x1

    .line 65
    .line 66
    check-cast v13, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    add-long/2addr v10, v13

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    int-to-long v12, v8

    .line 79
    div-long/2addr v10, v12

    .line 80
    const-wide v12, 0x7fffffffffffffffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    and-long/2addr v10, v12

    .line 86
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;->c:Ljava/lang/Long;

    .line 91
    .line 92
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 93
    .line 94
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->a(Ljava/util/ArrayList;D)J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    and-long/2addr v10, v12

    .line 99
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;->a:Ljava/lang/Long;

    .line 104
    .line 105
    const-wide v10, 0x4052c00000000000L    # 75.0

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->a(Ljava/util/ArrayList;D)J

    .line 111
    .line 112
    .line 113
    move-result-wide v10

    .line 114
    and-long/2addr v10, v12

    .line 115
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;->f:Ljava/lang/Long;

    .line 120
    .line 121
    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    .line 122
    .line 123
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->a(Ljava/util/ArrayList;D)J

    .line 124
    .line 125
    .line 126
    move-result-wide v10

    .line 127
    and-long/2addr v10, v12

    .line 128
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;->e:Ljava/lang/Long;

    .line 133
    .line 134
    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    .line 135
    .line 136
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->a(Ljava/util/ArrayList;D)J

    .line 137
    .line 138
    .line 139
    move-result-wide v10

    .line 140
    and-long/2addr v10, v12

    .line 141
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;->d:Ljava/lang/Long;

    .line 146
    .line 147
    const-wide/16 v10, 0x0

    .line 148
    .line 149
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->a(Ljava/util/ArrayList;D)J

    .line 150
    .line 151
    .line 152
    move-result-wide v10

    .line 153
    and-long/2addr v10, v12

    .line 154
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;->b:Ljava/lang/Long;

    .line 159
    .line 160
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    .line 161
    .line 162
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zznu;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztx;->f:Lcom/google/mlkit/vision/text/internal/zzr;

    .line 170
    .line 171
    iget-object v7, v7, Lcom/google/mlkit/vision/text/internal/zzr;->a:Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

    .line 172
    .line 173
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 174
    .line 175
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 176
    .line 177
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v7, v7, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 181
    .line 182
    invoke-interface {v7}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-eqz v7, :cond_1

    .line 187
    .line 188
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_1
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 192
    .line 193
    :goto_2
    iput-object v7, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 194
    .line 195
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzep;

    .line 196
    .line 197
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    const v11, 0x7fffffff

    .line 201
    .line 202
    .line 203
    and-int/2addr v6, v11

    .line 204
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iput-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzep;->b:Ljava/lang/Integer;

    .line 209
    .line 210
    iput-object v5, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzep;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 211
    .line 212
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzep;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    .line 213
    .line 214
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeu;

    .line 215
    .line 216
    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzep;)V

    .line 217
    .line 218
    .line 219
    iput-object v5, v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeu;

    .line 220
    .line 221
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;

    .line 222
    .line 223
    invoke-direct {v5, v10, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->c()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->c()Ljava/util/concurrent/Executor;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;

    .line 235
    .line 236
    invoke-direct {v8, v1, v5, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    :cond_3
    return-void
.end method
