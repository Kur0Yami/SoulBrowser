.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NamespaceHtml:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final NamespaceMathml:Ljava/lang/String; = "http://www.w3.org/1998/Math/MathML"

.field public static final NamespaceSvg:Ljava/lang/String; = "http://www.w3.org/2000/svg"

.field public static final NamespaceXml:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field public final c:Lorg/jsoup/parser/TreeBuilder;

.field public f:Lorg/jsoup/parser/ParseErrorList;

.field public g:Lorg/jsoup/parser/ParseSettings;

.field public h:Z

.field public i:Lorg/jsoup/parser/TagSet;

.field public final j:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Parser;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->h:Z

    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    iget-object v0, p1, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->h()Lorg/jsoup/parser/TreeBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    .line 11
    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    iget-object v1, p1, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    .line 12
    iget v2, v1, Lorg/jsoup/parser/ParseErrorList;->c:I

    iget v1, v1, Lorg/jsoup/parser/ParseErrorList;->f:I

    invoke-direct {v0, v2, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    .line 13
    iput-object v0, p0, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    .line 14
    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    iget-object v1, p1, Lorg/jsoup/parser/Parser;->g:Lorg/jsoup/parser/ParseSettings;

    .line 15
    iget-boolean v2, v1, Lorg/jsoup/parser/ParseSettings;->a:Z

    iget-boolean v1, v1, Lorg/jsoup/parser/ParseSettings;->b:Z

    invoke-direct {v0, v2, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    .line 16
    iput-object v0, p0, Lorg/jsoup/parser/Parser;->g:Lorg/jsoup/parser/ParseSettings;

    .line 17
    iget-boolean p1, p1, Lorg/jsoup/parser/Parser;->h:Z

    iput-boolean p1, p0, Lorg/jsoup/parser/Parser;->h:Z

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->h:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->d()Lorg/jsoup/parser/ParseSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->g:Lorg/jsoup/parser/ParseSettings;

    .line 6
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method public static htmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/Parser;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/jsoup/parser/Parser;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->p()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    iget-object p0, v0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput-object p0, v0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 35
    .line 36
    iput-object p0, v0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 37
    .line 38
    iput-object p0, v0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 39
    .line 40
    :goto_0
    iget-object p0, v0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 41
    .line 42
    return-object p0
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0, v1, p1}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v1, p0}, Lorg/jsoup/nodes/Element;->appendChildren(Ljava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jsoup/parser/Parser;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, v1, p1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->k(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 4
    new-instance v1, Lorg/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 5
    iput-object p3, v1, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    .line 6
    new-instance p3, Ljava/io/StringReader;

    invoke-direct {p3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/jsoup/parser/TreeBuilder;->k(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseXmlFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/parser/XmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/jsoup/parser/Parser;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2, p1, p0}, Lorg/jsoup/parser/TreeBuilder;->k(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x26

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v1, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    .line 18
    .line 19
    new-instance v3, Ljava/io/StringReader;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, ""

    .line 25
    .line 26
    invoke-virtual {v2, v3, p0, v1}, Lorg/jsoup/parser/TreeBuilder;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lorg/jsoup/parser/Tokeniser;

    .line 30
    .line 31
    iget-object v1, v1, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/CharacterReader;->o(C)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v2, p1}, Lorg/jsoup/parser/Tokeniser;->c(Ljava/lang/Character;Z)[I

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    array-length v3, v2

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v3, 0x0

    .line 76
    aget v3, v2, v3

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    array-length v3, v2

    .line 82
    const/4 v4, 0x2

    .line 83
    if-ne v3, v4, :cond_1

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    aget v2, v2, v3

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public static xmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/Parser;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->clone()Lorg/jsoup/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/parser/Parser;
    .locals 1

    .line 2
    new-instance v0, Lorg/jsoup/parser/Parser;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/Parser;)V

    return-object v0
.end method

.method public defaultNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->defaultNamespace()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getErrors()Lorg/jsoup/parser/ParseErrorList;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTrackErrors()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    iget v0, v0, Lorg/jsoup/parser/ParseErrorList;->f:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public isTrackPosition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Parser;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public newInstance()Lorg/jsoup/parser/Parser;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/parser/Parser;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/Parser;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public parseFragmentInput(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->j:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v1, p1, p2, p3, p0}, Lorg/jsoup/parser/TreeBuilder;->k(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p1
.end method

.method public parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/parser/Parser;->parseFragmentInput(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->j:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    .line 4
    invoke-virtual {v1, p1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/TreeBuilder;->p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, v1, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->close()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, v1, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 9
    iput-object p1, v1, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 10
    iput-object p1, v1, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 11
    :goto_0
    iget-object p1, v1, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    throw p1
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public setTrackErrors(I)Lorg/jsoup/parser/Parser;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->f:Lorg/jsoup/parser/ParseErrorList;

    .line 13
    .line 14
    return-object p0
.end method

.method public setTrackPosition(Z)Lorg/jsoup/parser/Parser;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/jsoup/parser/Parser;->h:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public settings()Lorg/jsoup/parser/ParseSettings;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->g:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method public settings(Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Parser;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->g:Lorg/jsoup/parser/ParseSettings;

    return-object p0
.end method

.method public tagSet(Lorg/jsoup/parser/TagSet;)Lorg/jsoup/parser/Parser;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lorg/jsoup/parser/TagSet;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;)V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->i:Lorg/jsoup/parser/TagSet;

    return-object p0
.end method

.method public tagSet()Lorg/jsoup/parser/TagSet;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->i:Lorg/jsoup/parser/TagSet;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->e()Lorg/jsoup/parser/TagSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->i:Lorg/jsoup/parser/TagSet;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->i:Lorg/jsoup/parser/TagSet;

    return-object v0
.end method
