.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Lcom/google/common/annotations/J2ktIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$Dummy;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;


# virtual methods
.method public final a()Ljava/util/concurrent/ConcurrentMap;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    const/high16 v1, 0x3f400000    # 0.75f

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    const/16 v3, 0x10

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->n:Lcom/google/common/collect/MapMakerInternalMap$1;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 19
    .line 20
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->c:Lcom/google/common/collect/MapMakerInternalMap$Strength$1;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 31
    .line 32
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->a:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 53
    .line 54
    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$Strength;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 55
    .line 56
    if-ne v0, v2, :cond_2

    .line 57
    .line 58
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 59
    .line 60
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->a:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    .line 61
    .line 62
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/AssertionError;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    const-string v3, "Key strength was already set to %s"

    .line 10
    .line 11
    invoke-static {v3, v0, v2}, Lcom/google/common/base/Preconditions;->k(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->a:Z

    .line 19
    .line 20
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->b(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength$2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "keyStrength"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
