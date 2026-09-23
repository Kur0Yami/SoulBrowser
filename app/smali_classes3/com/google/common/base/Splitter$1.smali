.class Lcom/google/common/base/Splitter$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "SourceFile"


# instance fields
.field public final synthetic l:Lcom/google/common/base/CharMatcher;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/CharMatcher;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/common/base/Splitter$1;->l:Lcom/google/common/base/CharMatcher;

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
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$1;->l:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->g:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/CharMatcher;->h(ILjava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
