.class Lorg/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jsoup/nodes/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public f:I

.field public final synthetic g:Lorg/jsoup/nodes/Attributes;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->g:Lorg/jsoup/nodes/Attributes;

    .line 5
    .line 6
    iget p1, p1, Lorg/jsoup/nodes/Attributes;->c:I

    .line 7
    .line 8
    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->g:Lorg/jsoup/nodes/Attributes;

    .line 2
    .line 3
    iget v1, v0, Lorg/jsoup/nodes/Attributes;->c:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/nodes/Attributes$1;->c:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 10
    .line 11
    iget v2, v0, Lorg/jsoup/nodes/Attributes;->c:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lorg/jsoup/nodes/Attributes;->f:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v1, v2, v1

    .line 19
    .line 20
    invoke-static {v1}, Lorg/jsoup/nodes/Attributes;->m(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 27
    .line 28
    add-int/2addr v1, v3

    .line 29
    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 33
    .line 34
    iget v0, v0, Lorg/jsoup/nodes/Attributes;->c:I

    .line 35
    .line 36
    if-ge v1, v0, :cond_1

    .line 37
    .line 38
    return v3

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 42
    .line 43
    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->g:Lorg/jsoup/nodes/Attributes;

    .line 2
    .line 3
    iget v1, v0, Lorg/jsoup/nodes/Attributes;->c:I

    .line 4
    .line 5
    iget v2, p0, Lorg/jsoup/nodes/Attributes$1;->c:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget v2, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 10
    .line 11
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lorg/jsoup/nodes/Attributes;->f:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    new-instance v2, Lorg/jsoup/nodes/Attribute;

    .line 18
    .line 19
    iget-object v3, v0, Lorg/jsoup/nodes/Attributes;->g:[Ljava/lang/Object;

    .line 20
    .line 21
    iget v4, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 22
    .line 23
    aget-object v3, v3, v4

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, v1, v3, v0}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 44
    .line 45
    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->f:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->g:Lorg/jsoup/nodes/Attributes;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Attributes;->q(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->c:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->c:I

    .line 17
    .line 18
    return-void
.end method
