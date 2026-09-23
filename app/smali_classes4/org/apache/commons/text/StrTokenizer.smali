.class public Lorg/apache/commons/text/StrTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public c:[C

.field public f:[Ljava/lang/String;

.field public g:I

.field public h:Lorg/apache/commons/text/StrMatcher;

.field public i:Lorg/apache/commons/text/StrMatcher;

.field public j:Lorg/apache/commons/text/StrMatcher;

.field public k:Lorg/apache/commons/text/StrMatcher;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/text/StrTokenizer;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/text/StrTokenizer;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/apache/commons/text/StrMatcher;->a:Lorg/apache/commons/text/StrMatcher;

    .line 7
    .line 8
    iput-object v1, v0, Lorg/apache/commons/text/StrTokenizer;->h:Lorg/apache/commons/text/StrMatcher;

    .line 9
    .line 10
    sget-object v1, Lorg/apache/commons/text/StrMatcher;->e:Lorg/apache/commons/text/StrMatcher;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-object v1, v0, Lorg/apache/commons/text/StrTokenizer;->i:Lorg/apache/commons/text/StrMatcher;

    .line 15
    .line 16
    :cond_0
    sget-object v2, Lorg/apache/commons/text/StrMatcher;->f:Lorg/apache/commons/text/StrMatcher;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iput-object v2, v0, Lorg/apache/commons/text/StrTokenizer;->j:Lorg/apache/commons/text/StrMatcher;

    .line 21
    .line 22
    :cond_1
    sget-object v3, Lorg/apache/commons/text/StrMatcher;->d:Lorg/apache/commons/text/StrMatcher;

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iput-object v3, v0, Lorg/apache/commons/text/StrTokenizer;->k:Lorg/apache/commons/text/StrMatcher;

    .line 27
    .line 28
    :cond_2
    const/4 v4, 0x0

    .line 29
    iput-boolean v4, v0, Lorg/apache/commons/text/StrTokenizer;->l:Z

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/text/StrTokenizer;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/apache/commons/text/StrTokenizer;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v5, Lorg/apache/commons/text/StrMatcher;->b:Lorg/apache/commons/text/StrMatcher;

    .line 37
    .line 38
    iput-object v5, v0, Lorg/apache/commons/text/StrTokenizer;->h:Lorg/apache/commons/text/StrMatcher;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iput-object v1, v0, Lorg/apache/commons/text/StrTokenizer;->i:Lorg/apache/commons/text/StrMatcher;

    .line 43
    .line 44
    :cond_3
    if-eqz v2, :cond_4

    .line 45
    .line 46
    iput-object v2, v0, Lorg/apache/commons/text/StrTokenizer;->j:Lorg/apache/commons/text/StrMatcher;

    .line 47
    .line 48
    :cond_4
    if-eqz v3, :cond_5

    .line 49
    .line 50
    iput-object v3, v0, Lorg/apache/commons/text/StrTokenizer;->k:Lorg/apache/commons/text/StrMatcher;

    .line 51
    .line 52
    :cond_5
    iput-boolean v4, v0, Lorg/apache/commons/text/StrTokenizer;->l:Z

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/text/StrMatcher;->c:Lorg/apache/commons/text/StrMatcher;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->h:Lorg/apache/commons/text/StrMatcher;

    .line 7
    .line 8
    sget-object v0, Lorg/apache/commons/text/StrMatcher;->f:Lorg/apache/commons/text/StrMatcher;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->i:Lorg/apache/commons/text/StrMatcher;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->j:Lorg/apache/commons/text/StrMatcher;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->k:Lorg/apache/commons/text/StrMatcher;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lorg/apache/commons/text/StrTokenizer;->l:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->c:[C

    .line 21
    .line 22
    return-void
.end method

.method public static c([CIIII)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p4, :cond_2

    .line 4
    .line 5
    add-int v2, p1, v1

    .line 6
    .line 7
    if-ge v2, p2, :cond_1

    .line 8
    .line 9
    aget-char v2, p0, v2

    .line 10
    .line 11
    add-int v3, p3, v1

    .line 12
    .line 13
    aget-char v3, p0, v3

    .line 14
    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    return v0

    .line 22
    :cond_2
    const/4 p0, 0x1

    .line 23
    return p0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/apache/commons/text/StrTokenizer;->l:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    const-string v0, "add() is unsupported"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->c:[C

    .line 6
    .line 7
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->b:[Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/text/StrTokenizer;->e([CI)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    array-length v2, v0

    .line 27
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/text/StrTokenizer;->e([CI)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, [Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lorg/apache/commons/text/StrTokenizer;

    .line 7
    .line 8
    iget-object v2, v1, Lorg/apache/commons/text/StrTokenizer;->c:[C

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, [C->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, [C

    .line 17
    .line 18
    iput-object v2, v1, Lorg/apache/commons/text/StrTokenizer;->c:[C

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    iput v2, v1, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 22
    .line 23
    iput-object v0, v1, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :catch_0
    return-object v0
.end method

.method public final d([CIILorg/apache/commons/text/StrBuilder;Ljava/util/ArrayList;II)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p4, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-lez p7, :cond_0

    .line 6
    .line 7
    move v2, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    :goto_0
    move v3, v0

    .line 11
    :goto_1
    if-ge p2, p3, :cond_7

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-static {p1, p2, p3, p6, p7}, Lorg/apache/commons/text/StrTokenizer;->c([CIIII)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_6

    .line 20
    .line 21
    add-int v4, p2, p7

    .line 22
    .line 23
    invoke-static {p1, v4, p3, p6, p7}, Lorg/apache/commons/text/StrTokenizer;->c([CIIII)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {p4, p1, p2, p7}, Lorg/apache/commons/text/StrBuilder;->b([CII)V

    .line 30
    .line 31
    .line 32
    mul-int/lit8 v3, p7, 0x2

    .line 33
    .line 34
    add-int/2addr p2, v3

    .line 35
    iget v3, p4, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v0

    .line 39
    move p2, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/text/StrTokenizer;->h:Lorg/apache/commons/text/StrMatcher;

    .line 42
    .line 43
    invoke-virtual {v4, p1, p2, p3}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-lez v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {p4, v0, v3}, Lorg/apache/commons/text/StrBuilder;->d(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p5, p1}, Lorg/apache/commons/text/StrTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    add-int/2addr p2, v4

    .line 57
    return p2

    .line 58
    :cond_3
    if-lez p7, :cond_4

    .line 59
    .line 60
    invoke-static {p1, p2, p3, p6, p7}, Lorg/apache/commons/text/StrTokenizer;->c([CIIII)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    add-int/2addr p2, p7

    .line 67
    move v2, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/text/StrTokenizer;->j:Lorg/apache/commons/text/StrMatcher;

    .line 70
    .line 71
    invoke-virtual {v4, p1, p2, p3}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_5

    .line 76
    .line 77
    :goto_2
    add-int/2addr p2, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/text/StrTokenizer;->k:Lorg/apache/commons/text/StrMatcher;

    .line 80
    .line 81
    invoke-virtual {v4, p1, p2, p3}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-lez v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p4, p1, p2, v4}, Lorg/apache/commons/text/StrBuilder;->b([CII)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    add-int/lit8 v3, p2, 0x1

    .line 92
    .line 93
    aget-char p2, p1, p2

    .line 94
    .line 95
    iget v4, p4, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 96
    .line 97
    add-int/2addr v4, v1

    .line 98
    invoke-virtual {p4, v4}, Lorg/apache/commons/text/StrBuilder;->c(I)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p4, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 102
    .line 103
    iget v5, p4, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 104
    .line 105
    add-int/lit8 v6, v5, 0x1

    .line 106
    .line 107
    iput v6, p4, Lorg/apache/commons/text/StrBuilder;->f:I

    .line 108
    .line 109
    aput-char p2, v4, v5

    .line 110
    .line 111
    move p2, v3

    .line 112
    move v3, v6

    .line 113
    goto :goto_1

    .line 114
    :cond_7
    invoke-virtual {p4, v0, v3}, Lorg/apache/commons/text/StrBuilder;->d(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p5, p1}, Lorg/apache/commons/text/StrTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 p1, -0x1

    .line 122
    return p1
.end method

.method public e([CI)Ljava/util/List;
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    :cond_0
    move-object v0, p0

    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_1
    new-instance v4, Lorg/apache/commons/text/StrBuilder;

    .line 9
    .line 10
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    new-array v0, v0, [C

    .line 16
    .line 17
    iput-object v0, v4, Lorg/apache/commons/text/StrBuilder;->c:[C

    .line 18
    .line 19
    new-instance v5, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-ltz v0, :cond_8

    .line 26
    .line 27
    if-ge v0, p2, :cond_8

    .line 28
    .line 29
    move v2, v0

    .line 30
    :goto_1
    if-ge v2, p2, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->j:Lorg/apache/commons/text/StrMatcher;

    .line 33
    .line 34
    invoke-virtual {v0, p1, v2, p2}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lorg/apache/commons/text/StrTokenizer;->k:Lorg/apache/commons/text/StrMatcher;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lorg/apache/commons/text/StrTokenizer;->h:Lorg/apache/commons/text/StrMatcher;

    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-gtz v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/commons/text/StrTokenizer;->i:Lorg/apache/commons/text/StrMatcher;

    .line 59
    .line 60
    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-lez v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    add-int/2addr v2, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_2
    const-string v8, ""

    .line 70
    .line 71
    if-lt v2, p2, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/text/StrTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, -0x1

    .line 77
    move-object v1, p1

    .line 78
    move v3, p2

    .line 79
    move p1, v0

    .line 80
    move-object v0, p0

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->h:Lorg/apache/commons/text/StrMatcher;

    .line 83
    .line 84
    invoke-virtual {v0, p1, v2, p2}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/text/StrTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    add-int/2addr v2, v0

    .line 94
    move-object v0, p0

    .line 95
    move-object v1, p1

    .line 96
    move v3, p2

    .line 97
    move p1, v2

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->i:Lorg/apache/commons/text/StrMatcher;

    .line 100
    .line 101
    invoke-virtual {v0, p1, v2, p2}, Lorg/apache/commons/text/StrMatcher;->a([CII)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-lez v7, :cond_6

    .line 106
    .line 107
    move v6, v2

    .line 108
    add-int v2, v6, v7

    .line 109
    .line 110
    move-object v0, p0

    .line 111
    move-object v1, p1

    .line 112
    move v3, p2

    .line 113
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/text/StrTokenizer;->d([CIILorg/apache/commons/text/StrBuilder;Ljava/util/ArrayList;II)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    move-object v1, p1

    .line 119
    move v3, p2

    .line 120
    move v6, v2

    .line 121
    const/4 p1, 0x0

    .line 122
    const/4 v7, 0x0

    .line 123
    move-object v0, p0

    .line 124
    move v6, p1

    .line 125
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/text/StrTokenizer;->d([CIILorg/apache/commons/text/StrBuilder;Ljava/util/ArrayList;II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    :goto_3
    if-lt p1, v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/text/StrTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    move v0, p1

    .line 135
    move-object p1, v1

    .line 136
    move p2, v3

    .line 137
    goto :goto_0

    .line 138
    :cond_8
    move-object v0, p0

    .line 139
    return-object v5

    .line 140
    :goto_4
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 141
    .line 142
    return-object p1
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 10
    .line 11
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    iput v2, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 14
    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->hasPrevious()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    iput v1, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 14
    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/StrTokenizer;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    return v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "remove() is unsupported"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    const-string v0, "set() is unsupported"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "StrTokenizer[not tokenized yet]"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "StrTokenizer"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/text/StrTokenizer;->b()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lorg/apache/commons/text/StrTokenizer;->f:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
