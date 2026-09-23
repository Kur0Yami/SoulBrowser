.class public Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public final c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field public final d:Z

.field public e:S

.field public f:I

.field public final g:[I

.field public h:I

.field public i:I

.field public final j:Lorg/mozilla/universalchardet/prober/HebrewProber;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;ZLorg/mozilla/universalchardet/prober/HebrewProber;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 9
    iput-boolean p2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d:Z

    .line 10
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->j:Lorg/mozilla/universalchardet/prober/HebrewProber;

    const/4 p1, 0x4

    .line 11
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 12
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->j:Lorg/mozilla/universalchardet/prober/HebrewProber;

    const/4 p1, 0x4

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 6
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->j:Lorg/mozilla/universalchardet/prober/HebrewProber;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final b()F
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    mul-float/2addr v1, v2

    .line 14
    int-to-float v0, v0

    .line 15
    div-float/2addr v1, v0

    .line 16
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 17
    .line 18
    iget v0, v0, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->c:F

    .line 19
    .line 20
    div-float/2addr v1, v0

    .line 21
    iget v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    mul-float/2addr v1, v0

    .line 25
    iget v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    div-float/2addr v1, v0

    .line 29
    cmpl-float v0, v1, v2

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    const v0, 0x3f7d70a4    # 0.99f

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_0
    return v1

    .line 38
    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 5
    .line 6
    iget-object v2, v1, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->b:[B

    .line 7
    .line 8
    aget-byte v3, p1, v0

    .line 9
    .line 10
    and-int/lit16 v3, v3, 0xff

    .line 11
    .line 12
    iget-object v1, v1, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->a:[S

    .line 13
    .line 14
    aget-short v1, v1, v3

    .line 15
    .line 16
    const/16 v3, 0xfa

    .line 17
    .line 18
    if-ge v1, v3, :cond_0

    .line 19
    .line 20
    iget v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    iput v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    .line 25
    .line 26
    :cond_0
    const/16 v3, 0x40

    .line 27
    .line 28
    if-ge v1, v3, :cond_2

    .line 29
    .line 30
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    .line 35
    .line 36
    iget-short v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->e:S

    .line 37
    .line 38
    if-ge v4, v3, :cond_2

    .line 39
    .line 40
    iget v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    iput v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    .line 45
    .line 46
    iget-boolean v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d:Z

    .line 47
    .line 48
    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    mul-int/lit8 v4, v4, 0x40

    .line 53
    .line 54
    add-int/2addr v4, v1

    .line 55
    aget-byte v2, v2, v4

    .line 56
    .line 57
    aget v3, v5, v2

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    aput v3, v5, v2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    mul-int/lit8 v3, v1, 0x40

    .line 65
    .line 66
    add-int/2addr v3, v4

    .line 67
    aget-byte v2, v2, v3

    .line 68
    .line 69
    aget v3, v5, v2

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    aput v3, v5, v2

    .line 74
    .line 75
    :cond_2
    :goto_1
    iput-short v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->e:S

    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 81
    .line 82
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 83
    .line 84
    if-ne p1, p2, :cond_5

    .line 85
    .line 86
    iget p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    .line 87
    .line 88
    const/16 p2, 0x400

    .line 89
    .line 90
    if-le p1, p2, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const p2, 0x3f733333    # 0.95f

    .line 97
    .line 98
    .line 99
    cmpl-float p2, p1, p2

    .line 100
    .line 101
    if-lez p2, :cond_4

    .line 102
    .line 103
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 104
    .line 105
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const p2, 0x3d4ccccd    # 0.05f

    .line 109
    .line 110
    .line 111
    cmpg-float p1, p1, p2

    .line 112
    .line 113
    if-gez p1, :cond_5

    .line 114
    .line 115
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 116
    .line 117
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 118
    .line 119
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 120
    .line 121
    return-object p1
.end method

.method public final d()V
    .locals 3

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    iput-short v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->e:S

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    const/4 v2, 0x4

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 15
    .line 16
    aput v0, v2, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    .line 22
    .line 23
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    .line 24
    .line 25
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    .line 26
    .line 27
    return-void
.end method
