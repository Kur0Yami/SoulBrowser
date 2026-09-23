.class final Lorg/jsoup/parser/StreamParser$ElementIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/StreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ElementIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jsoup/nodes/Element;",
        ">;",
        "Lorg/jsoup/select/NodeVisitor;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/LinkedList;

.field public f:Lorg/jsoup/nodes/Element;

.field public g:Lorg/jsoup/nodes/Element;

.field public h:Lorg/jsoup/nodes/Element;

.field public final synthetic i:Lorg/jsoup/parser/StreamParser;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/StreamParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->i:Lorg/jsoup/parser/StreamParser;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->c:Ljava/util/LinkedList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->i:Lorg/jsoup/parser/StreamParser;

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/jsoup/parser/StreamParser;->i:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->c:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v2, v0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->p()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 48
    .line 49
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {v0}, Lorg/jsoup/parser/StreamParser;->stop()Lorg/jsoup/parser/StreamParser;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/jsoup/parser/StreamParser;->close()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->h:Lorg/jsoup/nodes/Element;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->h:Lorg/jsoup/nodes/Element;

    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser$ElementIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->previousElementSibling()Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->c:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser$ElementIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->f:Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->f:Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->remove()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public final tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->h:Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->lastElementChild()Lorg/jsoup/nodes/Element;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lorg/jsoup/parser/StreamParser$ElementIterator;->c:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/select/d;->b(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
