.class final Lcom/google/android/gms/cast/framework/media/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/framework/media/zzbk;

.field public final synthetic f:Lcom/google/android/gms/cast/framework/media/zzbk;

.field public final synthetic g:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbk;Lcom/google/android/gms/cast/framework/media/zzbk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->c:Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->f:Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->g:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->g:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->c:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 9
    .line 10
    if-eqz p2, :cond_c

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 33
    .line 34
    if-eqz p2, :cond_c

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->c:Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 48
    .line 49
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/zzbk;->f:I

    .line 50
    .line 51
    if-ltz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v3, v4, :cond_2

    .line 58
    .line 59
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/zzbk;->f:I

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move-object v2, v0

    .line 69
    :goto_0
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-wide v2, v2, Lcom/google/android/gms/cast/MediaTrack;->c:J

    .line 72
    .line 73
    const-wide/16 v4, -0x1

    .line 74
    .line 75
    cmp-long v4, v2, v4

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->f:Lcom/google/android/gms/cast/framework/media/zzbk;

    .line 87
    .line 88
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/zzbk;->f:I

    .line 89
    .line 90
    if-ltz v3, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ge v3, v4, :cond_4

    .line 97
    .line 98
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/zzbk;->f:I

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move-object v2, v0

    .line 108
    :goto_1
    if-eqz v2, :cond_5

    .line 109
    .line 110
    iget-wide v2, v2, Lcom/google/android/gms/cast/MediaTrack;->c:J

    .line 111
    .line 112
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->h:[J

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    if-eqz v2, :cond_9

    .line 123
    .line 124
    array-length v4, v2

    .line 125
    if-lez v4, :cond_9

    .line 126
    .line 127
    new-instance v4, Ljava/util/HashSet;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v5, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->g:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    move v7, v3

    .line 139
    :goto_2
    if-ge v7, v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    check-cast v8, Lcom/google/android/gms/cast/MediaTrack;

    .line 148
    .line 149
    iget-wide v8, v8, Lcom/google/android/gms/cast/MediaTrack;->c:J

    .line 150
    .line 151
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    iget-object v5, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->f:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    move v7, v3

    .line 166
    :goto_3
    if-ge v7, v6, :cond_7

    .line 167
    .line 168
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    add-int/lit8 v7, v7, 0x1

    .line 173
    .line 174
    check-cast v8, Lcom/google/android/gms/cast/MediaTrack;

    .line 175
    .line 176
    iget-wide v8, v8, Lcom/google/android/gms/cast/MediaTrack;->c:J

    .line 177
    .line 178
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    array-length v5, v2

    .line 187
    move v6, v3

    .line 188
    :goto_4
    if-ge v6, v5, :cond_9

    .line 189
    .line 190
    aget-wide v7, v2, v6

    .line 191
    .line 192
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_8

    .line 201
    .line 202
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    new-array v2, v2, [J

    .line 213
    .line 214
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-ge v3, v4, :cond_a

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Ljava/lang/Long;

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    aput-wide v4, v2, v3

    .line 231
    .line 232
    add-int/lit8 v3, v3, 0x1

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_a
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 236
    .line 237
    .line 238
    const-string v1, "Must be called from the main thread."

    .line 239
    .line 240
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_b

    .line 248
    .line 249
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_b
    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzv;

    .line 254
    .line 255
    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/cast/framework/media/zzv;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;[J)V

    .line 256
    .line 257
    .line 258
    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 259
    .line 260
    .line 261
    :goto_6
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 262
    .line 263
    if-eqz p2, :cond_c

    .line 264
    .line 265
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 266
    .line 267
    .line 268
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->i:Landroid/app/AlertDialog;

    .line 269
    .line 270
    :cond_c
    return-void
.end method
