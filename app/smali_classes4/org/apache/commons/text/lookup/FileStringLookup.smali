.class final Lorg/apache/commons/text/lookup/FileStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;
.source "SourceFile"


# static fields
.field public static final c:Lorg/apache/commons/text/lookup/FileStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/FileStringLookup;

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
    sput-object v0, Lorg/apache/commons/text/lookup/FileStringLookup;->c:Lorg/apache/commons/text/lookup/FileStringLookup;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const/16 v0, 0x3a

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-lt v2, v3, :cond_3

    .line 20
    .line 21
    aget-object v1, v1, v5

    .line 22
    .line 23
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, -0x1

    .line 35
    if-ne v0, v2, :cond_2

    .line 36
    .line 37
    const-string p1, ""

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    add-int/2addr v0, v4

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;->b:Lorg/apache/commons/text/lookup/PathFence;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Lorg/apache/commons/text/lookup/PathFence;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-array v2, v3, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p1, v2, v5

    .line 65
    .line 66
    aput-object v1, v2, v4

    .line 67
    .line 68
    const-string p1, "Error looking up file [%s] with charset [%s]."

    .line 69
    .line 70
    invoke-static {v0, p1, v2}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    throw p1

    .line 75
    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p1, v0, v5

    .line 78
    .line 79
    const-string p1, "Bad file key format [%s], expected format is CharsetName:DocumentPath."

    .line 80
    .line 81
    invoke-static {p1, v0}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    throw p1
.end method
