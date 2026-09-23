.class public Lcom/google/android/gms/internal/drive/zzid;
.super Lcom/google/android/gms/drive/metadata/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzm<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/android/gms/drive/metadata/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzie;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/drive/zzid;->c:Lcom/google/android/gms/drive/metadata/internal/zzg;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "customPropertiesExtra"

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_6

    .line 14
    .line 15
    const-string v3, "customPropertiesExtraHolder"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_5

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "customPropertiesExtraHolder"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "entryIdColumn"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "keyColumn"

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "visibilityColumn"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const-string v7, "valueColumn"

    .line 67
    .line 68
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v7, Landroidx/collection/LongSparseArray;

    .line 73
    .line 74
    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-ge v9, v10, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    invoke-virtual {v2, v4, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    .line 89
    .line 90
    .line 91
    move-result-wide v11

    .line 92
    invoke-virtual {v2, v5, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    invoke-virtual {v2, v6, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    invoke-virtual {v2, v3, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    new-instance v15, Lcom/google/android/gms/drive/metadata/internal/zzc;

    .line 105
    .line 106
    new-instance v8, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 107
    .line 108
    invoke-direct {v8, v13, v14}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v15, v8, v10}, Lcom/google/android/gms/drive/metadata/internal/zzc;-><init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->d(J)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    .line 119
    .line 120
    if-nez v8, :cond_1

    .line 121
    .line 122
    new-instance v8, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    .line 123
    .line 124
    invoke-direct {v8}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v11, v12, v8}, Landroidx/collection/LongSparseArray;->g(JLjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catchall_1
    move-exception v0

    .line 132
    goto :goto_4

    .line 133
    :cond_1
    :goto_1
    const-string v10, "property"

    .line 134
    .line 135
    invoke-static {v15, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object v8, v8, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->a:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v10, v15, Lcom/google/android/gms/drive/metadata/internal/zzc;->c:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    .line 141
    .line 142
    invoke-virtual {v8, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    .line 149
    .line 150
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 151
    .line 152
    .line 153
    const/4 v8, 0x0

    .line 154
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-ge v8, v4, :cond_4

    .line 159
    .line 160
    const-string v4, "sqlId"

    .line 161
    .line 162
    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    invoke-virtual {v1, v4, v8, v5}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    invoke-virtual {v7, v4, v5}, Landroidx/collection/LongSparseArray;->d(J)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    .line 175
    .line 176
    if-eqz v4, :cond_3

    .line 177
    .line 178
    new-instance v5, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    .line 179
    .line 180
    iget-object v4, v4, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->a:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-direct {v5, v4}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const-string v5, "customPropertiesExtra"

    .line 200
    .line 201
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .line 203
    .line 204
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-string v3, "customPropertiesExtraHolder"

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :goto_3
    const-string v1, "customPropertiesExtra"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    goto :goto_6

    .line 224
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const-string v3, "customPropertiesExtraHolder"

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :goto_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    throw v0

    .line 239
    :cond_5
    :goto_6
    if-nez v2, :cond_6

    .line 240
    .line 241
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->f:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    .line 242
    .line 243
    return-object v0

    .line 244
    :cond_6
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->f:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    .line 245
    .line 246
    move/from16 v1, p2

    .line 247
    .line 248
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    .line 253
    .line 254
    return-object v0
.end method
