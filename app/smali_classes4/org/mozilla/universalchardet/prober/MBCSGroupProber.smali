.class public Lorg/mozilla/universalchardet/prober/MBCSGroupProber;
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
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->b()F

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->c:Ljava/util/ArrayList;

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
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

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
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

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
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->c:Ljava/util/ArrayList;

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
    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

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
    .locals 10

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    move v3, v1

    .line 6
    move v5, v3

    .line 7
    move v4, v2

    .line 8
    :goto_0
    if-ge v3, p2, :cond_2

    .line 9
    .line 10
    aget-byte v6, p1, v3

    .line 11
    .line 12
    and-int/lit16 v7, v6, 0x80

    .line 13
    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    add-int/lit8 v4, v5, 0x1

    .line 17
    .line 18
    aput-byte v6, v0, v5

    .line 19
    .line 20
    move v5, v4

    .line 21
    move v4, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-eqz v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v4, v5, 0x1

    .line 26
    .line 27
    aput-byte v6, v0, v5

    .line 28
    .line 29
    move v5, v4

    .line 30
    move v4, v1

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    move v3, v1

    .line 41
    :cond_3
    :goto_2
    if-ge v3, p2, :cond_7

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    check-cast v4, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 50
    .line 51
    iget-boolean v6, v4, Lorg/mozilla/universalchardet/prober/CharsetProber;->a:Z

    .line 52
    .line 53
    if-nez v6, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {v4, v0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 61
    .line 62
    if-eq v6, v7, :cond_6

    .line 63
    .line 64
    const v8, 0x3f7d70a4    # 0.99f

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    cmpl-float v8, v8, v9

    .line 72
    .line 73
    if-nez v8, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 77
    .line 78
    if-ne v6, v7, :cond_3

    .line 79
    .line 80
    iput-boolean v1, v4, Lorg/mozilla/universalchardet/prober/CharsetProber;->a:Z

    .line 81
    .line 82
    iget v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->e:I

    .line 83
    .line 84
    sub-int/2addr v4, v2

    .line 85
    iput v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->e:I

    .line 86
    .line 87
    if-gtz v4, :cond_3

    .line 88
    .line 89
    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    :goto_3
    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 93
    .line 94
    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 95
    .line 96
    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 97
    .line 98
    return-object p1
.end method

.method public final d()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->e:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->c:Ljava/util/ArrayList;

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
    iget v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->e:I

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->e:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 34
    .line 35
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 38
    .line 39
    return-void
.end method
