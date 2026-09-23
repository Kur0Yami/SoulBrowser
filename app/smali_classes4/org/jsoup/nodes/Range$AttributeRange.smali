.class public Lorg/jsoup/nodes/Range$AttributeRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeRange"
.end annotation


# static fields
.field public static final c:Lorg/jsoup/nodes/Range$AttributeRange;


# instance fields
.field public final a:Lorg/jsoup/nodes/Range;

.field public final b:Lorg/jsoup/nodes/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/nodes/Range;->d:Lorg/jsoup/nodes/Range;

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lorg/jsoup/nodes/Range$AttributeRange;-><init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/jsoup/nodes/Range$AttributeRange;->c:Lorg/jsoup/nodes/Range$AttributeRange;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->a:Lorg/jsoup/nodes/Range;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->b:Lorg/jsoup/nodes/Range;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
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
    check-cast p1, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->a:Lorg/jsoup/nodes/Range;

    .line 22
    .line 23
    iget-object v2, p1, Lorg/jsoup/nodes/Range$AttributeRange;->a:Lorg/jsoup/nodes/Range;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->b:Lorg/jsoup/nodes/Range;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/jsoup/nodes/Range$AttributeRange;->b:Lorg/jsoup/nodes/Range;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->a:Lorg/jsoup/nodes/Range;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->b:Lorg/jsoup/nodes/Range;

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

.method public nameRange()Lorg/jsoup/nodes/Range;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->a:Lorg/jsoup/nodes/Range;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->a:Lorg/jsoup/nodes/Range;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x3d

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->b:Lorg/jsoup/nodes/Range;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public valueRange()Lorg/jsoup/nodes/Range;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->b:Lorg/jsoup/nodes/Range;

    .line 2
    .line 3
    return-object v0
.end method
