.class Lorg/jsoup/nodes/Printer$Pretty;
.super Lorg/jsoup/nodes/Printer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Printer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pretty"
.end annotation


# instance fields
.field public h:Z


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Printer;-><init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 6
    .line 7
    :goto_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    sget p2, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    .line 10
    .line 11
    instance-of p3, p1, Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    move-object p3, p1

    .line 16
    check-cast p3, Lorg/jsoup/nodes/Element;

    .line 17
    .line 18
    iget-object p3, p3, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 19
    .line 20
    invoke-virtual {p3, p2}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static g(Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jsoup/nodes/TextNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/jsoup/nodes/TextNode;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public final a(ILorg/jsoup/nodes/Element;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer$Pretty;->i(Lorg/jsoup/nodes/Node;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer;->e(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->a(ILorg/jsoup/nodes/Element;)V

    .line 11
    .line 12
    .line 13
    sget p1, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    .line 14
    .line 15
    iget-object p2, p2, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final b(Lorg/jsoup/nodes/LeafNode;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->i(Lorg/jsoup/nodes/Node;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer;->e(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->b(Lorg/jsoup/nodes/LeafNode;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(ILorg/jsoup/nodes/Element;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v0}, Lorg/jsoup/nodes/Printer$Pretty;->g(Lorg/jsoup/nodes/Node;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer$Pretty;->i(Lorg/jsoup/nodes/Node;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer;->e(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lorg/jsoup/nodes/Printer;->f:Lorg/jsoup/internal/QuietAppendable;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->g:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/nodes/Element;->x(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-object p1, p2, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 37
    .line 38
    sget v0, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->preserveWhitespace()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 70
    .line 71
    :cond_4
    :goto_2
    return-void
.end method

.method public final d(Lorg/jsoup/nodes/TextNode;II)V
    .locals 4

    .line 1
    iget-boolean p2, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_8

    .line 5
    .line 6
    iget-object p2, p1, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Element;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, 0x4

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    :cond_0
    move v0, v1

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    instance-of v3, p2, Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    :cond_2
    if-eqz p2, :cond_3

    .line 36
    .line 37
    instance-of v3, p2, Lorg/jsoup/nodes/TextNode;

    .line 38
    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer$Pretty;->i(Lorg/jsoup/nodes/Node;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    :cond_3
    const/16 v1, 0xc

    .line 48
    .line 49
    :cond_4
    if-eqz v2, :cond_7

    .line 50
    .line 51
    instance-of p2, v2, Lorg/jsoup/nodes/TextNode;

    .line 52
    .line 53
    if-nez p2, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Printer$Pretty;->i(Lorg/jsoup/nodes/Node;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    :goto_0
    invoke-static {v2}, Lorg/jsoup/nodes/Printer$Pretty;->g(Lorg/jsoup/nodes/Node;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_6

    .line 67
    .line 68
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_6
    instance-of p2, v2, Lorg/jsoup/nodes/TextNode;

    .line 74
    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nodeValue()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {p2}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_0

    .line 90
    .line 91
    :cond_7
    :goto_1
    or-int/lit8 p2, v1, 0x10

    .line 92
    .line 93
    move v0, p2

    .line 94
    :goto_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_8

    .line 99
    .line 100
    iget-object p2, p1, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Element;

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_8

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->i(Lorg/jsoup/nodes/Node;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_8

    .line 113
    .line 114
    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/Printer;->e(I)V

    .line 115
    .line 116
    .line 117
    :cond_8
    invoke-super {p0, p1, v0, p3}, Lorg/jsoup/nodes/Printer;->d(Lorg/jsoup/nodes/TextNode;II)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public h(Lorg/jsoup/nodes/Node;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget-object v1, p1, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p1, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    instance-of v1, v1, Lorg/jsoup/nodes/Document;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move v1, v0

    .line 36
    :goto_0
    const/4 v2, 0x5

    .line 37
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    iget-object v2, p1, Lorg/jsoup/nodes/Element;->h:Lorg/jsoup/parser/Tag;

    .line 48
    .line 49
    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return v0

    .line 64
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_4
    return v0
.end method

.method public i(Lorg/jsoup/nodes/Node;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->c:Lorg/jsoup/nodes/Node;

    .line 5
    .line 6
    if-eq p1, v1, :cond_6

    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/jsoup/nodes/Printer$Pretty;->h:Z

    .line 9
    .line 10
    if-nez v1, :cond_6

    .line 11
    .line 12
    invoke-static {p1}, Lorg/jsoup/nodes/Printer$Pretty;->g(Lorg/jsoup/nodes/Node;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-static {v1}, Lorg/jsoup/nodes/Printer$Pretty;->g(Lorg/jsoup/nodes/Node;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->c:Lorg/jsoup/nodes/Element;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_6

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget v3, Lorg/jsoup/parser/Tag;->InlineContainer:I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    move v2, v0

    .line 73
    :goto_1
    const/4 v3, 0x5

    .line 74
    if-ge v2, v3, :cond_6

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    instance-of v3, p1, Lorg/jsoup/nodes/TextNode;

    .line 79
    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    instance-of p1, v1, Lorg/jsoup/nodes/TextNode;

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Printer$Pretty;->h(Lorg/jsoup/nodes/Node;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    instance-of p1, v1, Lorg/jsoup/nodes/Element;

    .line 95
    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 99
    return p1

    .line 100
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    :goto_3
    return v0
.end method
