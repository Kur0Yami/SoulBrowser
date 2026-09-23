.class final Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;
.super Lorg/apache/commons/text/matcher/AbstractStringMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/matcher/AbstractStringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharArrayMatcher"
.end annotation


# instance fields
.field public final a:[C

.field public final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [C

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->a:[C

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a([CII)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->a:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int v2, p2, v1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-le v2, p3, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    move p3, v3

    .line 11
    :goto_0
    if-ge p3, v1, :cond_2

    .line 12
    .line 13
    aget-char v2, v0, p3

    .line 14
    .line 15
    aget-char v4, p1, p2

    .line 16
    .line 17
    if-eq v2, v4, :cond_1

    .line 18
    .line 19
    :goto_1
    return v3

    .line 20
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 21
    .line 22
    add-int/lit8 p2, p2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "[\""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "\"]"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
