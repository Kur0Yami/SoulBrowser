.class Lorg/jsoup/nodes/Element$TextAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAccumulator"
.end annotation


# instance fields
.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->c:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->c:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/jsoup/nodes/Element;->t(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-lez p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    const-string p2, "br"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-static {v0}, Lorg/jsoup/nodes/TextNode;->v(Ljava/lang/StringBuilder;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    const/16 p1, 0x20

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p2, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isInline()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 29
    .line 30
    iget-object p1, p1, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isInline()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->c:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->v(Ljava/lang/StringBuilder;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    const/16 p2, 0x20

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/select/d;->b(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
