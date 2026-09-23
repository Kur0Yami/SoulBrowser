.class public Lorg/jsoup/nodes/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Range$Position;,
        Lorg/jsoup/nodes/Range$AttributeRange;
    }
.end annotation


# static fields
.field public static final c:Lorg/jsoup/nodes/Range$Position;

.field public static final d:Lorg/jsoup/nodes/Range;


# instance fields
.field public final a:Lorg/jsoup/nodes/Range$Position;

.field public final b:Lorg/jsoup/nodes/Range$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1, v1}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/nodes/Range;->c:Lorg/jsoup/nodes/Range$Position;

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/nodes/Range;

    .line 10
    .line 11
    invoke-direct {v1, v0, v0}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lorg/jsoup/nodes/Range;->d:Lorg/jsoup/nodes/Range;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public end()Lorg/jsoup/nodes/Range$Position;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 2
    .line 3
    return-object v0
.end method

.method public endPos()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 2
    .line 3
    iget v0, v0, Lorg/jsoup/nodes/Range$Position;->a:I

    .line 4
    .line 5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Range;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 22
    .line 23
    iget-object v2, p1, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public isImplicit()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Range;->isTracked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public isTracked()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Range;->d:Lorg/jsoup/nodes/Range;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public start()Lorg/jsoup/nodes/Range$Position;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 2
    .line 3
    return-object v0
.end method

.method public startPos()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 2
    .line 3
    iget v0, v0, Lorg/jsoup/nodes/Range$Position;->a:I

    .line 4
    .line 5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/jsoup/nodes/Range;->a:Lorg/jsoup/nodes/Range$Position;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/jsoup/nodes/Range;->b:Lorg/jsoup/nodes/Range$Position;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
