.class abstract Lorg/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/jsoup/parser/Parser;

.field public b:Lorg/jsoup/parser/CharacterReader;

.field public c:Lorg/jsoup/parser/Tokeniser;

.field public d:Lorg/jsoup/nodes/Document;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Lorg/jsoup/parser/Token;

.field public h:Lorg/jsoup/parser/ParseSettings;

.field public i:Lorg/jsoup/parser/TagSet;

.field public j:Lorg/jsoup/select/NodeVisitor;

.field public k:Lorg/jsoup/parser/Token$StartTag;

.field public final l:Lorg/jsoup/parser/Token$EndTag;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->l:Lorg/jsoup/parser/Token$EndTag;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public final b()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 21
    .line 22
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 45
    return p1
.end method

.method public abstract d()Lorg/jsoup/parser/ParseSettings;
.end method

.method public defaultNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lorg/jsoup/parser/TagSet;
    .locals 1

    .line 1
    invoke-static {}, Lorg/jsoup/parser/TagSet;->Html()Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 2

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "baseUri"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lorg/jsoup/nodes/Document;

    .line 15
    .line 16
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->defaultNamespace()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 24
    .line 25
    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 29
    .line 30
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 35
    .line 36
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 42
    .line 43
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackPosition()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput-boolean p1, p0, Lorg/jsoup/parser/TreeBuilder;->m:Z

    .line 48
    .line 49
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 50
    .line 51
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackErrors()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->m:Z

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 65
    :goto_1
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/CharacterReader;->trackNewlines(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackErrors()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 79
    .line 80
    .line 81
    :cond_2
    new-instance p1, Lorg/jsoup/parser/Tokeniser;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 87
    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 89
    .line 90
    const/16 v0, 0x20

    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->tagSet()Lorg/jsoup/parser/TagSet;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->i:Lorg/jsoup/parser/TagSet;

    .line 102
    .line 103
    new-instance p1, Lorg/jsoup/parser/Token$StartTag;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->k:Lorg/jsoup/parser/Token$StartTag;

    .line 109
    .line 110
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 111
    .line 112
    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->f:Ljava/lang/String;

    .line 113
    .line 114
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->j(Lorg/jsoup/nodes/Node;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public g(Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract h()Lorg/jsoup/parser/TreeBuilder;
.end method

.method public final i(Lorg/jsoup/nodes/Node;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->s(Lorg/jsoup/nodes/Node;Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->j:Lorg/jsoup/select/NodeVisitor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0, p1, v1}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final j(Lorg/jsoup/nodes/Node;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->s(Lorg/jsoup/nodes/Node;Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->j:Lorg/jsoup/select/NodeVisitor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0, p1, v1}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final k(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lorg/jsoup/parser/TreeBuilder;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/TreeBuilder;->g(Lorg/jsoup/nodes/Element;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->p()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->a()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public l()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->i(Lorg/jsoup/nodes/Node;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public abstract m(Lorg/jsoup/parser/Token;)Z
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->l:Lorg/jsoup/parser/Token$EndTag;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->k(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Tag;->n()Lorg/jsoup/parser/Token$Tag;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lorg/jsoup/parser/Token$Tag;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->k:Lorg/jsoup/parser/Token$StartTag;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->k(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->n()Lorg/jsoup/parser/Token$Tag;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final p()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->i(Lorg/jsoup/nodes/Node;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_2
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 36
    .line 37
    iget-object v1, v0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$Character;

    .line 38
    .line 39
    :goto_0
    iget-boolean v4, v0, Lorg/jsoup/parser/Tokeniser;->e:Z

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    iget-object v4, v0, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/TokeniserState;

    .line 44
    .line 45
    iget-object v5, v0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 46
    .line 47
    invoke-virtual {v4, v0, v5}, Lorg/jsoup/parser/TokeniserState;->d(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v4, v1, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 52
    .line 53
    invoke-virtual {v4}, Lorg/jsoup/parser/TokenData;->c()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    iput-boolean v2, v0, Lorg/jsoup/parser/Tokeniser;->e:Z

    .line 61
    .line 62
    iget-object v1, v0, Lorg/jsoup/parser/Tokeniser;->d:Lorg/jsoup/parser/Token;

    .line 63
    .line 64
    :goto_1
    iput-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lorg/jsoup/parser/Token;->f()V

    .line 70
    .line 71
    .line 72
    return v3
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->i:Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    invoke-virtual {p4}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jsoup/parser/TagSet;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->i:Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->defaultNamespace()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 16
    .line 17
    invoke-virtual {v3}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/jsoup/parser/TagSet;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final s(Lorg/jsoup/nodes/Node;Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 7
    .line 8
    iget v1, v0, Lorg/jsoup/parser/Token;->b:I

    .line 9
    .line 10
    iget v2, v0, Lorg/jsoup/parser/Token;->c:I

    .line 11
    .line 12
    instance-of v3, p1, Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    if-eqz v3, :cond_5

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->endSourceRange()Lorg/jsoup/nodes/Range;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/jsoup/nodes/Range;->isTracked()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_2
    :goto_1
    move v2, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    if-eqz p2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->e()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 57
    .line 58
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->d()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 98
    .line 99
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    :goto_2
    goto :goto_1

    .line 108
    :cond_5
    :goto_3
    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    .line 109
    .line 110
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Lorg/jsoup/parser/CharacterReader;->l(I)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 117
    .line 118
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/CharacterReader;->d(I)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-direct {v0, v1, v3, v4}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lorg/jsoup/nodes/Range$Position;

    .line 126
    .line 127
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 128
    .line 129
    invoke-virtual {v3, v2}, Lorg/jsoup/parser/CharacterReader;->l(I)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Lorg/jsoup/parser/CharacterReader;->d(I)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Lorg/jsoup/nodes/Range;

    .line 143
    .line 144
    invoke-direct {v2, v0, v1}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    const-string p2, "jsoup.start"

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    const-string p2, "jsoup.end"

    .line 157
    .line 158
    :goto_4
    invoke-virtual {p1, p2, v2}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/String;Ljava/lang/Object;)Lorg/jsoup/nodes/Attributes;

    .line 159
    .line 160
    .line 161
    return-void
.end method
