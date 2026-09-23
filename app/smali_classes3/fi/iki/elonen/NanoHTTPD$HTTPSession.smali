.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTTPSession"
.end annotation


# instance fields
.field public final a:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field public final b:Ljava/io/OutputStream;

.field public final c:Ljava/io/BufferedInputStream;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lfi/iki/elonen/NanoHTTPD$Method;

.field public h:Ljava/util/HashMap;

.field public i:Ljava/util/HashMap;

.field public j:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

.field public k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public final synthetic n:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->n:Lfi/iki/elonen/NanoHTTPD;

    .line 5
    .line 6
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->a:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 7
    .line 8
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 9
    .line 10
    const/16 p2, 0x2000

    .line 11
    .line 12
    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->c:Ljava/io/BufferedInputStream;

    .line 16
    .line 17
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->b:Ljava/io/OutputStream;

    .line 18
    .line 19
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const-string p1, "127.0.0.1"

    .line 42
    .line 43
    :goto_1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->l:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 71
    .line 72
    return-void
.end method

.method public static e([BI)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 4
    .line 5
    if-ge v2, p1, :cond_2

    .line 6
    .line 7
    aget-byte v3, p0, v1

    .line 8
    .line 9
    const/16 v4, 0xd

    .line 10
    .line 11
    const/16 v5, 0xa

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    aget-byte v6, p0, v2

    .line 16
    .line 17
    if-ne v6, v5, :cond_0

    .line 18
    .line 19
    add-int/lit8 v6, v1, 0x3

    .line 20
    .line 21
    if-ge v6, p1, :cond_0

    .line 22
    .line 23
    add-int/lit8 v7, v1, 0x2

    .line 24
    .line 25
    aget-byte v7, p0, v7

    .line 26
    .line 27
    if-ne v7, v4, :cond_0

    .line 28
    .line 29
    aget-byte v4, p0, v6

    .line 30
    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x4

    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    if-ne v3, v5, :cond_1

    .line 37
    .line 38
    aget-byte v3, p0, v2

    .line 39
    .line 40
    if-ne v3, v5, :cond_1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v0
.end method

.method public static f(Ljava/nio/ByteBuffer;[B)[I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    array-length v3, p1

    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    array-length v2, p1

    .line 13
    add-int/lit16 v2, v2, 0x1000

    .line 14
    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v4, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v4, v2

    .line 29
    :goto_0
    invoke-virtual {p0, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    array-length v5, p1

    .line 33
    sub-int/2addr v4, v5

    .line 34
    move v5, v0

    .line 35
    :cond_2
    move v6, v0

    .line 36
    :goto_1
    if-ge v6, v4, :cond_6

    .line 37
    .line 38
    move v7, v0

    .line 39
    :goto_2
    array-length v8, p1

    .line 40
    if-ge v7, v8, :cond_5

    .line 41
    .line 42
    add-int v8, v6, v7

    .line 43
    .line 44
    aget-byte v8, v3, v8

    .line 45
    .line 46
    aget-byte v9, p1, v7

    .line 47
    .line 48
    if-eq v8, v9, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    array-length v8, p1

    .line 52
    add-int/lit8 v8, v8, -0x1

    .line 53
    .line 54
    if-ne v7, v8, :cond_4

    .line 55
    .line 56
    array-length v8, v1

    .line 57
    add-int/lit8 v8, v8, 0x1

    .line 58
    .line 59
    new-array v8, v8, [I

    .line 60
    .line 61
    array-length v9, v1

    .line 62
    invoke-static {v1, v0, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    array-length v1, v1

    .line 66
    add-int v9, v5, v6

    .line 67
    .line 68
    aput v9, v8, v1

    .line 69
    .line 70
    move-object v1, v8

    .line 71
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    add-int/2addr v5, v4

    .line 78
    array-length v4, p1

    .line 79
    sub-int v4, v2, v4

    .line 80
    .line 81
    array-length v6, p1

    .line 82
    invoke-static {v3, v4, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .line 84
    .line 85
    array-length v4, p1

    .line 86
    sub-int v4, v2, v4

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-ge v6, v4, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    :cond_7
    array-length v6, p1

    .line 99
    invoke-virtual {p0, v3, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    if-gtz v4, :cond_2

    .line 103
    .line 104
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/io/BufferedReader;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    :try_start_1
    const-string v0, "method"

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v2, 0x3f

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    if-ltz v2, :cond_1

    .line 48
    .line 49
    add-int/lit8 v4, v2, 0x1

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p0, v4, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {p3}, Lfi/iki/elonen/NanoHTTPD;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->m:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-string v0, "HTTP/1.1"

    .line 87
    .line 88
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->m:Ljava/lang/String;

    .line 89
    .line 90
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/util/logging/Logger;

    .line 91
    .line 92
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 93
    .line 94
    const-string v2, "no protocol version specified, strange. Assuming HTTP/1.1."

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_2
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    const/16 v1, 0x3a

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ltz v1, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string p1, "uri"

    .line 156
    .line 157
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 162
    .line 163
    const-string p2, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    .line 164
    .line 165
    invoke-direct {p1, v2, p2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_6
    new-instance p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 170
    .line 171
    const-string p2, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    .line 172
    .line 173
    invoke-direct {p1, v2, p2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_3
    new-instance p2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 178
    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string p4, "SERVER INTERNAL ERROR: IOException: "

    .line 182
    .line 183
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-direct {p2, p3, p1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 198
    .line 199
    .line 200
    throw p2
.end method

.method public final b(Lfi/iki/elonen/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->d:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-static {v0, v6}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->f(Ljava/nio/ByteBuffer;[B)[I

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    array-length v7, v6
    :try_end_0
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 23
    .line 24
    const/4 v9, 0x2

    .line 25
    if-lt v7, v9, :cond_12

    .line 26
    .line 27
    const/16 v7, 0x400

    .line 28
    .line 29
    :try_start_1
    new-array v10, v7, [B

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    move v12, v11

    .line 33
    move v13, v12

    .line 34
    :goto_0
    array-length v14, v6

    .line 35
    const/4 v15, 0x1

    .line 36
    sub-int/2addr v14, v15

    .line 37
    if-ge v12, v14, :cond_11

    .line 38
    .line 39
    aget v14, v6, v12

    .line 40
    .line 41
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    if-ge v14, v7, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    move-object/from16 v9, p0

    .line 57
    .line 58
    goto/16 :goto_d

    .line 59
    .line 60
    :catch_1
    move-exception v0

    .line 61
    move-object/from16 v9, p0

    .line 62
    .line 63
    goto/16 :goto_e

    .line 64
    .line 65
    :cond_0
    move v14, v7

    .line 66
    :goto_1
    invoke-virtual {v0, v10, v11, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    new-instance v7, Ljava/io/BufferedReader;

    .line 70
    .line 71
    new-instance v15, Ljava/io/InputStreamReader;

    .line 72
    .line 73
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 74
    .line 75
    invoke-direct {v9, v10, v11, v14}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ContentType;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v17

    .line 82
    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-direct {v15, v9, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v7, v15, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    if-eqz v9, :cond_10

    .line 97
    .line 98
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_10

    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const/4 v11, 0x0

    .line 109
    move-object v15, v11

    .line 110
    move/from16 v17, v13

    .line 111
    .line 112
    const/16 v18, 0x2

    .line 113
    .line 114
    move-object v13, v15

    .line 115
    :goto_2
    if-eqz v9, :cond_8

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v19

    .line 121
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v19

    .line 125
    if-lez v19, :cond_8

    .line 126
    .line 127
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->e:Ljava/util/regex/Pattern;

    .line 128
    .line 129
    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 134
    .line 135
    .line 136
    move-result v19

    .line 137
    if-eqz v19, :cond_6

    .line 138
    .line 139
    move-object/from16 v19, v4

    .line 140
    .line 141
    const/4 v4, 0x2

    .line 142
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    sget-object v4, Lfi/iki/elonen/NanoHTTPD;->g:Ljava/util/regex/Pattern;

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :goto_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_5

    .line 157
    .line 158
    move-object/from16 v16, v6

    .line 159
    .line 160
    const/4 v4, 0x1

    .line 161
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string v4, "name"

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_1

    .line 172
    .line 173
    const/4 v4, 0x2

    .line 174
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    move-object v11, v6

    .line 179
    goto :goto_4

    .line 180
    :cond_1
    const-string v4, "filename"

    .line 181
    .line 182
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_4

    .line 187
    .line 188
    const/4 v4, 0x2

    .line 189
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-nez v4, :cond_3

    .line 198
    .line 199
    if-lez v17, :cond_2

    .line 200
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v11, v17, 0x1

    .line 210
    .line 211
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    move-object v13, v6

    .line 223
    move/from16 v17, v11

    .line 224
    .line 225
    move-object v11, v4

    .line 226
    goto :goto_4

    .line 227
    :cond_2
    add-int/lit8 v17, v17, 0x1

    .line 228
    .line 229
    :cond_3
    move-object v13, v6

    .line 230
    :cond_4
    :goto_4
    move-object/from16 v6, v16

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_5
    :goto_5
    move-object/from16 v16, v6

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_6
    move-object/from16 v19, v4

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :goto_6
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->f:Ljava/util/regex/Pattern;

    .line 240
    .line 241
    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_7

    .line 250
    .line 251
    const/4 v4, 0x2

    .line 252
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    move-object v15, v2

    .line 261
    goto :goto_7

    .line 262
    :cond_7
    const/4 v4, 0x2

    .line 263
    :goto_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    add-int/lit8 v18, v18, 0x1

    .line 268
    .line 269
    move-object/from16 v2, p1

    .line 270
    .line 271
    move-object/from16 v6, v16

    .line 272
    .line 273
    move-object/from16 v4, v19

    .line 274
    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :cond_8
    move-object/from16 v19, v4

    .line 278
    .line 279
    move-object/from16 v16, v6

    .line 280
    .line 281
    const/4 v4, 0x2

    .line 282
    const/4 v2, 0x0

    .line 283
    :goto_8
    add-int/lit8 v6, v18, -0x1

    .line 284
    .line 285
    if-lez v18, :cond_a

    .line 286
    .line 287
    :goto_9
    aget-byte v7, v10, v2

    .line 288
    .line 289
    const/16 v9, 0xa

    .line 290
    .line 291
    if-eq v7, v9, :cond_9

    .line 292
    .line 293
    add-int/lit8 v2, v2, 0x1

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 297
    .line 298
    move/from16 v18, v6

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_a
    add-int/lit8 v14, v14, -0x4

    .line 302
    .line 303
    if-ge v2, v14, :cond_f

    .line 304
    .line 305
    aget v6, v16, v12

    .line 306
    .line 307
    add-int/2addr v6, v2

    .line 308
    add-int/lit8 v12, v12, 0x1

    .line 309
    .line 310
    aget v2, v16, v12

    .line 311
    .line 312
    add-int/lit8 v2, v2, -0x4

    .line 313
    .line 314
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    check-cast v7, Ljava/util/List;

    .line 322
    .line 323
    if-nez v7, :cond_b

    .line 324
    .line 325
    new-instance v7, Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :cond_b
    if-nez v15, :cond_c

    .line 334
    .line 335
    sub-int/2addr v2, v6

    .line 336
    new-array v2, v2, [B

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    .line 341
    new-instance v6, Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->a()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    invoke-direct {v6, v2, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    .line 352
    .line 353
    move-object/from16 v9, p0

    .line 354
    .line 355
    goto :goto_c

    .line 356
    :cond_c
    sub-int/2addr v2, v6

    .line 357
    move-object/from16 v9, p0

    .line 358
    .line 359
    :try_start_2
    invoke-virtual {v9, v0, v6, v2, v13}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->h(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-nez v6, :cond_d

    .line 368
    .line 369
    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :catch_2
    move-exception v0

    .line 374
    goto :goto_d

    .line 375
    :catch_3
    move-exception v0

    .line 376
    goto :goto_e

    .line 377
    :cond_d
    move v6, v4

    .line 378
    :goto_a
    new-instance v14, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v14

    .line 397
    if-eqz v14, :cond_e

    .line 398
    .line 399
    add-int/lit8 v6, v6, 0x1

    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    :goto_b
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    :goto_c
    move-object/from16 v2, p1

    .line 424
    .line 425
    move v9, v4

    .line 426
    move-object/from16 v6, v16

    .line 427
    .line 428
    move/from16 v13, v17

    .line 429
    .line 430
    move-object/from16 v4, v19

    .line 431
    .line 432
    const/16 v7, 0x400

    .line 433
    .line 434
    const/4 v11, 0x0

    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_f
    move-object/from16 v9, p0

    .line 438
    .line 439
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 440
    .line 441
    const-string v1, "Multipart header size exceeds MAX_HEADER_SIZE."

    .line 442
    .line 443
    invoke-direct {v0, v5, v1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :cond_10
    move-object/from16 v9, p0

    .line 448
    .line 449
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 450
    .line 451
    const-string v1, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    .line 452
    .line 453
    invoke-direct {v0, v8, v1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :cond_11
    move-object/from16 v9, p0

    .line 458
    .line 459
    return-void

    .line 460
    :cond_12
    move-object/from16 v9, p0

    .line 461
    .line 462
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 463
    .line 464
    const-string v1, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    .line 465
    .line 466
    invoke-direct {v0, v8, v1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0
    :try_end_2
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 470
    :goto_d
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-direct {v1, v5, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v1

    .line 480
    :goto_e
    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->k:Ljava/lang/String;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->k:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/util/StringTokenizer;

    .line 11
    .line 12
    const-string v2, "&"

    .line 13
    .line 14
    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v2, 0x3d

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ltz v2, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    move-object p1, v0

    .line 68
    :goto_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/util/List;

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 14

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    const-string v1, "text/plain"

    .line 4
    .line 5
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 6
    .line 7
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->n:Lfi/iki/elonen/NanoHTTPD;

    .line 8
    .line 9
    const-string v4, "NanoHttpd Shutdown"

    .line 10
    .line 11
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->a:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 12
    .line 13
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->c:Ljava/io/BufferedInputStream;

    .line 14
    .line 15
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->b:Ljava/io/OutputStream;

    .line 16
    .line 17
    const/16 v8, 0x2000

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    :try_start_0
    new-array v10, v8, [B

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    iput v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->d:I

    .line 24
    .line 25
    iput v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 26
    .line 27
    invoke-virtual {v6, v8}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v6, v10, v11, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result v8
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    const/4 v12, -0x1

    .line 35
    if-eq v8, v12, :cond_a

    .line 36
    .line 37
    :goto_0
    if-lez v8, :cond_1

    .line 38
    .line 39
    :try_start_2
    iget v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 40
    .line 41
    add-int/2addr v12, v8

    .line 42
    iput v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 43
    .line 44
    invoke-static {v10, v12}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e([BI)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    iput v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->d:I

    .line 49
    .line 50
    if-lez v8, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 54
    .line 55
    rsub-int v12, v8, 0x2000

    .line 56
    .line 57
    invoke-virtual {v6, v10, v8, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_b

    .line 64
    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :catch_1
    move-exception v0

    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :catch_2
    move-exception v0

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :catch_3
    move-exception v0

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :catch_4
    move-exception v0

    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_1
    :goto_1
    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->d:I

    .line 81
    .line 82
    iget v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 83
    .line 84
    if-ge v8, v12, :cond_2

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    .line 87
    .line 88
    .line 89
    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->d:I

    .line 90
    .line 91
    int-to-long v12, v8

    .line 92
    invoke-virtual {v6, v12, v13}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 93
    .line 94
    .line 95
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->h:Ljava/util/HashMap;

    .line 101
    .line 102
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 103
    .line 104
    if-nez v6, :cond_3

    .line 105
    .line 106
    new-instance v6, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 115
    .line 116
    .line 117
    :goto_2
    new-instance v6, Ljava/io/BufferedReader;

    .line 118
    .line 119
    new-instance v8, Ljava/io/InputStreamReader;

    .line 120
    .line 121
    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 122
    .line 123
    iget v13, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 124
    .line 125
    invoke-direct {v12, v10, v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 126
    .line 127
    .line 128
    invoke-direct {v8, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    .line 133
    .line 134
    new-instance v8, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->h:Ljava/util/HashMap;

    .line 140
    .line 141
    iget-object v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-virtual {p0, v6, v8, v10, v12}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->a(Ljava/io/BufferedReader;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->l:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v6, :cond_4

    .line 149
    .line 150
    :try_start_3
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 151
    .line 152
    const-string v12, "remote-addr"

    .line 153
    .line 154
    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 158
    .line 159
    const-string v12, "http-client-ip"

    .line 160
    .line 161
    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD$Method;->a(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    iput-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 175
    .line 176
    if-eqz v6, :cond_9

    .line 177
    .line 178
    const-string v0, "uri"

    .line 179
    .line 180
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/lang/String;

    .line 185
    .line 186
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->f:Ljava/lang/String;

    .line 187
    .line 188
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 189
    .line 190
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 191
    .line 192
    invoke-direct {v0, v6}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;-><init>(Ljava/util/HashMap;)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->j:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 196
    .line 197
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 198
    .line 199
    const-string v6, "connection"

    .line 200
    .line 201
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/String;

    .line 206
    .line 207
    const-string v6, "HTTP/1.1"

    .line 208
    .line 209
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->m:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    const/4 v8, 0x1

    .line 216
    if-eqz v6, :cond_6

    .line 217
    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    const-string v6, "(?i).*close.*"

    .line 221
    .line 222
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_6

    .line 227
    .line 228
    :cond_5
    move v0, v8

    .line 229
    goto :goto_3

    .line 230
    :cond_6
    move v0, v11

    .line 231
    :goto_3
    invoke-virtual {v3, p0}, Lfi/iki/elonen/NanoHTTPD;->e(Lfi/iki/elonen/NanoHTTPD$HTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 236
    .line 237
    const-string v6, "accept-encoding"

    .line 238
    .line 239
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Ljava/lang/String;

    .line 244
    .line 245
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->j:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 246
    .line 247
    invoke-virtual {v6, v9}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->a(Lfi/iki/elonen/NanoHTTPD$Response;)V

    .line 248
    .line 249
    .line 250
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 251
    .line 252
    invoke-virtual {v9, v6}, Lfi/iki/elonen/NanoHTTPD$Response;->m(Lfi/iki/elonen/NanoHTTPD$Method;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v9}, Lfi/iki/elonen/NanoHTTPD;->g(Lfi/iki/elonen/NanoHTTPD$Response;)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_7

    .line 260
    .line 261
    if-eqz v3, :cond_7

    .line 262
    .line 263
    const-string v6, "gzip"

    .line 264
    .line 265
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_7

    .line 270
    .line 271
    move v11, v8

    .line 272
    :cond_7
    invoke-virtual {v9, v11}, Lfi/iki/elonen/NanoHTTPD$Response;->k(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->l(Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->f(Ljava/io/OutputStream;)V

    .line 279
    .line 280
    .line 281
    if-eqz v0, :cond_8

    .line 282
    .line 283
    invoke-virtual {v9}, Lfi/iki/elonen/NanoHTTPD$Response;->d()Z

    .line 284
    .line 285
    .line 286
    move-result v0
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    if-nez v0, :cond_8

    .line 288
    .line 289
    invoke-static {v9}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_8
    :try_start_4
    new-instance v0, Ljava/net/SocketException;

    .line 297
    .line 298
    invoke-direct {v0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_9
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 303
    .line 304
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 305
    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v10, "BAD REQUEST: Syntax error. HTTP verb "

    .line 312
    .line 313
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    check-cast v0, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, " unhandled."

    .line 326
    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-direct {v3, v4, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v3

    .line 338
    :cond_a
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v7}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    new-instance v0, Ljava/net/SocketException;

    .line 345
    .line 346
    invoke-direct {v0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0

    .line 350
    :catch_5
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v7}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Ljava/net/SocketException;

    .line 357
    .line 358
    invoke-direct {v0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :catch_6
    move-exception v0

    .line 363
    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->a()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->f(Ljava/io/OutputStream;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v7}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    .line 381
    .line 382
    :goto_5
    invoke-static {v9}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 386
    .line 387
    .line 388
    goto :goto_8

    .line 389
    :goto_6
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    .line 395
    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->f(Ljava/io/OutputStream;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v7}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    const-string v4, "SSL PROTOCOL FAILURE: "

    .line 427
    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v0, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->f(Ljava/io/OutputStream;)V

    .line 447
    .line 448
    .line 449
    invoke-static {v7}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    goto :goto_5

    .line 453
    :goto_8
    return-void

    .line 454
    :goto_9
    throw v0

    .line 455
    :goto_a
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 456
    :goto_b
    invoke-static {v9}, Lfi/iki/elonen/NanoHTTPD;->a(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 460
    .line 461
    .line 462
    throw v0
.end method

.method public final g(Ljava/util/HashMap;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v4, "content-length"

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v3, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v3, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->d:I

    .line 32
    .line 33
    iget v4, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 34
    .line 35
    if-ge v3, v4, :cond_1

    .line 36
    .line 37
    sub-int/2addr v4, v3

    .line 38
    int-to-long v3, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-wide v3, v5

    .line 41
    :goto_0
    const-wide/16 v7, 0x400

    .line 42
    .line 43
    cmp-long v7, v3, v7

    .line 44
    .line 45
    if-gez v7, :cond_2

    .line 46
    .line 47
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v8, Ljava/io/DataOutputStream;

    .line 53
    .line 54
    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    move-object v9, v8

    .line 58
    move-object v8, v2

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_2
    :try_start_1
    iget-object v7, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->a:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 64
    .line 65
    invoke-interface {v7}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->a()Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    new-instance v8, Ljava/io/RandomAccessFile;

    .line 70
    .line 71
    iget-object v7, v7, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->a:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v9, "rw"

    .line 78
    .line 79
    invoke-direct {v8, v7, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    move-object v7, v2

    .line 83
    move-object v9, v8

    .line 84
    :goto_1
    const/16 v10, 0x200

    .line 85
    .line 86
    :try_start_2
    new-array v10, v10, [B

    .line 87
    .line 88
    :cond_3
    :goto_2
    iget v11, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    if-ltz v11, :cond_4

    .line 92
    .line 93
    cmp-long v11, v3, v5

    .line 94
    .line 95
    if-lez v11, :cond_4

    .line 96
    .line 97
    iget-object v11, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->c:Ljava/io/BufferedInputStream;

    .line 98
    .line 99
    const-wide/16 v13, 0x200

    .line 100
    .line 101
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v13

    .line 105
    long-to-int v13, v13

    .line 106
    invoke-virtual {v11, v10, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    iput v11, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->e:I

    .line 111
    .line 112
    int-to-long v13, v11

    .line 113
    sub-long/2addr v3, v13

    .line 114
    if-lez v11, :cond_3

    .line 115
    .line 116
    invoke-interface {v9, v10, v12, v11}, Ljava/io/DataOutput;->write([BII)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    move-object v2, v8

    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_4
    if-eqz v7, :cond_5

    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-static {v3, v12, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    .line 146
    .line 147
    .line 148
    move-result-wide v17

    .line 149
    const-wide/16 v15, 0x0

    .line 150
    .line 151
    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v8, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    .line 157
    .line 158
    :goto_3
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->f:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 159
    .line 160
    iget-object v5, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_9

    .line 167
    .line 168
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ContentType;

    .line 169
    .line 170
    iget-object v4, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 171
    .line 172
    const-string v5, "content-type"

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {v2, v4}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v4, v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->b:Ljava/lang/String;

    .line 184
    .line 185
    const-string v5, "multipart/form-data"

    .line 186
    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_7

    .line 192
    .line 193
    iget-object v4, v2, Lfi/iki/elonen/NanoHTTPD$ContentType;->d:Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v4, :cond_6

    .line 196
    .line 197
    iget-object v4, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->h:Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-virtual {v1, v2, v3, v4, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->b(Lfi/iki/elonen/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    .line 204
    .line 205
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 206
    .line 207
    const-string v3, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    .line 208
    .line 209
    invoke-direct {v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_7
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    new-array v5, v5, [B

    .line 218
    .line 219
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 220
    .line 221
    .line 222
    new-instance v3, Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ContentType;->a()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-direct {v3, v5, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    const-string v3, "application/x-www-form-urlencoded"

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_8

    .line 242
    .line 243
    iget-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->h:Ljava/util/HashMap;

    .line 244
    .line 245
    invoke-virtual {v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_a

    .line 254
    .line 255
    const-string v3, "postData"

    .line 256
    .line 257
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_9
    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->c:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 262
    .line 263
    iget-object v5, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 264
    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_a

    .line 270
    .line 271
    const-string v4, "content"

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-virtual {v1, v3, v12, v5, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->h(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    .line 283
    .line 284
    :cond_a
    :goto_4
    invoke-static {v8}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    :try_start_3
    new-instance v3, Ljava/lang/Error;

    .line 290
    .line 291
    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    :goto_5
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    throw v0
.end method

.method public final h(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->a:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 5
    .line 6
    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->a()Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->a:Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    add-int/2addr p2, p3

    .line 34
    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p4, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    move-object p4, v1

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    move-object p4, v1

    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception p1

    .line 61
    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/Error;

    .line 62
    .line 63
    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :goto_1
    invoke-static {p4}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_0
    const-string p1, ""

    .line 72
    .line 73
    return-object p1
.end method
