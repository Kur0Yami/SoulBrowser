.class public Lcom/mycompany/app/script/UnicodeReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public final c:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    new-instance v2, Ljava/io/PushbackInputStream;

    .line 8
    .line 9
    invoke-direct {v2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {v2, v1, p1, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    aget-byte v3, v1, p1

    .line 18
    .line 19
    const/16 v4, -0x11

    .line 20
    .line 21
    const/4 v5, -0x1

    .line 22
    const/4 v6, 0x2

    .line 23
    const/4 v7, 0x1

    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    aget-byte v4, v1, v7

    .line 27
    .line 28
    const/16 v8, -0x45

    .line 29
    .line 30
    if-ne v4, v8, :cond_0

    .line 31
    .line 32
    aget-byte v4, v1, v6

    .line 33
    .line 34
    const/16 v8, -0x41

    .line 35
    .line 36
    if-ne v4, v8, :cond_0

    .line 37
    .line 38
    add-int/lit8 p2, v0, -0x3

    .line 39
    .line 40
    const-string v3, "UTF-8"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, -0x2

    .line 44
    if-ne v3, v4, :cond_1

    .line 45
    .line 46
    aget-byte v8, v1, v7

    .line 47
    .line 48
    if-ne v8, v5, :cond_1

    .line 49
    .line 50
    add-int/lit8 p2, v0, -0x2

    .line 51
    .line 52
    const-string v3, "UTF-16BE"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-ne v3, v5, :cond_2

    .line 56
    .line 57
    aget-byte v8, v1, v7

    .line 58
    .line 59
    if-ne v8, v4, :cond_2

    .line 60
    .line 61
    add-int/lit8 p2, v0, -0x2

    .line 62
    .line 63
    const-string v3, "UTF-16LE"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v8, 0x3

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    aget-byte v9, v1, v7

    .line 70
    .line 71
    if-nez v9, :cond_3

    .line 72
    .line 73
    aget-byte v9, v1, v6

    .line 74
    .line 75
    if-ne v9, v4, :cond_3

    .line 76
    .line 77
    aget-byte v9, v1, v8

    .line 78
    .line 79
    if-ne v9, v5, :cond_3

    .line 80
    .line 81
    add-int/lit8 p2, v0, -0x4

    .line 82
    .line 83
    const-string v3, "UTF-32BE"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    if-ne v3, v5, :cond_4

    .line 87
    .line 88
    aget-byte v3, v1, v7

    .line 89
    .line 90
    if-ne v3, v4, :cond_4

    .line 91
    .line 92
    aget-byte v3, v1, v6

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    aget-byte v3, v1, v8

    .line 97
    .line 98
    if-nez v3, :cond_4

    .line 99
    .line 100
    add-int/lit8 p2, v0, -0x4

    .line 101
    .line 102
    const-string v3, "UTF-32LE"

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move-object v3, p2

    .line 106
    move p2, v0

    .line 107
    :goto_0
    if-lez p2, :cond_5

    .line 108
    .line 109
    sub-int/2addr v0, p2

    .line 110
    invoke-virtual {v2, v1, v0, p2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    if-ge p2, v5, :cond_6

    .line 115
    .line 116
    invoke-virtual {v2, v1, p1, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_1
    if-nez v3, :cond_7

    .line 120
    .line 121
    new-instance p1, Ljava/io/InputStreamReader;

    .line 122
    .line 123
    invoke-direct {p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    new-instance p1, Ljava/io/InputStreamReader;

    .line 130
    .line 131
    invoke-direct {p1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read([CII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
