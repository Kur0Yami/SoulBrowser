.class public final Lcom/google/common/collect/Range;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Range$RangeLexOrdering;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final g:Lcom/google/common/collect/Range;


# instance fields
.field public final c:Lcom/google/common/collect/Cut;

.field public final f:Lcom/google/common/collect/Cut;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/Range;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/Cut$BelowAll;->f:Lcom/google/common/collect/Cut$BelowAll;

    .line 4
    .line 5
    sget-object v2, Lcom/google/common/collect/Cut$AboveAll;->f:Lcom/google/common/collect/Cut$AboveAll;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/common/collect/Range;->g:Lcom/google/common/collect/Range;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/google/common/collect/Cut;->b(Lcom/google/common/collect/Cut;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->f:Lcom/google/common/collect/Cut$AboveAll;

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->f:Lcom/google/common/collect/Cut$BelowAll;

    .line 25
    .line 26
    if-eq p2, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Invalid range: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const/16 v3, 0x10

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lcom/google/common/collect/Cut;->c(Ljava/lang/StringBuilder;)V

    .line 46
    .line 47
    .line 48
    const-string p1, ".."

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v2}, Lcom/google/common/collect/Cut;->d(Ljava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public static b(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->f:Lcom/google/common/collect/Cut$AboveAll;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/common/collect/Cut;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut$BelowValue;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Lcom/google/common/collect/Range;

    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    new-instance p1, Lcom/google/common/collect/Cut$AboveValue;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lcom/google/common/collect/Range;

    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public static g(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/common/collect/Cut$AboveValue;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Cut;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut$BelowValue;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    if-ne p3, v0, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lcom/google/common/collect/Cut;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut$BelowValue;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance p0, Lcom/google/common/collect/Cut$AboveValue;

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    new-instance p2, Lcom/google/common/collect/Range;

    .line 28
    .line 29
    invoke-direct {p2, p1, p0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public static h(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->f:Lcom/google/common/collect/Cut$BelowAll;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/google/common/collect/Cut$AboveValue;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/google/common/collect/Range;

    .line 18
    .line 19
    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/Cut;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut$BelowValue;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lcom/google/common/collect/Range;

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->g(Ljava/lang/Comparable;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->g(Ljava/lang/Comparable;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->a(Ljava/lang/Comparable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/Cut$AboveAll;->f:Lcom/google/common/collect/Cut$AboveAll;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final d(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Cut;->b(Lcom/google/common/collect/Cut;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p1, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/google/common/collect/Cut;->b(Lcom/google/common/collect/Cut;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    if-gtz v4, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    if-gtz v0, :cond_1

    .line 23
    .line 24
    if-ltz v4, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    if-ltz v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 31
    .line 32
    :goto_0
    if-gtz v4, :cond_3

    .line 33
    .line 34
    move-object v2, v3

    .line 35
    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->b(Lcom/google/common/collect/Cut;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-gtz v0, :cond_4

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v0, 0x0

    .line 44
    :goto_1
    const-string v3, "intersection is undefined for disconnected ranges %s and %s"

    .line 45
    .line 46
    invoke-static {v0, v3, p0, p1}, Lcom/google/common/base/Preconditions;->f(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/google/common/collect/Range;

    .line 50
    .line 51
    invoke-direct {p1, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method

.method public final e(Lcom/google/common/collect/Range;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->b(Lcom/google/common/collect/Cut;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Cut;->b(Lcom/google/common/collect/Cut;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-gtz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/Range;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/collect/Range;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    return v1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/common/collect/Cut;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Cut;->c(Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    const-string v1, ".."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Cut;->d(Ljava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
