.class public Lorg/apache/commons/text/StringTokenizer;
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


# instance fields
.field public c:[C

.field public f:[Ljava/lang/String;

.field public g:I

.field public h:Lorg/apache/commons/text/matcher/StringMatcher;

.field public i:Lorg/apache/commons/text/matcher/StringMatcher;

.field public j:Lorg/apache/commons/text/matcher/StringMatcher;

.field public k:Lorg/apache/commons/text/matcher/StringMatcher;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/text/StringTokenizer;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/text/StringTokenizer;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/apache/commons/text/matcher/StringMatcherFactory;->a:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 7
    .line 8
    iput-object v1, v0, Lorg/apache/commons/text/StringTokenizer;->h:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 9
    .line 10
    sget-object v1, Lorg/apache/commons/text/matcher/StringMatcherFactory;->b:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 11
    .line 12
    iput-object v1, v0, Lorg/apache/commons/text/StringTokenizer;->i:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 13
    .line 14
    sget-object v2, Lorg/apache/commons/text/matcher/StringMatcherFactory;->c:Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;

    .line 15
    .line 16
    iput-object v2, v0, Lorg/apache/commons/text/StringTokenizer;->j:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 17
    .line 18
    sget-object v3, Lorg/apache/commons/text/matcher/StringMatcherFactory;->f:Lorg/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iput-object v3, v0, Lorg/apache/commons/text/StringTokenizer;->k:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 23
    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    iput-boolean v4, v0, Lorg/apache/commons/text/StringTokenizer;->l:Z

    .line 26
    .line 27
    new-instance v0, Lorg/apache/commons/text/StringTokenizer;

    .line 28
    .line 29
    invoke-direct {v0}, Lorg/apache/commons/text/StringTokenizer;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v5, Lorg/apache/commons/text/matcher/StringMatcherFactory;->e:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    move-object v5, v2

    .line 37
    :cond_1
    iput-object v5, v0, Lorg/apache/commons/text/StringTokenizer;->h:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 38
    .line 39
    iput-object v1, v0, Lorg/apache/commons/text/StringTokenizer;->i:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 40
    .line 41
    iput-object v2, v0, Lorg/apache/commons/text/StringTokenizer;->j:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iput-object v3, v0, Lorg/apache/commons/text/StringTokenizer;->k:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 46
    .line 47
    :cond_2
    iput-boolean v4, v0, Lorg/apache/commons/text/StringTokenizer;->l:Z

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->a:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 5
    .line 6
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->d:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->h:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 9
    .line 10
    sget-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->c:Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->i:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->j:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->k:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->l:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->c:[C

    .line 23
    .line 24
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
    iget-boolean v0, p0, Lorg/apache/commons/text/StringTokenizer;->l:Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->c:[C

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/text/StringTokenizer;->e([CI)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v1, v0

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/text/StringTokenizer;->e([CI)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->b:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, [Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

    .line 30
    .line 31
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
    check-cast v1, Lorg/apache/commons/text/StringTokenizer;

    .line 7
    .line 8
    iget-object v2, v1, Lorg/apache/commons/text/StringTokenizer;->c:[C

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
    iput-object v2, v1, Lorg/apache/commons/text/StringTokenizer;->c:[C

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    iput v2, v1, Lorg/apache/commons/text/StringTokenizer;->g:I

    .line 22
    .line 23
    iput-object v0, v1, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :catch_0
    return-object v0
.end method

.method public final d([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/ArrayList;II)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

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
    const-string v4, "end < start"

    .line 12
    .line 13
    if-ge p2, p3, :cond_9

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-static {p1, p2, p3, p6, p7}, Lorg/apache/commons/text/StringTokenizer;->c([CIIII)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_8

    .line 22
    .line 23
    add-int v4, p2, p7

    .line 24
    .line 25
    invoke-static {p1, v4, p3, p6, p7}, Lorg/apache/commons/text/StringTokenizer;->c([CIIII)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {p4, p1, p2, p7}, Lorg/apache/commons/text/TextStringBuilder;->b([CII)V

    .line 32
    .line 33
    .line 34
    mul-int/lit8 v3, p7, 0x2

    .line 35
    .line 36
    add-int/2addr p2, v3

    .line 37
    iget v3, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v0

    .line 41
    move p2, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/text/StringTokenizer;->h:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 44
    .line 45
    invoke-interface {v5, p1, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-lez v5, :cond_5

    .line 50
    .line 51
    iget p1, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 52
    .line 53
    if-le v3, p1, :cond_3

    .line 54
    .line 55
    move v3, p1

    .line 56
    :cond_3
    if-ltz v3, :cond_4

    .line 57
    .line 58
    new-instance p1, Ljava/lang/String;

    .line 59
    .line 60
    iget-object p3, p4, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 61
    .line 62
    invoke-direct {p1, p3, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p5, p1}, Lorg/apache/commons/text/StringTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/2addr p2, v5

    .line 69
    return p2

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 71
    .line 72
    invoke-direct {p1, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_5
    if-lez p7, :cond_6

    .line 77
    .line 78
    invoke-static {p1, p2, p3, p6, p7}, Lorg/apache/commons/text/StringTokenizer;->c([CIIII)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_6

    .line 83
    .line 84
    add-int/2addr p2, p7

    .line 85
    move v2, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/text/StringTokenizer;->j:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 88
    .line 89
    invoke-interface {v4, p1, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-lez v4, :cond_7

    .line 94
    .line 95
    :goto_2
    add-int/2addr p2, v4

    .line 96
    goto :goto_1

    .line 97
    :cond_7
    iget-object v4, p0, Lorg/apache/commons/text/StringTokenizer;->k:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 98
    .line 99
    invoke-interface {v4, p1, p2, p3}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-lez v4, :cond_8

    .line 104
    .line 105
    invoke-virtual {p4, p1, p2, v4}, Lorg/apache/commons/text/TextStringBuilder;->b([CII)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    add-int/lit8 v3, p2, 0x1

    .line 110
    .line 111
    aget-char p2, p1, p2

    .line 112
    .line 113
    iget v4, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 114
    .line 115
    add-int/2addr v4, v1

    .line 116
    invoke-virtual {p4, v4}, Lorg/apache/commons/text/TextStringBuilder;->c(I)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p4, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 120
    .line 121
    iget v5, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 122
    .line 123
    add-int/lit8 v6, v5, 0x1

    .line 124
    .line 125
    iput v6, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 126
    .line 127
    aput-char p2, v4, v5

    .line 128
    .line 129
    move p2, v3

    .line 130
    move v3, v6

    .line 131
    goto :goto_1

    .line 132
    :cond_9
    iget p1, p4, Lorg/apache/commons/text/TextStringBuilder;->f:I

    .line 133
    .line 134
    if-le v3, p1, :cond_a

    .line 135
    .line 136
    move v3, p1

    .line 137
    :cond_a
    if-ltz v3, :cond_b

    .line 138
    .line 139
    new-instance p1, Ljava/lang/String;

    .line 140
    .line 141
    iget-object p2, p4, Lorg/apache/commons/text/TextStringBuilder;->c:[C

    .line 142
    .line 143
    invoke-direct {p1, p2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p5, p1}, Lorg/apache/commons/text/StringTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 p1, -0x1

    .line 150
    return p1

    .line 151
    :cond_b
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 152
    .line 153
    invoke-direct {p1, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
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
    new-instance v4, Lorg/apache/commons/text/TextStringBuilder;

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
    iput-object v0, v4, Lorg/apache/commons/text/TextStringBuilder;->c:[C

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
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->j:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 33
    .line 34
    invoke-interface {v0, p1, v2, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->k:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 39
    .line 40
    invoke-interface {v1, p1, v2, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

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
    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->h:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 51
    .line 52
    invoke-interface {v1, p1, v2, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-gtz v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->i:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 59
    .line 60
    invoke-interface {v1, p1, v2, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

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
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/text/StringTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

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
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->h:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 83
    .line 84
    invoke-interface {v0, p1, v2, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/text/StringTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

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
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->i:Lorg/apache/commons/text/matcher/StringMatcher;

    .line 100
    .line 101
    invoke-interface {v0, p1, v2, p2}, Lorg/apache/commons/text/matcher/StringMatcher;->a([CII)I

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
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/text/StringTokenizer;->d([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/ArrayList;II)I

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
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/text/StringTokenizer;->d([CIILorg/apache/commons/text/TextStringBuilder;Ljava/util/ArrayList;II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    :goto_3
    if-lt p1, v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/text/StringTokenizer;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

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
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

    .line 10
    .line 11
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    iput v2, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

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
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->hasPrevious()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    iput v1, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

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
    iget v0, p0, Lorg/apache/commons/text/StringTokenizer;->g:I

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
    iget-object v0, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "StringTokenizer[not tokenized yet]"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "StringTokenizer"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/text/StringTokenizer;->b()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/apache/commons/text/StringTokenizer;->f:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
