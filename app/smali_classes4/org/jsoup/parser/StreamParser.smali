.class public Lorg/jsoup/parser/StreamParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/StreamParser$ElementIterator;
    }
.end annotation


# instance fields
.field public final c:Lorg/jsoup/parser/Parser;

.field public final f:Lorg/jsoup/parser/TreeBuilder;

.field public final g:Lorg/jsoup/parser/StreamParser$ElementIterator;

.field public h:Lorg/jsoup/nodes/Document;

.field public i:Z


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Parser;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/parser/StreamParser$ElementIterator;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/jsoup/parser/StreamParser$ElementIterator;-><init>(Lorg/jsoup/parser/StreamParser;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser;->g:Lorg/jsoup/parser/StreamParser$ElementIterator;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/jsoup/parser/StreamParser;->i:Z

    .line 13
    .line 14
    iput-object p1, p0, Lorg/jsoup/parser/StreamParser;->c:Lorg/jsoup/parser/Parser;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/jsoup/parser/Parser;->getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    .line 21
    .line 22
    iput-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->j:Lorg/jsoup/select/NodeVisitor;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 13
    .line 14
    iput-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 15
    .line 16
    iput-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public complete()Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser;->document()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/jsoup/parser/TreeBuilder;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, v1, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-object v2, v1, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 23
    .line 24
    iput-object v2, v1, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 25
    .line 26
    iput-object v2, v1, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 27
    .line 28
    return-object v0
.end method

.method public completeFragment()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 19
    .line 20
    iput-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 21
    .line 22
    iput-object v1, v0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->a()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public document()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 4
    .line 5
    iput-object v0, p0, Lorg/jsoup/parser/StreamParser;->h:Lorg/jsoup/nodes/Document;

    .line 6
    .line 7
    const-string v1, "Must run parse() before calling."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->h:Lorg/jsoup/nodes/Document;

    .line 13
    .line 14
    return-object v0
.end method

.method public expectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/StreamParser;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p1, v1, v2

    .line 10
    .line 11
    const-string p1, "No elements matched the query \'%s\' in the document."

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lorg/jsoup/helper/Validate;->expectNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    return-object p1
.end method

.method public expectNext(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/StreamParser;->selectNext(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p1, v1, v2

    .line 10
    .line 11
    const-string p1, "No elements matched the query \'%s\' in the document."

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lorg/jsoup/helper/Validate;->expectNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->g:Lorg/jsoup/parser/StreamParser$ElementIterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser;->close()V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->g:Lorg/jsoup/parser/StreamParser$ElementIterator;

    iget-object v1, v0, Lorg/jsoup/parser/StreamParser$ElementIterator;->c:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lorg/jsoup/parser/StreamParser$ElementIterator;->h:Lorg/jsoup/nodes/Element;

    iput-object v1, v0, Lorg/jsoup/parser/StreamParser$ElementIterator;->g:Lorg/jsoup/nodes/Element;

    iput-object v1, v0, Lorg/jsoup/parser/StreamParser$ElementIterator;->f:Lorg/jsoup/nodes/Element;

    .line 5
    iget-object v0, v0, Lorg/jsoup/parser/StreamParser$ElementIterator;->i:Lorg/jsoup/parser/StreamParser;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lorg/jsoup/parser/StreamParser;->i:Z

    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->c:Lorg/jsoup/parser/Parser;

    iget-object v1, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v1, p1, p2, v0}, Lorg/jsoup/parser/TreeBuilder;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 8
    iget-object p1, v1, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    iput-object p1, p0, Lorg/jsoup/parser/StreamParser;->h:Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;
    .locals 1

    .line 9
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/parser/StreamParser;->parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;

    move-result-object p1

    return-object p1
.end method

.method public parseFragment(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/jsoup/parser/StreamParser;->parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;

    .line 2
    iget-object p1, p0, Lorg/jsoup/parser/StreamParser;->f:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/TreeBuilder;->g(Lorg/jsoup/nodes/Element;)V

    return-object p0
.end method

.method public parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;
    .locals 1

    .line 3
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/parser/StreamParser;->parseFragment(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;

    move-result-object p1

    return-object p1
.end method

.method public selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/select/Selector;->evaluatorOf(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/StreamParser;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser;->document()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/StreamParser;->selectNext(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public selectNext(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jsoup/select/Selector;->evaluatorOf(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/StreamParser;->selectNext(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public selectNext(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser;->document()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/StreamParser;->stream()Lj$/util/stream/Stream;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0}, Lorg/jsoup/select/Evaluator;->asPredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v1, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public stop()Lorg/jsoup/parser/StreamParser;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/jsoup/parser/StreamParser;->i:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public stream()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/StreamParser;->g:Lorg/jsoup/parser/StreamParser$ElementIterator;

    .line 2
    .line 3
    const/16 v1, 0x111

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
