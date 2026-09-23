.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:B

.field public e:B

.field public f:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

.field public g:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;


# direct methods
.method public static e(B)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    const/16 v0, 0xef

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x5

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->t:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v1, -0x5

    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->f:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-float/2addr v1, v2

    .line 31
    const v2, 0x3c23d70a    # 0.01f

    .line 32
    .line 33
    .line 34
    cmpl-float v2, v1, v2

    .line 35
    .line 36
    if-lez v2, :cond_2

    .line 37
    .line 38
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->t:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    .line 42
    .line 43
    .line 44
    cmpg-float v1, v1, v2

    .line 45
    .line 46
    if-gez v1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->f:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    if-gez v0, :cond_4

    .line 52
    .line 53
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->f:Ljava/lang/String;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->t:Ljava/lang/String;

    .line 57
    .line 58
    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 17
    .line 18
    :goto_0
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 19
    .line 20
    if-ne v1, v0, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_1
    if-ge v0, p2, :cond_6

    .line 25
    .line 26
    aget-byte v1, p1, v0

    .line 27
    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    if-ne v1, v2, :cond_4

    .line 31
    .line 32
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    .line 33
    .line 34
    if-eq v3, v2, :cond_5

    .line 35
    .line 36
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    .line 37
    .line 38
    invoke-static {v2}, Lorg/mozilla/universalchardet/prober/HebrewProber;->e(B)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    iput v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    .line 52
    .line 53
    and-int/lit16 v2, v2, 0xff

    .line 54
    .line 55
    const/16 v3, 0xeb

    .line 56
    .line 57
    if-eq v2, v3, :cond_3

    .line 58
    .line 59
    const/16 v3, 0xee

    .line 60
    .line 61
    if-eq v2, v3, :cond_3

    .line 62
    .line 63
    const/16 v3, 0xf0

    .line 64
    .line 65
    if-eq v2, v3, :cond_3

    .line 66
    .line 67
    const/16 v3, 0xf4

    .line 68
    .line 69
    if-ne v2, v3, :cond_5

    .line 70
    .line 71
    :cond_3
    iget v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    iput v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    .line 79
    .line 80
    if-ne v3, v2, :cond_5

    .line 81
    .line 82
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    .line 83
    .line 84
    invoke-static {v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->e(B)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    if-eq v1, v2, :cond_5

    .line 91
    .line 92
    iget v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    iput v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    .line 97
    .line 98
    :cond_5
    :goto_2
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    .line 99
    .line 100
    iput-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    .line 101
    .line 102
    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    .line 103
    .line 104
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 108
    .line 109
    return-object p1
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    .line 3
    .line 4
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    .line 9
    .line 10
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    .line 11
    .line 12
    return-void
.end method
