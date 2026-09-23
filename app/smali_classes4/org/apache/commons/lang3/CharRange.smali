.class final Lorg/apache/commons/lang3/CharRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final c:C

.field public final f:C

.field public final g:Z

.field public transient h:Ljava/lang/String;


# direct methods
.method public constructor <init>(CCZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-le p1, p2, :cond_0

    .line 5
    .line 6
    move v0, p2

    .line 7
    move p2, p1

    .line 8
    move p1, v0

    .line 9
    :cond_0
    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 10
    .line 11
    iput-char p2, p0, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 12
    .line 13
    iput-boolean p3, p0, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/CharRange;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/CharRange;

    .line 10
    .line 11
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 12
    .line 13
    iget-char v1, p1, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 18
    .line 19
    iget-char v1, p1, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 24
    .line 25
    iget-boolean p1, p1, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 26
    .line 27
    if-ne v0, p1, :cond_2

    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x53

    .line 4
    .line 5
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x5e

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x2d

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lorg/apache/commons/lang3/CharRange;->h:Ljava/lang/String;

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->h:Ljava/lang/String;

    .line 44
    .line 45
    return-object v0
.end method
