.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$Strategy;,
        Lcom/google/common/base/Splitter$MapSplitter;,
        Lcom/google/common/base/Splitter$SplittingIterator;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/CharMatcher;

.field public final b:Z

.field public final c:Lcom/google/common/base/Splitter$Strategy;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/google/common/base/CharMatcher$None;->f:Lcom/google/common/base/CharMatcher;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$Strategy;

    .line 3
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->b:Z

    .line 4
    iput-object p3, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    .line 5
    iput p4, p0, Lcom/google/common/base/Splitter;->d:I

    return-void
.end method

.method public static a(C)Lcom/google/common/base/Splitter;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/common/base/Splitter;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/base/a;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/google/common/base/a;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public static b()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/base/JdkPattern;

    .line 2
    .line 3
    const-string v1, "\r\n|\n|\r"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/common/base/JdkPattern;-><init>(Ljava/util/regex/Pattern;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/common/base/JdkPattern$JdkMatcher;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/common/base/JdkPattern;->c:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const-string v3, ""

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lcom/google/common/base/JdkPattern$JdkMatcher;-><init>(Ljava/util/regex/Matcher;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Lcom/google/common/base/JdkPattern$JdkMatcher;->a:Ljava/util/regex/Matcher;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    xor-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    const-string v2, "The pattern may not match the empty string: %s"

    .line 34
    .line 35
    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/base/Splitter$5;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$5;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$Strategy;

    .line 5
    .line 6
    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$Strategy;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final e()Lcom/google/common/base/Splitter;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->g:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/base/Splitter;

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->b:Z

    .line 9
    .line 10
    iget v3, p0, Lcom/google/common/base/Splitter;->d:I

    .line 11
    .line 12
    iget-object v4, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$Strategy;

    .line 13
    .line 14
    invoke-direct {v1, v4, v2, v0, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/CharMatcher;I)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method
