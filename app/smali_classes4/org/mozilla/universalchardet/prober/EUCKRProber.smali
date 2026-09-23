.class public Lorg/mozilla/universalchardet/prober/EUCKRProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final f:Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field public c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public d:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;

    .line 2
    .line 3
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;->f:[I

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 11
    .line 12
    sget-object v2, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;->g:[I

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 15
    .line 16
    .line 17
    sget-object v4, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;->h:[I

    .line 18
    .line 19
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->j:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->f:Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->e:[B

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    if-ge v4, p2, :cond_4

    .line 13
    .line 14
    aget-byte v7, p1, v4

    .line 15
    .line 16
    invoke-virtual {v1, v7}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->a(B)I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-ne v7, v6, :cond_0

    .line 21
    .line 22
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 23
    .line 24
    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const/4 v8, 0x2

    .line 28
    if-ne v7, v8, :cond_1

    .line 29
    .line 30
    iput-object v5, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-nez v7, :cond_3

    .line 34
    .line 35
    iget v5, v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->c:I

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    aget-byte v7, p1, v3

    .line 40
    .line 41
    aput-byte v7, v0, v6

    .line 42
    .line 43
    invoke-virtual {v2, v0, v3, v5}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c([BII)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v6, v4, -0x1

    .line 48
    .line 49
    invoke-virtual {v2, p1, v6, v5}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c([BII)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    :goto_2
    sub-int/2addr p2, v6

    .line 56
    aget-byte p1, p1, p2

    .line 57
    .line 58
    aput-byte p1, v0, v3

    .line 59
    .line 60
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 61
    .line 62
    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 63
    .line 64
    if-ne p1, p2, :cond_5

    .line 65
    .line 66
    iget p1, v2, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->b:I

    .line 67
    .line 68
    const/16 p2, 0x400

    .line 69
    .line 70
    if-le p1, p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->a()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const p2, 0x3f733333    # 0.95f

    .line 77
    .line 78
    .line 79
    cmpl-float p1, p1, p2

    .line 80
    .line 81
    if-lez p1, :cond_5

    .line 82
    .line 83
    iput-object v5, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 84
    .line 85
    :cond_5
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 86
    .line 87
    return-object p1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

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
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->d()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->e:[B

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
