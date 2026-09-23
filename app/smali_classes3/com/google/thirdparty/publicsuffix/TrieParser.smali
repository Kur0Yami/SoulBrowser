.class final Lcom/google/thirdparty/publicsuffix/TrieParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/base/Joiner;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/thirdparty/publicsuffix/TrieParser;->a:Lcom/google/common/base/Joiner;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/util/ArrayDeque;Ljava/lang/String;ILcom/google/common/collect/ImmutableMap$Builder;)I
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, p2

    .line 7
    move v3, v1

    .line 8
    :goto_0
    const/16 v4, 0x3a

    .line 9
    .line 10
    const/16 v5, 0x21

    .line 11
    .line 12
    const/16 v6, 0x2c

    .line 13
    .line 14
    const/16 v7, 0x3f

    .line 15
    .line 16
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v8, 0x26

    .line 23
    .line 24
    if-eq v3, v8, :cond_1

    .line 25
    .line 26
    if-eq v3, v7, :cond_1

    .line 27
    .line 28
    if-eq v3, v5, :cond_1

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    if-ne v3, v6, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {p0, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    if-eq v3, v5, :cond_2

    .line 55
    .line 56
    if-eq v3, v7, :cond_2

    .line 57
    .line 58
    if-eq v3, v4, :cond_2

    .line 59
    .line 60
    if-ne v3, v6, :cond_6

    .line 61
    .line 62
    :cond_2
    sget-object v4, Lcom/google/thirdparty/publicsuffix/TrieParser;->a:Lcom/google/common/base/Joiner;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->c(Ljava/util/Iterator;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-lez v5, :cond_6

    .line 80
    .line 81
    invoke-static {}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->values()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    array-length v8, v5

    .line 86
    :goto_2
    if-ge v1, v8, :cond_5

    .line 87
    .line 88
    aget-object v9, v5, v1

    .line 89
    .line 90
    iget-char v10, v9, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->c:C

    .line 91
    .line 92
    if-eq v10, v3, :cond_4

    .line 93
    .line 94
    iget-char v10, v9, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->f:C

    .line 95
    .line 96
    if-ne v10, v3, :cond_3

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    :goto_3
    invoke-virtual {p3, v4, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p2, "No enum corresponding to given code: "

    .line 111
    .line 112
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    if-eq v3, v7, :cond_9

    .line 129
    .line 130
    if-eq v3, v6, :cond_9

    .line 131
    .line 132
    :cond_7
    if-ge v2, v0, :cond_9

    .line 133
    .line 134
    invoke-static {p0, p1, v2, p3}, Lcom/google/thirdparty/publicsuffix/TrieParser;->a(Ljava/util/ArrayDeque;Ljava/lang/String;ILcom/google/common/collect/ImmutableMap$Builder;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v2, v1

    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eq v1, v7, :cond_8

    .line 144
    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-ne v1, v6, :cond_7

    .line 150
    .line 151
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    sub-int/2addr v2, p2

    .line 157
    return v2
.end method

.method public static varargs b([Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/thirdparty/publicsuffix/TrieParser;->a:Lcom/google/common/base/Joiner;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->a()Lcom/google/common/collect/ImmutableMap$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v3, p0, v2, v0}, Lcom/google/thirdparty/publicsuffix/TrieParser;->a(Ljava/util/ArrayDeque;Ljava/lang/String;ILcom/google/common/collect/ImmutableMap$Builder;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 38
    .line 39
    .line 40
    return-void
.end method
