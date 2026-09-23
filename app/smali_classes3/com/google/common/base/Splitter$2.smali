.class Lcom/google/common/base/Splitter$2;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "SourceFile"


# instance fields
.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/common/base/Splitter$2;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$2;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    return v0
.end method

.method public final c(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$2;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->g:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int/2addr v3, v1

    .line 14
    :goto_0
    if-gt p1, v3, :cond_2

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_1
    if-ge v4, v1, :cond_1

    .line 18
    .line 19
    add-int v5, v4, p1

    .line 20
    .line 21
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    return p1

    .line 38
    :cond_2
    const/4 p1, -0x1

    .line 39
    return p1
.end method
