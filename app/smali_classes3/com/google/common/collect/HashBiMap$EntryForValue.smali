.class final Lcom/google/common/collect/HashBiMap$EntryForValue;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryForValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/collect/HashBiMap;

.field public final f:Ljava/lang/Object;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->c:Lcom/google/common/collect/HashBiMap;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p1, p1, p2

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->f:Ljava/lang/Object;

    .line 11
    .line 12
    iput p2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->g:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->f:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->c:Lcom/google/common/collect/HashBiMap;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget v1, v3, Lcom/google/common/collect/HashBiMap;->g:I

    .line 11
    .line 12
    if-gt v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v3, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v0, v1, v0

    .line 17
    .line 18
    invoke-static {v2, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->g:I

    .line 38
    .line 39
    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$EntryForValue;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->g:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->c:Lcom/google/common/collect/HashBiMap;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 14
    .line 15
    aget-object v0, v1, v0

    .line 16
    .line 17
    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$EntryForValue;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->g:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->c:Lcom/google/common/collect/HashBiMap;

    .line 8
    .line 9
    if-ne v0, v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->f:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, -0x1

    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    iget-object v0, v2, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 28
    .line 29
    aget-object v0, v0, v3

    .line 30
    .line 31
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    invoke-virtual {v2, v3, p1}, Lcom/google/common/collect/HashBiMap;->k(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget v3, v2, Lcom/google/common/collect/HashBiMap;->n:I

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v2, v5, p1}, Lcom/google/common/collect/HashBiMap;->e(ILjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v7, 0x1

    .line 53
    if-ne v6, v4, :cond_2

    .line 54
    .line 55
    move v4, v7

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v4, 0x0

    .line 58
    :goto_0
    const-string v6, "Key already present: %s"

    .line 59
    .line 60
    invoke-static {v6, p1, v4}, Lcom/google/common/base/Preconditions;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 61
    .line 62
    .line 63
    iget v4, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 64
    .line 65
    add-int/2addr v4, v7

    .line 66
    invoke-virtual {v2, v4}, Lcom/google/common/collect/HashBiMap;->d(I)V

    .line 67
    .line 68
    .line 69
    iget-object v4, v2, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 70
    .line 71
    iget v6, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 72
    .line 73
    aput-object p1, v4, v6

    .line 74
    .line 75
    iget-object p1, v2, Lcom/google/common/collect/HashBiMap;->f:[Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v0, p1, v6

    .line 78
    .line 79
    invoke-virtual {v2, v6, v5}, Lcom/google/common/collect/HashBiMap;->g(II)V

    .line 80
    .line 81
    .line 82
    iget p1, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 83
    .line 84
    invoke-virtual {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 85
    .line 86
    .line 87
    const/4 p1, -0x2

    .line 88
    if-ne v3, p1, :cond_3

    .line 89
    .line 90
    iget p1, v2, Lcom/google/common/collect/HashBiMap;->m:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p1, v2, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 94
    .line 95
    aget p1, p1, v3

    .line 96
    .line 97
    :goto_1
    iget v0, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 98
    .line 99
    invoke-virtual {v2, v3, v0}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 100
    .line 101
    .line 102
    iget v0, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 103
    .line 104
    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 105
    .line 106
    .line 107
    iget p1, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 108
    .line 109
    add-int/2addr p1, v7

    .line 110
    iput p1, v2, Lcom/google/common/collect/HashBiMap;->g:I

    .line 111
    .line 112
    iget p1, v2, Lcom/google/common/collect/HashBiMap;->h:I

    .line 113
    .line 114
    add-int/2addr p1, v7

    .line 115
    iput p1, v2, Lcom/google/common/collect/HashBiMap;->h:I

    .line 116
    .line 117
    :goto_2
    const/4 p1, 0x0

    .line 118
    return-object p1

    .line 119
    :cond_4
    iget-object v1, v2, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 120
    .line 121
    aget-object v0, v1, v0

    .line 122
    .line 123
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_5
    iget v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->g:I

    .line 131
    .line 132
    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/HashBiMap;->k(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-object v0
.end method
