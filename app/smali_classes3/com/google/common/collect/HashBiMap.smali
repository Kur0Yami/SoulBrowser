.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$KeySet;,
        Lcom/google/common/collect/HashBiMap$ValueSet;,
        Lcom/google/common/collect/HashBiMap$EntrySet;,
        Lcom/google/common/collect/HashBiMap$Inverse;,
        Lcom/google/common/collect/HashBiMap$EntryForValue;,
        Lcom/google/common/collect/HashBiMap$InverseEntrySet;,
        Lcom/google/common/collect/HashBiMap$EntryForKey;,
        Lcom/google/common/collect/HashBiMap$View;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient c:[Ljava/lang/Object;

.field public transient f:[Ljava/lang/Object;

.field public transient g:I

.field public transient h:I

.field public transient i:[I

.field public transient j:[I

.field public transient k:[I

.field public transient l:[I

.field public transient m:I

.field public transient n:I

.field public transient o:[I

.field public transient p:[I


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    return p1
.end method

.method public final b(II)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 15
    .line 16
    aget v2, v1, p2

    .line 17
    .line 18
    if-ne v2, p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 21
    .line 22
    aget v3, v2, p1

    .line 23
    .line 24
    aput v3, v1, p2

    .line 25
    .line 26
    aput v0, v2, p1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 30
    .line 31
    aget p2, p2, v2

    .line 32
    .line 33
    :goto_1
    move v4, v2

    .line 34
    move v2, p2

    .line 35
    move p2, v4

    .line 36
    if-eq v2, v0, :cond_3

    .line 37
    .line 38
    if-ne v2, p1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 41
    .line 42
    aget v2, v1, p1

    .line 43
    .line 44
    aput v2, v1, p2

    .line 45
    .line 46
    aput v0, v1, p1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 50
    .line 51
    aget p2, p2, v2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Expected to find entry with key "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object p1, v1, p1

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    throw p2
.end method

.method public final c(II)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 15
    .line 16
    aget v2, v1, p2

    .line 17
    .line 18
    if-ne v2, p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 21
    .line 22
    aget v3, v2, p1

    .line 23
    .line 24
    aput v3, v1, p2

    .line 25
    .line 26
    aput v0, v2, p1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 30
    .line 31
    aget p2, p2, v2

    .line 32
    .line 33
    :goto_1
    move v4, v2

    .line 34
    move v2, p2

    .line 35
    move p2, v4

    .line 36
    if-eq v2, v0, :cond_3

    .line 37
    .line 38
    if-ne v2, p1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 41
    .line 42
    aget v2, v1, p1

    .line 43
    .line 44
    aput v2, v1, p2

    .line 45
    .line 46
    aput v0, v1, p1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 50
    .line 51
    aget p2, p2, v2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "Expected to find entry with value "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object p1, v1, p1

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    throw p2
.end method

.method public final clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 13
    .line 14
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 29
    .line 30
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 31
    .line 32
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 36
    .line 37
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 38
    .line 39
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 43
    .line 44
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 45
    .line 46
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 50
    .line 51
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 52
    .line 53
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 54
    .line 55
    .line 56
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 57
    .line 58
    const/4 v0, -0x2

    .line 59
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->m:I

    .line 60
    .line 61
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->n:I

    .line 62
    .line 63
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 68
    .line 69
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->e(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ge v1, p1, :cond_0

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->b(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 29
    .line 30
    array-length v3, v1

    .line 31
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 41
    .line 42
    array-length v3, v1

    .line 43
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 53
    .line 54
    array-length v3, v1

    .line 55
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 65
    .line 66
    array-length v3, v1

    .line 67
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 77
    .line 78
    array-length v0, v0

    .line 79
    if-ge v0, p1, :cond_1

    .line 80
    .line 81
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 82
    .line 83
    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Hashing;->a(DI)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    new-array v0, p1, [I

    .line 88
    .line 89
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 93
    .line 94
    new-array p1, p1, [I

    .line 95
    .line 96
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    :goto_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 103
    .line 104
    if-ge p1, v0, :cond_1

    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 107
    .line 108
    aget-object v0, v0, p1

    .line 109
    .line 110
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 119
    .line 120
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 121
    .line 122
    aget v3, v2, v0

    .line 123
    .line 124
    aput v3, v1, p1

    .line 125
    .line 126
    aput p1, v2, v0

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 129
    .line 130
    aget-object v0, v0, p1

    .line 131
    .line 132
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 143
    .line 144
    aget v3, v2, v0

    .line 145
    .line 146
    aput v3, v1, p1

    .line 147
    .line 148
    aput p1, v2, v0

    .line 149
    .line 150
    add-int/lit8 p1, p1, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public final e(ILjava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    aget-object v0, v2, p1

    .line 17
    .line 18
    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    aget p1, v1, p1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(ILjava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    :goto_0
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    aget-object v0, v2, p1

    .line 17
    .line 18
    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    aget p1, v1, p1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method public final g(II)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 17
    .line 18
    aget v2, v1, p2

    .line 19
    .line 20
    aput v2, v0, p1

    .line 21
    .line 22
    aput p1, v1, p2

    .line 23
    .line 24
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->e(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object p1, v0, p1

    .line 17
    .line 18
    return-object p1
.end method

.method public final h(II)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 17
    .line 18
    aget v2, v1, p2

    .line 19
    .line 20
    aput v2, v0, p1

    .line 21
    .line 22
    aput p1, v1, p2

    .line 23
    .line 24
    return-void
.end method

.method public final i(III)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eq p1, v1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->b(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 18
    .line 19
    aget p2, p2, p1

    .line 20
    .line 21
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 22
    .line 23
    aget p3, p3, p1

    .line 24
    .line 25
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 26
    .line 27
    .line 28
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 29
    .line 30
    sub-int/2addr p2, v0

    .line 31
    if-ne p2, p1, :cond_1

    .line 32
    .line 33
    goto :goto_5

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 35
    .line 36
    aget p3, p3, p2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 39
    .line 40
    aget v2, v2, p2

    .line 41
    .line 42
    invoke-virtual {p0, p3, p1}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 49
    .line 50
    aget-object v2, p3, p2

    .line 51
    .line 52
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 53
    .line 54
    aget-object v4, v3, p2

    .line 55
    .line 56
    aput-object v2, p3, p1

    .line 57
    .line 58
    aput-object v4, v3, p1

    .line 59
    .line 60
    invoke-static {v2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->i:[I

    .line 69
    .line 70
    aget v3, v2, p3

    .line 71
    .line 72
    if-ne v3, p2, :cond_2

    .line 73
    .line 74
    aput p1, v2, p3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 78
    .line 79
    aget p3, p3, v3

    .line 80
    .line 81
    :goto_1
    move v5, v3

    .line 82
    move v3, p3

    .line 83
    move p3, v5

    .line 84
    if-ne v3, p2, :cond_5

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 87
    .line 88
    aput p1, v2, p3

    .line 89
    .line 90
    :goto_2
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 91
    .line 92
    aget v2, p3, p2

    .line 93
    .line 94
    aput v2, p3, p1

    .line 95
    .line 96
    aput v1, p3, p2

    .line 97
    .line 98
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->a(I)I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->j:[I

    .line 107
    .line 108
    aget v3, v2, p3

    .line 109
    .line 110
    if-ne v3, p2, :cond_3

    .line 111
    .line 112
    aput p1, v2, p3

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 116
    .line 117
    aget p3, p3, v3

    .line 118
    .line 119
    :goto_3
    move v5, v3

    .line 120
    move v3, p3

    .line 121
    move p3, v5

    .line 122
    if-ne v3, p2, :cond_4

    .line 123
    .line 124
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 125
    .line 126
    aput p1, v2, p3

    .line 127
    .line 128
    :goto_4
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 129
    .line 130
    aget v2, p3, p2

    .line 131
    .line 132
    aput v2, p3, p1

    .line 133
    .line 134
    aput v1, p3, p2

    .line 135
    .line 136
    :goto_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 137
    .line 138
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 139
    .line 140
    add-int/lit8 p3, p2, -0x1

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    aput-object v1, p1, p3

    .line 144
    .line 145
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 146
    .line 147
    add-int/lit8 p3, p2, -0x1

    .line 148
    .line 149
    aput-object v1, p1, p3

    .line 150
    .line 151
    sub-int/2addr p2, v0

    .line 152
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 153
    .line 154
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 155
    .line 156
    add-int/2addr p1, v0

    .line 157
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 158
    .line 159
    return-void

    .line 160
    :cond_4
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 161
    .line 162
    aget p3, p3, v3

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 166
    .line 167
    aget p3, p3, v3

    .line 168
    .line 169
    goto :goto_1
.end method

.method public final j(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->i(III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k(ILjava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->e(ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->n:I

    .line 19
    .line 20
    if-ne v1, v0, :cond_5

    .line 21
    .line 22
    if-ne v2, p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 25
    .line 26
    aget v2, v0, p1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 30
    .line 31
    if-ne v2, v0, :cond_2

    .line 32
    .line 33
    move v2, v1

    .line 34
    :cond_2
    :goto_1
    const/4 v0, -0x2

    .line 35
    if-ne v0, p1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 38
    .line 39
    aget v1, v0, p1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 43
    .line 44
    if-ne v0, v3, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    move v1, v0

    .line 48
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 49
    .line 50
    aget v0, v0, p1

    .line 51
    .line 52
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 53
    .line 54
    aget v3, v3, p1

    .line 55
    .line 56
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v0, v0, p1

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->b(II)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p2, v0, p1

    .line 73
    .line 74
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->g(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "Key already present in map: "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v2, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 21
    .line 22
    aget-object v0, v0, p1

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p2, v0, p1

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "Value already present in map: "

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final m(II)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->m:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 8
    .line 9
    aput p2, v1, p1

    .line 10
    .line 11
    :goto_0
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->n:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:[I

    .line 17
    .line 18
    aput p1, v0, p2

    .line 19
    .line 20
    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->e(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 13
    .line 14
    aget-object p1, p1, v1

    .line 15
    .line 16
    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-object p2

    .line 23
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->l(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne v3, v2, :cond_2

    .line 37
    .line 38
    move v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_0
    const-string v3, "Value already present: %s"

    .line 42
    .line 43
    invoke-static {v3, p2, v2}, Lcom/google/common/base/Preconditions;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 47
    .line 48
    add-int/2addr v2, v4

    .line 49
    invoke-virtual {p0, v2}, Lcom/google/common/collect/HashBiMap;->d(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 53
    .line 54
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 55
    .line 56
    aput-object p1, v2, v3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p2, p1, v3

    .line 61
    .line 62
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/HashBiMap;->g(II)V

    .line 63
    .line 64
    .line 65
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 66
    .line 67
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 68
    .line 69
    .line 70
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->n:I

    .line 71
    .line 72
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 75
    .line 76
    .line 77
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 78
    .line 79
    const/4 p2, -0x2

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 84
    .line 85
    add-int/2addr p1, v4

    .line 86
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 87
    .line 88
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 89
    .line 90
    add-int/2addr p1, v4

    .line 91
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->e(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v1, v1, p1

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->j(II)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final values()Ljava/util/Set;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
