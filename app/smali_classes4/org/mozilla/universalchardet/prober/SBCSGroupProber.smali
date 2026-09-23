.class public Lorg/mozilla/universalchardet/prober/SBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public c:Ljava/util/ArrayList;

.field public d:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field public e:I


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b()F

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final b()F
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0x3f7d70a4    # 0.99f

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const v0, 0x3c23d70a    # 0.01f

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    :cond_2
    :goto_0
    if-ge v3, v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    check-cast v4, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 36
    .line 37
    iget-boolean v5, v4, Lorg/mozilla/universalchardet/prober/CharsetProber;->a:Z

    .line 38
    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    cmpg-float v6, v2, v5

    .line 47
    .line 48
    if-gez v6, :cond_2

    .line 49
    .line 50
    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 51
    .line 52
    move v2, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    return v2
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9

    .line 1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    const/4 v5, 0x1

    .line 10
    if-ge v2, p2, :cond_5

    .line 11
    .line 12
    aget-byte v6, p1, v2

    .line 13
    .line 14
    and-int/lit16 v7, v6, 0x80

    .line 15
    .line 16
    if-nez v7, :cond_3

    .line 17
    .line 18
    and-int/lit16 v5, v6, 0xff

    .line 19
    .line 20
    const/16 v6, 0x41

    .line 21
    .line 22
    if-lt v5, v6, :cond_1

    .line 23
    .line 24
    const/16 v6, 0x5a

    .line 25
    .line 26
    if-le v5, v6, :cond_0

    .line 27
    .line 28
    const/16 v6, 0x61

    .line 29
    .line 30
    if-lt v5, v6, :cond_1

    .line 31
    .line 32
    :cond_0
    const/16 v6, 0x7a

    .line 33
    .line 34
    if-le v5, v6, :cond_4

    .line 35
    .line 36
    :cond_1
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-le v2, v4, :cond_2

    .line 39
    .line 40
    sub-int v3, v2, v4

    .line 41
    .line 42
    invoke-virtual {v0, p1, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v2, 0x1

    .line 51
    .line 52
    move v3, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v3, v5

    .line 58
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    if-eqz v3, :cond_6

    .line 62
    .line 63
    if-le v2, v4, :cond_6

    .line 64
    .line 65
    sub-int/2addr v2, v4

    .line 66
    invoke-virtual {v0, p1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    :cond_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_7

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_7
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    move v2, v1

    .line 83
    :cond_8
    :goto_2
    if-ge v2, p2, :cond_c

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    check-cast v3, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 92
    .line 93
    iget-boolean v4, v3, Lorg/mozilla/universalchardet/prober/CharsetProber;->a:Z

    .line 94
    .line 95
    if-nez v4, :cond_9

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {v3, v4, v6}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    sget-object v6, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 111
    .line 112
    if-eq v4, v6, :cond_b

    .line 113
    .line 114
    const v7, 0x3f7d70a4    # 0.99f

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    cmpl-float v7, v7, v8

    .line 122
    .line 123
    if-nez v7, :cond_a

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    sget-object v6, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 127
    .line 128
    if-ne v4, v6, :cond_8

    .line 129
    .line 130
    iput-boolean v1, v3, Lorg/mozilla/universalchardet/prober/CharsetProber;->a:Z

    .line 131
    .line 132
    iget v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    .line 133
    .line 134
    sub-int/2addr v3, v5

    .line 135
    iput v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    .line 136
    .line 137
    if-gtz v3, :cond_8

    .line 138
    .line 139
    iput-object v6, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_b
    :goto_3
    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 143
    .line 144
    iput-object v6, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 145
    .line 146
    :cond_c
    :goto_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 147
    .line 148
    return-object p1
.end method

.method public final d()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    :goto_0
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    check-cast v3, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 19
    .line 20
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->d()V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    iput-boolean v4, v3, Lorg/mozilla/universalchardet/prober/CharsetProber;->a:Z

    .line 25
    .line 26
    iget v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    iput v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 34
    .line 35
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 38
    .line 39
    return-void
.end method
