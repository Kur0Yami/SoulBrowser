.class final Lorg/apache/commons/text/lookup/UrlStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field public static final b:Lorg/apache/commons/text/lookup/UrlStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/UrlStringLookup;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/text/lookup/UrlStringLookup;->b:Lorg/apache/commons/text/lookup/UrlStringLookup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lorg/apache/commons/text/lookup/AbstractStringLookup;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-lt v1, v2, :cond_4

    .line 16
    .line 17
    aget-object v0, v0, v4

    .line 18
    .line 19
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v5, -0x1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v1, 0x3a

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, v5, :cond_2

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    add-int/2addr v1, v3

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Ljava/io/StringWriter;

    .line 49
    .line 50
    const/16 v7, 0x2000

    .line 51
    .line 52
    invoke-direct {v6, v7}, Ljava/io/StringWriter;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-array v7, v7, [C

    .line 56
    .line 57
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v8, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    .line 67
    .line 68
    invoke-direct {v1, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    :goto_1
    :try_start_2
    invoke-virtual {v1, v7}, Ljava/io/Reader;->read([C)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eq v5, v9, :cond_3

    .line 76
    .line 77
    invoke-virtual {v6, v7, v4, v9}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v5

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    return-object p1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_6

    .line 96
    :catchall_1
    move-exception v1

    .line 97
    goto :goto_4

    .line 98
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catchall_2
    move-exception v1

    .line 103
    :try_start_6
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_3
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 107
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :catchall_3
    move-exception v5

    .line 112
    :try_start_8
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_5
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 116
    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object p1, v2, v4

    .line 119
    .line 120
    aput-object v0, v2, v3

    .line 121
    .line 122
    const-string p1, "Error looking up URL [%s] with Charset [%s]."

    .line 123
    .line 124
    invoke-static {v1, p1, v2}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    throw p1

    .line 129
    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p1, v0, v4

    .line 132
    .line 133
    const-string p1, "Bad URL key format [%s]; expected format is DocumentPath:Key."

    .line 134
    .line 135
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    throw p1
.end method
