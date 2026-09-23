.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/CharSequence;

.field public final h:Lcom/google/common/base/CharMatcher;

.field public final i:Z

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->f:Lcom/google/common/base/AbstractIterator$State;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->c:Lcom/google/common/base/AbstractIterator$State;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 10
    .line 11
    iget-object v0, p1, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->h:Lcom/google/common/base/CharMatcher;

    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/google/common/base/Splitter;->b:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->i:Z

    .line 18
    .line 19
    iget p1, p1, Lcom/google/common/base/Splitter;->d:I

    .line 20
    .line 21
    iput p1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->k:I

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->g:Ljava/lang/CharSequence;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v1, v2, :cond_8

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->c(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->g:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->b(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 28
    .line 29
    :goto_1
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 30
    .line 31
    if-ne v4, v0, :cond_2

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-le v4, v1, :cond_0

    .line 42
    .line 43
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->h:Lcom/google/common/base/CharMatcher;

    .line 47
    .line 48
    if-ge v0, v1, :cond_3

    .line 49
    .line 50
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->m(C)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    .line 64
    .line 65
    add-int/lit8 v5, v1, -0x1

    .line 66
    .line 67
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->m(C)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-boolean v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->i:Z

    .line 81
    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    if-ne v0, v1, :cond_5

    .line 85
    .line 86
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    iget v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->k:I

    .line 90
    .line 91
    const/4 v6, 0x1

    .line 92
    if-ne v5, v6, :cond_6

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->j:I

    .line 99
    .line 100
    :goto_4
    if-le v1, v0, :cond_7

    .line 101
    .line 102
    add-int/lit8 v2, v1, -0x1

    .line 103
    .line 104
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v4, v2}, Lcom/google/common/base/CharMatcher;->m(C)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    sub-int/2addr v5, v6

    .line 118
    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->k:I

    .line 119
    .line 120
    :cond_7
    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :cond_8
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->g:Lcom/google/common/base/AbstractIterator$State;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->c:Lcom/google/common/base/AbstractIterator$State;

    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    return-object v0
.end method

.method public abstract b(I)I
.end method

.method public abstract c(I)I
.end method
