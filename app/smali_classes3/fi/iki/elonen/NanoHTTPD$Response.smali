.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;,
        Lfi/iki/elonen/NanoHTTPD$Response$Status;,
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field public final c:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/io/InputStream;

.field public final h:J

.field public final i:Ljava/util/Map;

.field public final j:Ljava/util/HashMap;

.field public k:Lfi/iki/elonen/NanoHTTPD$Method;

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response$1;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->i:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->j:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->c:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 19
    .line 20
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->f:Ljava/lang/String;

    .line 21
    .line 22
    const-wide/16 p1, 0x0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p3, :cond_0

    .line 26
    .line 27
    new-instance p3, Ljava/io/ByteArrayInputStream;

    .line 28
    .line 29
    new-array p4, v0, [B

    .line 30
    .line 31
    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->g:Ljava/io/InputStream;

    .line 35
    .line 36
    iput-wide p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->h:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->g:Ljava/io/InputStream;

    .line 40
    .line 41
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->h:J

    .line 42
    .line 43
    :goto_0
    iget-wide p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->h:J

    .line 44
    .line 45
    cmp-long p1, p3, p1

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    if-gez p1, :cond_1

    .line 49
    .line 50
    move v0, p2

    .line 51
    :cond_1
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->l:Z

    .line 52
    .line 53
    iput-boolean p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->n:Z

    .line 54
    .line 55
    return-void
.end method

.method public static e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, ": "

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "\r\n"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->i:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lfi/iki/elonen/NanoHTTPD$Response$1;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$Response$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->g:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "close"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final f(Ljava/io/OutputStream;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->f:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    .line 6
    .line 7
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "GMT"

    .line 13
    .line 14
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->c:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 22
    .line 23
    if-eqz v2, :cond_d

    .line 24
    .line 25
    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    .line 26
    .line 27
    new-instance v4, Ljava/io/BufferedWriter;

    .line 28
    .line 29
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 30
    .line 31
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$ContentType;

    .line 32
    .line 33
    invoke-direct {v6, v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Lfi/iki/elonen/NanoHTTPD$ContentType;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 48
    .line 49
    .line 50
    const-string v4, "HTTP/1.1 "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v4, " \r\n"

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    const-string v2, "Content-Type"

    .line 72
    .line 73
    invoke-static {v3, v2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_0
    :goto_0
    const-string v0, "date"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    const-string v0, "Date"

    .line 89
    .line 90
    new-instance v2, Ljava/util/Date;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->i:Ljava/util/Map;

    .line 103
    .line 104
    check-cast v0, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v3, v2, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    const-string v0, "connection"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    const-string v0, "Connection"

    .line 151
    .line 152
    iget-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->n:Z

    .line 153
    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    const-string v1, "keep-alive"

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    const-string v1, "close"

    .line 160
    .line 161
    :goto_2
    invoke-static {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    const-string v0, "content-length"

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    iput-boolean v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->m:Z

    .line 173
    .line 174
    :cond_5
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->m:Z

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    const-string v0, "Content-Encoding"

    .line 179
    .line 180
    const-string v1, "gzip"

    .line 181
    .line 182
    invoke-static {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->l:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    :cond_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->g:Ljava/io/InputStream;

    .line 189
    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    :try_start_1
    iget-wide v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->h:J

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    const-wide/16 v1, 0x0

    .line 196
    .line 197
    :goto_3
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->k:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 198
    .line 199
    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Method;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 200
    .line 201
    if-eq v4, v5, :cond_8

    .line 202
    .line 203
    iget-boolean v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->l:Z

    .line 204
    .line 205
    if-eqz v4, :cond_8

    .line 206
    .line 207
    const-string v4, "Transfer-Encoding"

    .line 208
    .line 209
    const-string v6, "chunked"

    .line 210
    .line 211
    invoke-static {v3, v4, v6}, Lfi/iki/elonen/NanoHTTPD$Response;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    iget-boolean v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->m:Z

    .line 216
    .line 217
    if-nez v4, :cond_9

    .line 218
    .line 219
    invoke-virtual {p0, v3, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->j(Ljava/io/PrintWriter;J)J

    .line 220
    .line 221
    .line 222
    move-result-wide v1

    .line 223
    :cond_9
    :goto_4
    const-string v4, "\r\n"

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 229
    .line 230
    .line 231
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->k:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 232
    .line 233
    const-wide/16 v6, -0x1

    .line 234
    .line 235
    if-eq v3, v5, :cond_b

    .line 236
    .line 237
    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->l:Z

    .line 238
    .line 239
    if-eqz v3, :cond_b

    .line 240
    .line 241
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;

    .line 242
    .line 243
    invoke-direct {v1, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .line 245
    .line 246
    iget-boolean v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->m:Z

    .line 247
    .line 248
    if-eqz v2, :cond_a

    .line 249
    .line 250
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 251
    .line 252
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v2, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->i(Ljava/io/OutputStream;J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_a
    invoke-virtual {p0, v1, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->i(Ljava/io/OutputStream;J)V

    .line 263
    .line 264
    .line 265
    :goto_5
    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->a()V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_b
    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->m:Z

    .line 270
    .line 271
    if-eqz v3, :cond_c

    .line 272
    .line 273
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 274
    .line 275
    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v1, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->i(Ljava/io/OutputStream;J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_c
    invoke-virtual {p0, p1, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->i(Ljava/io/OutputStream;J)V

    .line 286
    .line 287
    .line 288
    :goto_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 289
    .line 290
    .line 291
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_d
    new-instance p1, Ljava/lang/Error;

    .line 296
    .line 297
    const-string v0, "sendResponse(): Status can\'t be null."

    .line 298
    .line 299
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    :goto_7
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/util/logging/Logger;

    .line 304
    .line 305
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 306
    .line 307
    const-string v2, "Could not send response to the client"

    .line 308
    .line 309
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final i(Ljava/io/OutputStream;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x4000

    .line 2
    .line 3
    long-to-int v2, v0

    .line 4
    new-array v2, v2, [B

    .line 5
    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    cmp-long v3, p2, v3

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v4

    .line 16
    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    cmp-long v5, p2, v5

    .line 19
    .line 20
    if-gtz v5, :cond_2

    .line 21
    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    :cond_2
    if-eqz v3, :cond_3

    .line 25
    .line 26
    move-wide v5, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    :goto_1
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$Response;->g:Ljava/io/InputStream;

    .line 33
    .line 34
    long-to-int v5, v5

    .line 35
    invoke-virtual {v7, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-gtz v5, :cond_5

    .line 40
    .line 41
    :cond_4
    return-void

    .line 42
    :cond_5
    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    int-to-long v5, v5

    .line 48
    sub-long/2addr p2, v5

    .line 49
    goto :goto_0
.end method

.method public final j(Ljava/io/PrintWriter;J)J
    .locals 3

    .line 1
    const-string v0, "content-length"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/util/logging/Logger;

    .line 15
    .line 16
    const-string v2, "content-length was no number "

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Content-Length: "

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "\r\n"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-wide p2
.end method

.method public final k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public final l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final m(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->k:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    return-void
.end method
