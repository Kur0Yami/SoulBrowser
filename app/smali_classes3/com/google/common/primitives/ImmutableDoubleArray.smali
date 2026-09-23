.class public final Lcom/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableDoubleArray$Builder;,
        Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
    }
.end annotation


# static fields
.field public static final h:Lcom/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field public final c:[D

.field public final transient f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [D

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->h:Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([DII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:[D

    .line 5
    .line 6
    iput p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->f:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->g:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(DD)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    cmp-long p0, p0, p2

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->g:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    check-cast p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->b()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v0, v1

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->b()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v0, v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->b()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->g(II)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->f:I

    .line 38
    .line 39
    add-int/2addr v2, v0

    .line 40
    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:[D

    .line 41
    .line 42
    aget-wide v2, v3, v2

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->b()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->g(II)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p1, Lcom/google/common/primitives/ImmutableDoubleArray;->c:[D

    .line 52
    .line 53
    iget v5, p1, Lcom/google/common/primitives/ImmutableDoubleArray;->f:I

    .line 54
    .line 55
    add-int/2addr v5, v0

    .line 56
    aget-wide v5, v4, v5

    .line 57
    .line 58
    invoke-static {v2, v3, v5, v6}, Lcom/google/common/primitives/ImmutableDoubleArray;->a(DD)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    :goto_1
    return v1

    .line 65
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 69
    return p1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->f:I

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->g:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:[D

    .line 11
    .line 12
    aget-wide v3, v2, v1

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const/16 v4, 0x20

    .line 19
    .line 20
    ushr-long v4, v2, v4

    .line 21
    .line 22
    xor-long/2addr v2, v4

    .line 23
    long-to-int v2, v2

    .line 24
    add-int/2addr v0, v2

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->g:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->f:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "[]"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->b()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    mul-int/lit8 v3, v3, 0x5

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x5b

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->c:[D

    .line 27
    .line 28
    aget-wide v4, v3, v1

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    if-ge v1, v0, :cond_1

    .line 36
    .line 37
    const-string v4, ", "

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    aget-wide v4, v3, v1

    .line 43
    .line 44
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v0, 0x5d

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
