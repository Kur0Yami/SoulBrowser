.class final Lorg/apache/commons/text/lookup/PropertiesStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;
.source "SourceFile"


# static fields
.field public static final c:Lorg/apache/commons/text/lookup/PropertiesStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/PropertiesStringLookup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    check-cast v1, [Ljava/nio/file/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/text/lookup/PropertiesStringLookup;->c:Lorg/apache/commons/text/lookup/PropertiesStringLookup;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, "::"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x2

    .line 15
    if-lt v2, v5, :cond_5

    .line 16
    .line 17
    aget-object v1, v1, v4

    .line 18
    .line 19
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, -0x1

    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    add-int/2addr v0, v5

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;->b:Lorg/apache/commons/text/lookup/PathFence;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lorg/apache/commons/text/lookup/PathFence;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-array v6, v4, [Ljava/nio/file/OpenOption;

    .line 53
    .line 54
    invoke-static {v2, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 55
    .line 56
    .line 57
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    return-object p1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception v2

    .line 82
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v1, v2, v4

    .line 89
    .line 90
    aput-object p1, v2, v3

    .line 91
    .line 92
    const-string p1, "Error looking up properties [%s] and key [%s]."

    .line 93
    .line 94
    invoke-static {v0, p1, v2}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_5
    new-array v0, v5, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object p1, v0, v4

    .line 102
    .line 103
    const-string p1, "DocumentPath::Key"

    .line 104
    .line 105
    aput-object p1, v0, v3

    .line 106
    .line 107
    const-string p1, "Bad properties key format [%s]; expected format is %s."

    .line 108
    .line 109
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    throw p1
.end method
