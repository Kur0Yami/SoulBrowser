.class public Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;
.super Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "AuthenticatorAttestationResponseCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/google/android/gms/internal/fido/zzgx;

.field public final f:Lcom/google/android/gms/internal/fido/zzgx;

.field public final g:Lcom/google/android/gms/internal/fido/zzgx;

.field public final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([B[B[B[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [B

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/fido/zzgx;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fido/zzgx;->s([BI)Lcom/google/android/gms/internal/fido/zzgx;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, [B

    .line 19
    .line 20
    array-length v0, p2

    .line 21
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/fido/zzgx;->s([BI)Lcom/google/android/gms/internal/fido/zzgx;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    check-cast p3, [B

    .line 30
    .line 31
    array-length v0, p3

    .line 32
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/fido/zzgx;->s([BI)Lcom/google/android/gms/internal/fido/zzgx;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/fido/zzgx;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/google/android/gms/internal/fido/zzgx;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 54
    .line 55
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/google/android/gms/internal/fido/zzgx;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 62
    .line 63
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [Ljava/lang/String;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->h:[Ljava/lang/String;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final F()Lorg/json/JSONObject;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-class v0, Lcom/google/android/gms/internal/fido/zzhm;

    .line 4
    .line 5
    const-class v2, Lcom/google/android/gms/internal/fido/zzhk;

    .line 6
    .line 7
    const-class v3, Lcom/google/android/gms/internal/fido/zzhi;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->h:[Ljava/lang/String;

    .line 10
    .line 11
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v6, v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    const-string v7, "clientDataJSON"

    .line 21
    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-static {v6}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_0
    :goto_0
    iget-object v6, v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    :try_start_1
    const-string v7, "attestationObject"

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-static {v8}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v7, Lorg/json/JSONArray;

    .line 55
    .line 56
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    :goto_1
    array-length v10, v4

    .line 61
    if-ge v9, v10, :cond_3

    .line 62
    .line 63
    aget-object v10, v4, v9

    .line 64
    .line 65
    const-string v11, "cable"

    .line 66
    .line 67
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_2

    .line 72
    .line 73
    const-string v10, "hybrid"

    .line 74
    .line 75
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    aget-object v10, v4, v9

    .line 80
    .line 81
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    .line 83
    .line 84
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const-string v4, "transports"

    .line 88
    .line 89
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 93
    .line 94
    .line 95
    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :try_start_2
    invoke-static {v4}, Lcom/google/android/gms/internal/fido/zzhp;->d([B)Lcom/google/android/gms/internal/fido/zzhp;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lcom/google/android/gms/internal/fido/zzhm;
    :try_end_2
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/google/android/gms/internal/fido/zzhj; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .line 106
    :try_start_3
    iget-object v4, v4, Lcom/google/android/gms/internal/fido/zzhm;->f:Lcom/google/android/gms/internal/fido/zzcj;

    .line 107
    .line 108
    const-string v6, "authData"

    .line 109
    .line 110
    new-instance v7, Lcom/google/android/gms/internal/fido/zzhn;

    .line 111
    .line 112
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcom/google/android/gms/internal/fido/zzhp;

    .line 120
    .line 121
    if-eqz v4, :cond_f

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Lcom/google/android/gms/internal/fido/zzhi;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;
    :try_end_3
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 130
    .line 131
    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/fido/zzgx;->q()Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    move-result-object v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    :try_start_5
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    const/16 v9, 0x20

    .line 140
    .line 141
    add-int/2addr v7, v9

    .line 142
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    and-int/lit8 v7, v7, 0x40

    .line 150
    .line 151
    if-eqz v7, :cond_e

    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    add-int/lit8 v7, v7, 0x4

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    add-int/lit8 v7, v7, 0x10

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    add-int/2addr v10, v7

    .line 180
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 181
    .line 182
    .line 183
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    invoke-virtual {v4}, Lcom/google/android/gms/internal/fido/zzgx;->g()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/fido/zzgx;->m(II)Lcom/google/android/gms/internal/fido/zzgx;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v6}, Lcom/google/android/gms/internal/fido/zzgx;->p()Ljava/io/ByteArrayInputStream;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v6}, Lcom/google/android/gms/internal/fido/zzhp;->e(Ljava/io/InputStream;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/google/android/gms/internal/fido/zzhm;
    :try_end_6
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/fido/zzhj; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 208
    .line 209
    :try_start_7
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzhm;->f:Lcom/google/android/gms/internal/fido/zzcj;

    .line 210
    .line 211
    new-instance v6, Lcom/google/android/gms/internal/fido/zzhk;

    .line 212
    .line 213
    const-wide/16 v10, 0x3

    .line 214
    .line 215
    invoke-direct {v6, v10, v11}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Lcom/google/android/gms/internal/fido/zzhp;

    .line 223
    .line 224
    new-instance v7, Lcom/google/android/gms/internal/fido/zzhk;

    .line 225
    .line 226
    const-wide/16 v10, 0x1

    .line 227
    .line 228
    invoke-direct {v7, v10, v11}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Lcom/google/android/gms/internal/fido/zzhp;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 236
    .line 237
    const-string v12, "COSE key missing required fields"

    .line 238
    .line 239
    if-eqz v6, :cond_d

    .line 240
    .line 241
    if-eqz v7, :cond_d

    .line 242
    .line 243
    :try_start_8
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    check-cast v6, Lcom/google/android/gms/internal/fido/zzhk;

    .line 248
    .line 249
    iget-wide v13, v6, Lcom/google/android/gms/internal/fido/zzhk;->c:J

    .line 250
    .line 251
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    check-cast v6, Lcom/google/android/gms/internal/fido/zzhk;

    .line 256
    .line 257
    iget-wide v6, v6, Lcom/google/android/gms/internal/fido/zzhk;->c:J

    .line 258
    .line 259
    cmp-long v15, v6, v10

    .line 260
    .line 261
    const/16 v16, 0x0

    .line 262
    .line 263
    const-wide/16 v17, 0x2

    .line 264
    .line 265
    if-eqz v15, :cond_4

    .line 266
    .line 267
    cmp-long v6, v6, v17

    .line 268
    .line 269
    if-nez v6, :cond_a

    .line 270
    .line 271
    move-wide/from16 v6, v17

    .line 272
    .line 273
    :cond_4
    new-instance v15, Lcom/google/android/gms/internal/fido/zzhk;

    .line 274
    .line 275
    move-wide/from16 v19, v10

    .line 276
    .line 277
    const-wide/16 v10, -0x1

    .line 278
    .line 279
    invoke-direct {v15, v10, v11}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    check-cast v10, Lcom/google/android/gms/internal/fido/zzhp;

    .line 287
    .line 288
    if-eqz v10, :cond_c

    .line 289
    .line 290
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    check-cast v2, Lcom/google/android/gms/internal/fido/zzhk;

    .line 295
    .line 296
    iget-wide v10, v2, Lcom/google/android/gms/internal/fido/zzhk;->c:J
    :try_end_8
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 297
    .line 298
    cmp-long v2, v6, v17

    .line 299
    .line 300
    const/16 v17, 0x1

    .line 301
    .line 302
    const/16 v18, 0x2

    .line 303
    .line 304
    const-string v15, "COSE coordinates are the wrong size"

    .line 305
    .line 306
    const-wide/16 v8, -0x2

    .line 307
    .line 308
    if-nez v2, :cond_7

    .line 309
    .line 310
    cmp-long v2, v10, v19

    .line 311
    .line 312
    if-nez v2, :cond_7

    .line 313
    .line 314
    :try_start_9
    new-instance v2, Lcom/google/android/gms/internal/fido/zzhk;

    .line 315
    .line 316
    invoke-direct {v2, v8, v9}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Lcom/google/android/gms/internal/fido/zzhp;

    .line 324
    .line 325
    new-instance v6, Lcom/google/android/gms/internal/fido/zzhk;

    .line 326
    .line 327
    const-wide/16 v7, -0x3

    .line 328
    .line 329
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Lcom/google/android/gms/internal/fido/zzhp;

    .line 337
    .line 338
    if-eqz v2, :cond_6

    .line 339
    .line 340
    if-eqz v0, :cond_6

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Lcom/google/android/gms/internal/fido/zzhi;

    .line 347
    .line 348
    iget-object v2, v2, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Lcom/google/android/gms/internal/fido/zzhi;

    .line 355
    .line 356
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 357
    .line 358
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzgx;->g()I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    const/16 v6, 0x20

    .line 363
    .line 364
    if-ne v3, v6, :cond_5

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->g()I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-ne v3, v6, :cond_5

    .line 371
    .line 372
    const-string v3, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE"

    .line 373
    .line 374
    const/4 v6, 0x0

    .line 375
    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const/4 v7, 0x3

    .line 388
    new-array v7, v7, [[B

    .line 389
    .line 390
    aput-object v3, v7, v6

    .line 391
    .line 392
    aput-object v2, v7, v17

    .line 393
    .line 394
    aput-object v0, v7, v18

    .line 395
    .line 396
    invoke-static {v7}, Lcom/google/android/gms/internal/fido/zzgj;->a([[B)[B

    .line 397
    .line 398
    .line 399
    move-result-object v16

    .line 400
    goto :goto_3

    .line 401
    :catch_1
    move-exception v0

    .line 402
    goto/16 :goto_4

    .line 403
    .line 404
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 405
    .line 406
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 411
    .line 412
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    throw v0

    .line 416
    :cond_7
    cmp-long v2, v6, v19

    .line 417
    .line 418
    if-nez v2, :cond_a

    .line 419
    .line 420
    const-wide/16 v6, 0x6

    .line 421
    .line 422
    cmp-long v2, v10, v6

    .line 423
    .line 424
    if-nez v2, :cond_a

    .line 425
    .line 426
    new-instance v2, Lcom/google/android/gms/internal/fido/zzhk;

    .line 427
    .line 428
    invoke-direct {v2, v8, v9}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Lcom/google/android/gms/internal/fido/zzhp;

    .line 436
    .line 437
    if-eqz v0, :cond_9

    .line 438
    .line 439
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/fido/zzhp;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Lcom/google/android/gms/internal/fido/zzhi;

    .line 444
    .line 445
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->g()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    const/16 v6, 0x20

    .line 452
    .line 453
    if-ne v2, v6, :cond_8

    .line 454
    .line 455
    const-string v2, "MCowBQYDK2VwAyEA"

    .line 456
    .line 457
    const/4 v6, 0x0

    .line 458
    invoke-static {v2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    move/from16 v3, v18

    .line 467
    .line 468
    new-array v3, v3, [[B

    .line 469
    .line 470
    aput-object v2, v3, v6

    .line 471
    .line 472
    aput-object v0, v3, v17

    .line 473
    .line 474
    invoke-static {v3}, Lcom/google/android/gms/internal/fido/zzgj;->a([[B)[B

    .line 475
    .line 476
    .line 477
    move-result-object v16

    .line 478
    goto :goto_3

    .line 479
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 480
    .line 481
    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 486
    .line 487
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v0
    :try_end_9
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 491
    :cond_a
    :goto_3
    :try_start_a
    const-string v0, "authenticatorData"

    .line 492
    .line 493
    invoke-virtual {v4}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-static {v2}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    .line 503
    .line 504
    const-string v0, "publicKeyAlgorithm"

    .line 505
    .line 506
    invoke-virtual {v5, v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 507
    .line 508
    .line 509
    if-eqz v16, :cond_b

    .line 510
    .line 511
    const-string v0, "publicKey"

    .line 512
    .line 513
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 518
    .line 519
    .line 520
    :cond_b
    return-object v5

    .line 521
    :cond_c
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 522
    .line 523
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v0
    :try_end_b
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 527
    :goto_4
    :try_start_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 528
    .line 529
    const-string v3, "COSE key ill-formed"

    .line 530
    .line 531
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    .line 533
    .line 534
    throw v2

    .line 535
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 536
    .line 537
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v0

    .line 541
    :catch_2
    move-exception v0

    .line 542
    goto :goto_5

    .line 543
    :catch_3
    move-exception v0

    .line 544
    :goto_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 545
    .line 546
    const-string v3, "failed to parse COSE key"

    .line 547
    .line 548
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    .line 550
    .line 551
    throw v2
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    .line 552
    :catch_4
    move-exception v0

    .line 553
    goto :goto_6

    .line 554
    :cond_e
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 555
    .line 556
    const-string v2, "authData does not include credential data"

    .line 557
    .line 558
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    .line 562
    :goto_6
    :try_start_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 563
    .line 564
    const-string v3, "ill-formed authenticator data"

    .line 565
    .line 566
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    .line 568
    .line 569
    throw v2
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    .line 570
    :catch_5
    move-exception v0

    .line 571
    goto :goto_7

    .line 572
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 573
    .line 574
    const-string v2, "attestation object missing authData"

    .line 575
    .line 576
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v0
    :try_end_f
    .catch Lcom/google/android/gms/internal/fido/zzho; {:try_start_f .. :try_end_f} :catch_5
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    .line 580
    :goto_7
    :try_start_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 581
    .line 582
    const-string v3, "authData value has wrong type"

    .line 583
    .line 584
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    .line 586
    .line 587
    throw v2

    .line 588
    :catch_6
    move-exception v0

    .line 589
    goto :goto_8

    .line 590
    :catch_7
    move-exception v0

    .line 591
    :goto_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 592
    .line 593
    const-string v3, "failed to parse attestation object"

    .line 594
    .line 595
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    throw v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    .line 599
    :goto_9
    new-instance v2, Ljava/lang/RuntimeException;

    .line 600
    .line 601
    const-string v3, "Error encoding AuthenticatorAttestationResponse to JSON object"

    .line 602
    .line 603
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 604
    .line 605
    .line 606
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-array v3, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 20
    .line 21
    aput-object v4, v3, v2

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-array v4, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 34
    .line 35
    aput-object v5, v4, v2

    .line 36
    .line 37
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x3

    .line 46
    new-array v5, v5, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v1, v5, v2

    .line 49
    .line 50
    aput-object v3, v5, v0

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    aput-object v4, v5, v0

    .line 54
    .line 55
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbj;->a(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;)Lcom/google/android/gms/internal/fido/zzbi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/fido/zzgf;->a:Lcom/google/android/gms/internal/fido/zzgf;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    array-length v3, v2

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fido/zzgf;->c([BI)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "keyHandle"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/fido/zzbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    array-length v3, v2

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fido/zzgf;->c([BI)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "clientDataJSON"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/fido/zzbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    array-length v3, v2

    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fido/zzgf;->c([BI)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "attestationObject"

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "transports"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->h:[Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/fido/zzbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzbi;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->f:Lcom/google/android/gms/internal/fido/zzgx;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->g:Lcom/google/android/gms/internal/fido/zzgx;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->h:[Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
