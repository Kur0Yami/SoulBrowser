.class final Lcom/google/common/collect/GeneralRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Comparator;

.field public final f:Z

.field public final g:Ljava/lang/Object;

.field public final h:Lcom/google/common/collect/BoundType;

.field public final i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Lcom/google/common/collect/BoundType;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object p4, p0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p7, p0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    if-eqz p5, :cond_1

    .line 33
    .line 34
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p2, :cond_5

    .line 38
    .line 39
    if-eqz p5, :cond_5

    .line 40
    .line 41
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 p2, 0x0

    .line 46
    const/4 p5, 0x1

    .line 47
    if-gtz p1, :cond_2

    .line 48
    .line 49
    move v0, p5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v0, p2

    .line 52
    :goto_0
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    .line 53
    .line 54
    invoke-static {v0, v1, p3, p6}, Lcom/google/common/base/Preconditions;->f(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    sget-object p1, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 60
    .line 61
    if-ne p4, p1, :cond_3

    .line 62
    .line 63
    if-eq p7, p1, :cond_4

    .line 64
    .line 65
    :cond_3
    move p2, p5

    .line 66
    :cond_4
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final b(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 6
    .line 7
    iget-boolean v3, v1, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 10
    .line 11
    iget-object v5, v1, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 14
    .line 15
    iget-object v7, v1, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 20
    .line 21
    invoke-interface {v8, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 29
    .line 30
    iget-boolean v9, v0, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 31
    .line 32
    if-nez v9, :cond_0

    .line 33
    .line 34
    move v13, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v10, v0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {v8, v10, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ltz v3, :cond_1

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    if-ne v6, v1, :cond_2

    .line 49
    .line 50
    :cond_1
    move v13, v9

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v6, v0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 53
    .line 54
    move v13, v9

    .line 55
    move-object v7, v10

    .line 56
    :goto_0
    iget-boolean v3, v0, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    move/from16 v16, v2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v9, v0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-interface {v8, v9, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-gtz v2, :cond_4

    .line 72
    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    if-ne v4, v1, :cond_5

    .line 76
    .line 77
    :cond_4
    move/from16 v16, v3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    iget-object v4, v0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 81
    .line 82
    move/from16 v16, v3

    .line 83
    .line 84
    move-object v5, v9

    .line 85
    :goto_1
    if-eqz v13, :cond_7

    .line 86
    .line 87
    if-eqz v16, :cond_7

    .line 88
    .line 89
    invoke-interface {v8, v7, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-gtz v2, :cond_6

    .line 94
    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    if-ne v6, v1, :cond_7

    .line 98
    .line 99
    if-ne v4, v1, :cond_7

    .line 100
    .line 101
    :cond_6
    sget-object v4, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 102
    .line 103
    move-object v15, v1

    .line 104
    move-object v14, v5

    .line 105
    :goto_2
    move-object/from16 v18, v4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    move-object v15, v6

    .line 109
    move-object v14, v7

    .line 110
    goto :goto_2

    .line 111
    :goto_3
    new-instance v11, Lcom/google/common/collect/GeneralRange;

    .line 112
    .line 113
    iget-object v12, v0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 114
    .line 115
    move-object/from16 v17, v5

    .line 116
    .line 117
    invoke-direct/range {v11 .. v18}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 118
    .line 119
    .line 120
    return-object v11
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    if-nez p1, :cond_2

    .line 22
    .line 23
    move p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 27
    .line 28
    sget-object v4, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 29
    .line 30
    if-ne v3, v4, :cond_3

    .line 31
    .line 32
    move v1, v0

    .line 33
    :cond_3
    and-int/2addr p1, v1

    .line 34
    or-int/2addr p1, v2

    .line 35
    return p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    if-nez p1, :cond_2

    .line 22
    .line 23
    move p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 27
    .line 28
    sget-object v4, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 29
    .line 30
    if-ne v3, v4, :cond_3

    .line 31
    .line 32
    move v1, v0

    .line 33
    :cond_3
    and-int/2addr p1, v1

    .line 34
    or-int/2addr p1, v2

    .line 35
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/GeneralRange;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/collect/GeneralRange;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 19
    .line 20
    iget-boolean v2, p1, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 25
    .line 26
    iget-boolean v2, p1, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 27
    .line 28
    if-ne v0, v2, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 41
    .line 42
    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
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
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 17
    .line 18
    sget-object v2, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x5b

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v1, 0x28

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string v1, "-\u221e"

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x2c

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const-string v1, "\u221e"

    .line 55
    .line 56
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 60
    .line 61
    if-ne v1, v2, :cond_3

    .line 62
    .line 63
    const/16 v1, 0x5d

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/16 v1, 0x29

    .line 67
    .line 68
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
