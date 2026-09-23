.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/primitives/UnsignedInteger;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/google/common/primitives/UnsignedInteger;

    .line 3
    .line 4
    invoke-direct {v1, v0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-instance v1, Lcom/google/common/primitives/UnsignedInteger;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    new-instance v1, Lcom/google/common/primitives/UnsignedInteger;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 7
    .line 8
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    xor-int/2addr v0, v1

    .line 13
    xor-int/2addr p1, v1

    .line 14
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-double v0, v0

    .line 6
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    .line 7
    .line 8
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 9
    .line 10
    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    return v1
.end method

.method public final floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-float v0, v0

    .line 6
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final longValue()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->c:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
