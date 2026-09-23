.class public Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
.super Lcom/google/common/collect/ImmutableMultiset$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:[I

.field public e:I

.field public f:Z


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public final bridge synthetic d(ILjava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "occurrences"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v2, :cond_6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 30
    .line 31
    .line 32
    array-length v2, v0

    .line 33
    if-lt v4, v2, :cond_5

    .line 34
    .line 35
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 36
    .line 37
    invoke-static {v0, v4, v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 41
    .line 42
    mul-int/lit8 v5, v2, 0x3

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    if-le v6, v5, :cond_2

    .line 46
    .line 47
    div-int/lit8 v5, v2, 0x2

    .line 48
    .line 49
    add-int/2addr v5, v4

    .line 50
    int-to-long v6, v2

    .line 51
    int-to-long v8, v5

    .line 52
    add-long/2addr v6, v8

    .line 53
    invoke-static {v6, v7}, Lcom/google/common/primitives/Ints;->c(J)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_2
    array-length v2, v0

    .line 62
    new-array v2, v2, [I

    .line 63
    .line 64
    move v5, v3

    .line 65
    :goto_0
    iget v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 66
    .line 67
    if-ge v5, v6, :cond_4

    .line 68
    .line 69
    iget-object v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->c:[Ljava/lang/Object;

    .line 70
    .line 71
    aget-object v6, v6, v5

    .line 72
    .line 73
    invoke-static {v0, v3, v4, v6, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iget-object v7, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->d:[I

    .line 78
    .line 79
    aget v7, v7, v5

    .line 80
    .line 81
    if-ltz v7, :cond_3

    .line 82
    .line 83
    aget v8, v2, v6

    .line 84
    .line 85
    add-int/2addr v8, v7

    .line 86
    aput v8, v2, v6

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    not-int v7, v7

    .line 90
    aput v7, v2, v6

    .line 91
    .line 92
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->c:[Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->d:[I

    .line 98
    .line 99
    iput v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    aget-object p1, v0, v3

    .line 103
    .line 104
    aget-object p1, v0, v4

    .line 105
    .line 106
    throw v1

    .line 107
    :cond_6
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->f:Z

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    array-length v0, v1

    .line 112
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->c:[Ljava/lang/Object;

    .line 117
    .line 118
    :cond_7
    :goto_2
    iput-boolean v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->f:Z

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->c:[Ljava/lang/Object;

    .line 121
    .line 122
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 123
    .line 124
    aput-object p2, v0, v1

    .line 125
    .line 126
    iget-object p2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->d:[I

    .line 127
    .line 128
    aput p1, p2, v1

    .line 129
    .line 130
    add-int/2addr v1, v4

    .line 131
    iput v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->e:I

    .line 132
    .line 133
    return-void
.end method
