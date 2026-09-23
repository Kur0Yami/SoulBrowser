.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient c:Ljava/lang/Object;

.field public transient f:[I

.field public transient g:[Ljava/lang/Object;

.field public transient h:I

.field public transient i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->p()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->c()I

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 30
    .line 31
    add-int/lit8 v3, v2, 0x1

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget v5, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 38
    .line 39
    and-int/lit8 v5, v5, 0x1f

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    shl-int v5, v6, v5

    .line 43
    .line 44
    sub-int/2addr v5, v6

    .line 45
    and-int v7, v4, v5

    .line 46
    .line 47
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashing;->e(ILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-nez v8, :cond_3

    .line 57
    .line 58
    if-le v3, v5, :cond_2

    .line 59
    .line 60
    invoke-static {v5}, Lcom/google/common/collect/CompactHashing;->c(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v5, v0, v4, v2}, Lcom/google/common/collect/CompactHashSet;->w(IIII)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {v7, v3, v0}, Lcom/google/common/collect/CompactHashing;->f(IILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    not-int v7, v5

    .line 79
    and-int v9, v4, v7

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    move v11, v10

    .line 83
    :goto_0
    sub-int/2addr v8, v6

    .line 84
    aget v12, v0, v8

    .line 85
    .line 86
    and-int v13, v12, v7

    .line 87
    .line 88
    if-ne v13, v9, :cond_4

    .line 89
    .line 90
    aget-object v13, v1, v8

    .line 91
    .line 92
    invoke-static {p1, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-eqz v13, :cond_4

    .line 97
    .line 98
    return v10

    .line 99
    :cond_4
    and-int v13, v12, v5

    .line 100
    .line 101
    add-int/2addr v11, v6

    .line 102
    if-nez v13, :cond_8

    .line 103
    .line 104
    const/16 v1, 0x9

    .line 105
    .line 106
    if-lt v11, v1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->g()Ljava/util/LinkedHashSet;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    return p1

    .line 117
    :cond_5
    if-le v3, v5, :cond_6

    .line 118
    .line 119
    invoke-static {v5}, Lcom/google/common/collect/CompactHashing;->c(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p0, v5, v0, v4, v2}, Lcom/google/common/collect/CompactHashSet;->w(IIII)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    goto :goto_1

    .line 128
    :cond_6
    invoke-static {v12, v3, v5}, Lcom/google/common/collect/CompactHashing;->b(III)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    aput v1, v0, v8

    .line 133
    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    array-length v0, v0

    .line 139
    if-le v3, v0, :cond_7

    .line 140
    .line 141
    ushr-int/lit8 v1, v0, 0x1

    .line 142
    .line 143
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    add-int/2addr v1, v0

    .line 148
    or-int/2addr v1, v6

    .line 149
    const v7, 0x3fffffff    # 1.9999999f

    .line 150
    .line 151
    .line 152
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eq v1, v0, :cond_7

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->v(I)V

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/common/collect/CompactHashSet;->q(Ljava/lang/Object;III)V

    .line 162
    .line 163
    .line 164
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 165
    .line 166
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 167
    .line 168
    add-int/lit8 p1, p1, 0x20

    .line 169
    .line 170
    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 171
    .line 172
    return v6

    .line 173
    :cond_8
    move v8, v13

    .line 174
    goto :goto_0
.end method

.method public c()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Arrays already allocated"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 11
    .line 12
    add-int/lit8 v1, v0, 0x1

    .line 13
    .line 14
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lcom/google/common/collect/Hashing;->a(DI)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->a(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    rsub-int/lit8 v1, v1, 0x20

    .line 38
    .line 39
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 40
    .line 41
    const/16 v3, 0x1f

    .line 42
    .line 43
    invoke-static {v2, v1, v3}, Lcom/google/common/collect/CompactHashing;->b(III)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 48
    .line 49
    new-array v1, v0, [I

    .line 50
    .line 51
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->f:[I

    .line 52
    .line 53
    new-array v1, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->g:[Ljava/lang/Object;

    .line 56
    .line 57
    return v0
.end method

.method public clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->a(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 37
    .line 38
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 46
    .line 47
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    instance-of v1, v0, [B

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    check-cast v0, [B

    .line 60
    .line 61
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    instance-of v1, v0, [S

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    check-cast v0, [S

    .line 70
    .line 71
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    check-cast v0, [I

    .line 76
    .line 77
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 85
    .line 86
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 87
    .line 88
    .line 89
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 90
    .line 91
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 24
    .line 25
    and-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    shl-int v1, v2, v1

    .line 29
    .line 30
    sub-int/2addr v1, v2

    .line 31
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    and-int v4, v0, v1

    .line 37
    .line 38
    invoke-static {v4, v3}, Lcom/google/common/collect/CompactHashing;->e(ILjava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    not-int v4, v1

    .line 46
    and-int/2addr v0, v4

    .line 47
    :cond_3
    sub-int/2addr v3, v2

    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    aget v5, v5, v3

    .line 53
    .line 54
    and-int v6, v5, v4

    .line 55
    .line 56
    if-ne v6, v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    aget-object v3, v6, v3

    .line 63
    .line 64
    invoke-static {p1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    return v2

    .line 71
    :cond_4
    and-int v3, v5, v1

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    :goto_0
    const/4 p1, 0x0

    .line 76
    return p1
.end method

.method public g()Ljava/util/LinkedHashSet;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    shl-int v0, v1, v0

    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->k()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    if-ltz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    aget-object v2, v2, v0

    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->m(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->f:[I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->g:[Ljava/lang/Object;

    .line 41
    .line 42
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x20

    .line 45
    .line 46
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 47
    .line 48
    return-object v1
.end method

.method public final i()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Set;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public m(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, -0x1

    .line 9
    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 8
    .line 9
    return-void
.end method

.method public q(Ljava/lang/Object;III)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p3, v0, p4}, Lcom/google/common/collect/CompactHashing;->b(III)I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    aput p3, p4, p2

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    aput-object p1, p3, p2

    .line 17
    .line 18
    return-void
.end method

.method public r(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/lit8 v4, v3, -0x1

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    if-ge p1, v4, :cond_2

    .line 23
    .line 24
    aget-object v7, v2, v4

    .line 25
    .line 26
    aput-object v7, v2, p1

    .line 27
    .line 28
    aput-object v6, v2, v4

    .line 29
    .line 30
    aget v2, v1, v4

    .line 31
    .line 32
    aput v2, v1, p1

    .line 33
    .line 34
    aput v5, v1, v4

    .line 35
    .line 36
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    and-int/2addr v2, p2

    .line 41
    invoke-static {v2, v0}, Lcom/google/common/collect/CompactHashing;->e(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v4, v3, :cond_0

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    invoke-static {v2, p1, v0}, Lcom/google/common/collect/CompactHashing;->f(IILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    .line 54
    .line 55
    aget v0, v1, v4

    .line 56
    .line 57
    and-int v2, v0, p2

    .line 58
    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    invoke-static {v0, p1, p2}, Lcom/google/common/collect/CompactHashing;->b(III)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    aput p1, v1, v4

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    move v4, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    aput-object v6, v2, p1

    .line 73
    .line 74
    aput v5, v1, p1

    .line 75
    .line 76
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    shl-int v0, v1, v0

    .line 25
    .line 26
    add-int/lit8 v4, v0, -0x1

    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    move-object v2, p1

    .line 44
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/CompactHashing;->d(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v0, -0x1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    :goto_0
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/google/common/collect/CompactHashSet;->r(II)V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 57
    .line 58
    sub-int/2addr p1, v1

    .line 59
    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 60
    .line 61
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x20

    .line 64
    .line 65
    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 66
    .line 67
    return v1
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 13
    .line 14
    return v0
.end method

.method public final t()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->s()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    array-length v0, p1

    if-lez v0, :cond_0

    .line 7
    aput-object v1, p1, v2

    :cond_0
    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->i()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->i:I

    .line 11
    array-length v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->j(III)V

    .line 12
    array-length v4, p1

    if-ge v4, v3, :cond_4

    .line 13
    array-length v1, p1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 14
    :goto_0
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_4
    array-length v4, p1

    if-le v4, v3, :cond_5

    .line 16
    aput-object v1, p1, v3

    .line 17
    :cond_5
    :goto_1
    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final u()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->f:[I

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    return-object v0
.end method

.method public v(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->f:[I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet;->g:[Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public final w(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/CompactHashing;->a(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    and-int/2addr p3, p2

    .line 10
    add-int/lit8 p4, p4, 0x1

    .line 11
    .line 12
    invoke-static {p3, p4, v0}, Lcom/google/common/collect/CompactHashing;->f(IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->u()[I

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-gt v1, p1, :cond_2

    .line 26
    .line 27
    invoke-static {v1, p3}, Lcom/google/common/collect/CompactHashing;->e(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    if-eqz v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v3, v2, -0x1

    .line 34
    .line 35
    aget v4, p4, v3

    .line 36
    .line 37
    not-int v5, p1

    .line 38
    and-int/2addr v5, v4

    .line 39
    or-int/2addr v5, v1

    .line 40
    and-int v6, v5, p2

    .line 41
    .line 42
    invoke-static {v6, v0}, Lcom/google/common/collect/CompactHashing;->e(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {v6, v2, v0}, Lcom/google/common/collect/CompactHashing;->f(IILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v7, p2}, Lcom/google/common/collect/CompactHashing;->b(III)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    aput v2, p4, v3

    .line 54
    .line 55
    and-int v2, v4, p1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->c:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    rsub-int/lit8 p1, p1, 0x20

    .line 68
    .line 69
    iget p3, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 70
    .line 71
    const/16 p4, 0x1f

    .line 72
    .line 73
    invoke-static {p3, p1, p4}, Lcom/google/common/collect/CompactHashing;->b(III)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 78
    .line 79
    return p2
.end method
