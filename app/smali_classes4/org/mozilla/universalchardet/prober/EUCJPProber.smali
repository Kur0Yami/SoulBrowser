.class public Lorg/mozilla/universalchardet/prober/EUCJPProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final g:Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field public c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public d:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

.field public e:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

.field public f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;

    .line 2
    .line 3
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;->f:[I

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 11
    .line 12
    sget-object v2, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;->g:[I

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 15
    .line 16
    .line 17
    sget-object v4, Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;->h:[I

    .line 18
    .line 19
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->i:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->g:Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()F
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->d:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 2
    .line 3
    iget v1, v0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->b:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-le v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->a:[I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v0, v0, v2

    .line 12
    .line 13
    sub-int v0, v1, v0

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    int-to-float v1, v1

    .line 17
    div-float/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->e:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->a()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->e:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->d:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->f:[B

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_0
    sget-object v6, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    if-ge v5, p2, :cond_4

    .line 15
    .line 16
    aget-byte v8, p1, v5

    .line 17
    .line 18
    invoke-virtual {v1, v8}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->a(B)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-ne v8, v7, :cond_0

    .line 23
    .line 24
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 25
    .line 26
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const/4 v9, 0x2

    .line 30
    if-ne v8, v9, :cond_1

    .line 31
    .line 32
    iput-object v6, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    if-nez v8, :cond_3

    .line 36
    .line 37
    iget v6, v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->c:I

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    aget-byte v8, p1, v4

    .line 42
    .line 43
    aput-byte v8, v3, v7

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4, v6}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->b([BII)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v4, v6}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c([BII)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v7, v5, -0x1

    .line 53
    .line 54
    invoke-virtual {v2, p1, v7, v6}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->b([BII)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, v7, v6}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c([BII)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    :goto_2
    sub-int/2addr p2, v7

    .line 64
    aget-byte p1, p1, p2

    .line 65
    .line 66
    aput-byte p1, v3, v4

    .line 67
    .line 68
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 69
    .line 70
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 71
    .line 72
    if-ne p1, p2, :cond_5

    .line 73
    .line 74
    iget p1, v2, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->b:I

    .line 75
    .line 76
    const/16 p2, 0x64

    .line 77
    .line 78
    if-le p1, p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCJPProber;->b()F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const p2, 0x3f733333    # 0.95f

    .line 85
    .line 86
    .line 87
    cmpl-float p1, p1, p2

    .line 88
    .line 89
    if-lez p1, :cond_5

    .line 90
    .line 91
    iput-object v6, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 92
    .line 93
    :cond_5
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 94
    .line 95
    return-object p1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->b:I

    .line 5
    .line 6
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->d:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->e:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->d()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCJPProber;->f:[B

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
