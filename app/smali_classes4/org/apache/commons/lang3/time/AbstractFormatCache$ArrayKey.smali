.class final Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/AbstractFormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayKey"
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {p1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->b:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    const-class v1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->a:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->a:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->b:I

    .line 2
    .line 3
    return v0
.end method
