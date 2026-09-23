.class public Lorg/mozilla/universalchardet/prober/EscCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final f:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

.field public static final g:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

.field public static final h:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

.field public static final i:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;


# instance fields
.field public b:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field public c:I

.field public d:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 2
    .line 3
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 4
    .line 5
    sget-object v2, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;->f:[I

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 11
    .line 12
    sget-object v2, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;->g:[I

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 15
    .line 16
    .line 17
    sget-object v4, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;->h:[I

    .line 18
    .line 19
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->B:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->f:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 26
    .line 27
    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 28
    .line 29
    new-instance v2, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 30
    .line 31
    sget-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->f:[I

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 37
    .line 38
    sget-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->g:[I

    .line 39
    .line 40
    invoke-direct {v4, v0}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 41
    .line 42
    .line 43
    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->h:[I

    .line 44
    .line 45
    sget-object v6, Lorg/mozilla/universalchardet/Constants;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/16 v3, 0x9

    .line 48
    .line 49
    invoke-direct/range {v1 .. v6}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->g:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 53
    .line 54
    new-instance v2, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 55
    .line 56
    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 57
    .line 58
    sget-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;->f:[I

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 64
    .line 65
    sget-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;->g:[I

    .line 66
    .line 67
    invoke-direct {v5, v0}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 68
    .line 69
    .line 70
    sget-object v6, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;->h:[I

    .line 71
    .line 72
    sget-object v7, Lorg/mozilla/universalchardet/Constants;->a:Ljava/lang/String;

    .line 73
    .line 74
    const/16 v4, 0xa

    .line 75
    .line 76
    invoke-direct/range {v2 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->h:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 80
    .line 81
    new-instance v3, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    .line 82
    .line 83
    new-instance v4, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 84
    .line 85
    sget-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;->f:[I

    .line 86
    .line 87
    invoke-direct {v4, v0}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 88
    .line 89
    .line 90
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 91
    .line 92
    sget-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;->g:[I

    .line 93
    .line 94
    invoke-direct {v6, v0}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>([I)V

    .line 95
    .line 96
    .line 97
    sget-object v7, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;->h:[I

    .line 98
    .line 99
    sget-object v8, Lorg/mozilla/universalchardet/Constants;->c:Ljava/lang/String;

    .line 100
    .line 101
    const/4 v5, 0x6

    .line 102
    invoke-direct/range {v3 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sput-object v3, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->i:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public final c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->b:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_4

    .line 5
    .line 6
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 7
    .line 8
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 9
    .line 10
    if-ne v2, v3, :cond_4

    .line 11
    .line 12
    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->c:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    sub-int/2addr v2, v3

    .line 16
    :goto_1
    if-ltz v2, :cond_3

    .line 17
    .line 18
    aget-object v4, v0, v2

    .line 19
    .line 20
    aget-byte v5, p1, v1

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->a(B)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ne v4, v3, :cond_1

    .line 27
    .line 28
    iget v4, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->c:I

    .line 29
    .line 30
    sub-int/2addr v4, v3

    .line 31
    iput v4, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->c:I

    .line 32
    .line 33
    if-gtz v4, :cond_0

    .line 34
    .line 35
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->g:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 36
    .line 37
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    aget-object v5, v0, v4

    .line 43
    .line 44
    aget-object v6, v0, v2

    .line 45
    .line 46
    aput-object v6, v0, v4

    .line 47
    .line 48
    aput-object v5, v0, v2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const/4 v5, 0x2

    .line 52
    if-ne v4, v5, :cond_2

    .line 53
    .line 54
    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 55
    .line 56
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 57
    .line 58
    aget-object p2, v0, v2

    .line 59
    .line 60
    iget-object p2, p2, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->a:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 61
    .line 62
    iget-object p2, p2, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->e:Ljava/lang/String;

    .line 63
    .line 64
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->e:Ljava/lang/String;

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 74
    .line 75
    return-object p1
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->b:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iput v0, v2, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->b:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v0, v2

    .line 20
    iput v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->c:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->e:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method
