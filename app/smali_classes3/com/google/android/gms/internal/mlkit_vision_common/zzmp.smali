.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;


# instance fields
.field public final a:Lcom/google/firebase/components/Lazy;

.field public final b:Lcom/google/firebase/components/Lazy;

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_common/zzme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    .line 5
    .line 6
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->e:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->a()Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->c(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->d:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    .line 22
    .line 23
    const-string v1, "json"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lcom/google/firebase/components/Lazy;

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmm;-><init>(Lcom/google/android/datatransport/TransportFactory;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->a:Lcom/google/firebase/components/Lazy;

    .line 45
    .line 46
    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;-><init>(Lcom/google/android/datatransport/TransportFactory;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->b:Lcom/google/firebase/components/Lazy;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->a()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "Failed to covert logging to UTF-8 byte array"

    .line 10
    .line 11
    const-string v4, "utf-8"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->a:Lcom/google/firebase/components/Lazy;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/android/datatransport/Transport;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->a()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    xor-int/lit8 v8, v1, 0x1

    .line 34
    .line 35
    iget-object v9, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 36
    .line 37
    if-eq v6, v8, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v5, v6

    .line 41
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iput-object v5, v9, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->i:Ljava/lang/Boolean;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 48
    .line 49
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    iput-object v5, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->g:Ljava/lang/Boolean;

    .line 52
    .line 53
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    .line 54
    .line 55
    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)V

    .line 56
    .line 57
    .line 58
    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    .line 59
    .line 60
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->a()V

    .line 61
    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 66
    .line 67
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v6, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->d:Z

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->b()Lcom/google/firebase/encoders/DataEncoder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0, p1}, Lcom/google/firebase/encoders/DataEncoder;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 96
    .line 97
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    .line 109
    .line 110
    new-instance v4, Ljava/util/HashMap;

    .line 111
    .line 112
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->a:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    new-instance v5, Ljava/util/HashMap;

    .line 118
    .line 119
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->b:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    .line 125
    .line 126
    invoke-direct {v1, v4, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->a(Lcom/google/android/gms/internal/mlkit_vision_common/zziy;)[B

    .line 130
    .line 131
    .line 132
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    invoke-static {p1}, Lcom/google/android/datatransport/Event;->g(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {v2, p1}, Lcom/google/android/datatransport/Transport;->a(Lcom/google/android/datatransport/Event;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 142
    .line 143
    invoke-direct {v0, v3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_2
    return-void

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->b:Lcom/google/firebase/components/Lazy;

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lcom/google/android/datatransport/Transport;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->a()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    xor-int/lit8 v8, v1, 0x1

    .line 161
    .line 162
    iget-object v9, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 163
    .line 164
    if-eq v6, v8, :cond_4

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    move v5, v6

    .line 168
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    iput-object v5, v9, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->i:Ljava/lang/Boolean;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 175
    .line 176
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 177
    .line 178
    iput-object v5, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->g:Ljava/lang/Boolean;

    .line 179
    .line 180
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    .line 181
    .line 182
    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)V

    .line 183
    .line 184
    .line 185
    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    .line 186
    .line 187
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmw;->a()V

    .line 188
    .line 189
    .line 190
    if-nez v1, :cond_5

    .line 191
    .line 192
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 193
    .line 194
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 203
    .line 204
    .line 205
    iput-boolean v6, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->d:Z

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->b()Lcom/google/firebase/encoders/DataEncoder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v0, p1}, Lcom/google/firebase/encoders/DataEncoder;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    goto :goto_4

    .line 220
    :catch_1
    move-exception p1

    .line 221
    goto :goto_5

    .line 222
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 223
    .line 224
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;

    .line 228
    .line 229
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 233
    .line 234
    .line 235
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    .line 236
    .line 237
    new-instance v4, Ljava/util/HashMap;

    .line 238
    .line 239
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->a:Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    new-instance v5, Ljava/util/HashMap;

    .line 245
    .line 246
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->b:Ljava/util/HashMap;

    .line 247
    .line 248
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    .line 252
    .line 253
    invoke-direct {v1, v4, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->a(Lcom/google/android/gms/internal/mlkit_vision_common/zziy;)[B

    .line 257
    .line 258
    .line 259
    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_4
    invoke-static {p1}, Lcom/google/android/datatransport/Event;->g(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-interface {v2, p1}, Lcom/google/android/datatransport/Transport;->a(Lcom/google/android/datatransport/Event;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :goto_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 269
    .line 270
    invoke-direct {v0, v3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    throw v0
.end method
