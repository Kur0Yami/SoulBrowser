.class public Lorg/jsoup/nodes/NodeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jsoup/nodes/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:Lorg/jsoup/nodes/Node;

.field public f:Lorg/jsoup/nodes/Node;

.field public g:Lorg/jsoup/nodes/Node;

.field public h:Lorg/jsoup/nodes/Node;

.field public i:Lorg/jsoup/nodes/Node;

.field public final j:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Node;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/jsoup/nodes/NodeIterator;->j:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/NodeIterator;->restart(Lorg/jsoup/nodes/Node;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static from(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Node;",
            ")",
            "Lorg/jsoup/nodes/NodeIterator<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    .line 2
    .line 3
    const-class v1, Lorg/jsoup/nodes/Node;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->f:Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->i:Lorg/jsoup/nodes/Node;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->hasParent()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->h:Lorg/jsoup/nodes/Node;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    .line 23
    .line 24
    :cond_2
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-lez v1, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->c:Lorg/jsoup/nodes/Node;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Node;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    move-object v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    iget-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->c:Lorg/jsoup/nodes/Node;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Node;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_6
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_0
    if-nez v0, :cond_7

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_7
    iget-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->j:Ljava/lang/Class;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    move-object v2, v0

    .line 95
    :cond_8
    :goto_1
    iput-object v2, p0, Lorg/jsoup/nodes/NodeIterator;->f:Lorg/jsoup/nodes/Node;

    .line 96
    .line 97
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/NodeIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->f:Lorg/jsoup/nodes/Node;

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/NodeIterator;->next()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jsoup/nodes/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/NodeIterator;->a()V

    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->f:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    iput-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->h:Lorg/jsoup/nodes/Node;

    .line 5
    iput-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    .line 6
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->i:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lorg/jsoup/nodes/NodeIterator;->f:Lorg/jsoup/nodes/Node;

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public restart(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/NodeIterator;->j:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lorg/jsoup/nodes/NodeIterator;->f:Lorg/jsoup/nodes/Node;

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/NodeIterator;->g:Lorg/jsoup/nodes/Node;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/jsoup/nodes/NodeIterator;->h:Lorg/jsoup/nodes/Node;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/jsoup/nodes/NodeIterator;->c:Lorg/jsoup/nodes/Node;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/jsoup/nodes/NodeIterator;->i:Lorg/jsoup/nodes/Node;

    .line 22
    .line 23
    return-void
.end method
