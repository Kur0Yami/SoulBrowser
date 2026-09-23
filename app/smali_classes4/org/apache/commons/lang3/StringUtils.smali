.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[C)Z
    .locals 10

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->b(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    array-length v2, p1

    .line 20
    add-int/lit8 v3, v0, -0x1

    .line 21
    .line 22
    add-int/lit8 v4, v2, -0x1

    .line 23
    .line 24
    move v5, v1

    .line 25
    :goto_0
    if-ge v5, v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    move v7, v1

    .line 32
    :goto_1
    if-ge v7, v2, :cond_3

    .line 33
    .line 34
    aget-char v8, p1, v7

    .line 35
    .line 36
    if-ne v8, v6, :cond_2

    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    if-eq v7, v4, :cond_1

    .line 45
    .line 46
    if-ge v5, v3, :cond_2

    .line 47
    .line 48
    add-int/lit8 v8, v7, 0x1

    .line 49
    .line 50
    aget-char v8, p1, v8

    .line 51
    .line 52
    add-int/lit8 v9, v5, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-ne v8, v9, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    :goto_2
    return v1
.end method

.method public static varargs b(Ljava/lang/String;[C)Z
    .locals 10

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v1, v0, -0x1

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    add-int/lit8 v3, v2, -0x1

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    move v7, v4

    .line 24
    :goto_1
    if-ge v7, v2, :cond_3

    .line 25
    .line 26
    aget-char v8, p1, v7

    .line 27
    .line 28
    if-ne v8, v6, :cond_2

    .line 29
    .line 30
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    if-eq v7, v3, :cond_1

    .line 37
    .line 38
    if-ge v5, v1, :cond_2

    .line 39
    .line 40
    add-int/lit8 v8, v7, 0x1

    .line 41
    .line 42
    aget-char v8, p1, v8

    .line 43
    .line 44
    add-int/lit8 v9, v5, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ne v8, v9, :cond_2

    .line 51
    .line 52
    :cond_1
    return v4

    .line 53
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 60
    return p0
.end method

.method public static c(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static d(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static e(CI)Ljava/lang/String;
    .locals 1

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    new-array p1, p1, [C

    .line 9
    .line 10
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
