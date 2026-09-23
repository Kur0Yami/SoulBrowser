.class final Lorg/apache/commons/lang3/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharacterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field public c:C

.field public final f:Lorg/apache/commons/lang3/CharRange;

.field public g:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/CharRange;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->f:Lorg/apache/commons/lang3/CharRange;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 8
    .line 9
    iget-boolean v1, p1, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 10
    .line 11
    iget-char v2, p1, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iget-char p1, p1, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 19
    .line 20
    const v2, 0xffff

    .line 21
    .line 22
    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    .line 25
    iput-boolean v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    add-int/2addr p1, v0

    .line 29
    int-to-char p1, p1

    .line 30
    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iput-char v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iput-char v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->f:Lorg/apache/commons/lang3/CharRange;

    .line 8
    .line 9
    iget-boolean v2, v1, Lorg/apache/commons/lang3/CharRange;->g:Z

    .line 10
    .line 11
    iget-char v3, v1, Lorg/apache/commons/lang3/CharRange;->f:C

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    const v2, 0xffff

    .line 17
    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    iput-boolean v4, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 25
    .line 26
    iget-char v1, v1, Lorg/apache/commons/lang3/CharRange;->c:C

    .line 27
    .line 28
    if-ne v5, v1, :cond_2

    .line 29
    .line 30
    if-ne v3, v2, :cond_1

    .line 31
    .line 32
    iput-boolean v4, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    int-to-char v1, v3

    .line 38
    iput-char v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    int-to-char v1, v5

    .line 42
    iput-char v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    if-ge v0, v3, :cond_4

    .line 46
    .line 47
    add-int/lit8 v1, v0, 0x1

    .line 48
    .line 49
    int-to-char v1, v1

    .line 50
    iput-char v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->c:C

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iput-boolean v4, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->g:Z

    .line 54
    .line 55
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
