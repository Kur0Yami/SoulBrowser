.class Lorg/jsoup/nodes/Printer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Printer$Outline;,
        Lorg/jsoup/nodes/Printer$Pretty;
    }
.end annotation


# instance fields
.field public final c:Lorg/jsoup/nodes/Node;

.field public final f:Lorg/jsoup/internal/QuietAppendable;

.field public final g:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->c:Lorg/jsoup/nodes/Node;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 9
    .line 10
    return-void
.end method

.method public static f(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;)Lorg/jsoup/nodes/Printer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Document;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lorg/jsoup/nodes/Printer$Outline;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/nodes/Printer$Pretty;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    new-instance v1, Lorg/jsoup/nodes/Printer$Pretty;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/nodes/Printer$Pretty;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    new-instance v1, Lorg/jsoup/nodes/Printer;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/nodes/Printer;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method


# virtual methods
.method public a(ILorg/jsoup/nodes/Element;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/nodes/Element;->p(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lorg/jsoup/nodes/LeafNode;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Lorg/jsoup/nodes/Node;->p(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(ILorg/jsoup/nodes/Element;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/nodes/Element;->x(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Lorg/jsoup/nodes/TextNode;II)V
    .locals 2

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->t()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p3, Lorg/jsoup/nodes/Entities;->a:[C

    .line 8
    .line 9
    iget-object p3, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 10
    .line 11
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 20
    .line 21
    invoke-static {p1, v1, v0, p3, p2}, Lorg/jsoup/nodes/Entities;->c(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    mul-int/2addr v2, p1

    .line 16
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->maxPaddingWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->padding(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/jsoup/nodes/TextNode;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/nodes/Printer;->d(Lorg/jsoup/nodes/TextNode;II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/nodes/Printer;->a(ILorg/jsoup/nodes/Element;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/LeafNode;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->b(Lorg/jsoup/nodes/LeafNode;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final tail(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/nodes/Printer;->c(ILorg/jsoup/nodes/Element;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/select/d;->b(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
