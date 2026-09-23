.class public Lorg/jsoup/helper/W3CDom$W3CBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/W3CDom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "W3CBuilder"
.end annotation


# instance fields
.field public final c:Lorg/w3c/dom/Document;

.field public f:Z

.field public g:Lorg/w3c/dom/Node;

.field public h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

.field public final i:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->f:Z

    .line 6
    .line 7
    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->c:Lorg/w3c/dom/Document;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->g:Lorg/w3c/dom/Node;

    .line 14
    .line 15
    const-string v0, "jsoupContextSource"

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->i:Lorg/jsoup/nodes/Element;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V
    .locals 2

    .line 1
    const-string v0, "jsoupSource"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v0, p2, v1}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->g:Lorg/w3c/dom/Node;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Lorg/jsoup/nodes/Element;Lorg/w3c/dom/Element;Lorg/jsoup/nodes/Attribute;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p4}, Lorg/jsoup/nodes/Attribute;->getValidKey(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    if-eqz p4, :cond_5

    .line 10
    .line 11
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->namespace()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->f:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-interface {p2, v0, p4, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-interface {p2, p4, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-boolean p3, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->f:Z

    .line 41
    .line 42
    if-eqz p3, :cond_5

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-nez p3, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const/16 p3, 0x3a

    .line 52
    .line 53
    invoke-virtual {p4, p3}, Ljava/lang/String;->indexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    const/4 v0, -0x1

    .line 58
    if-eq p3, v0, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p4, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    const-string v0, "xmlns"

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "xmlns:"

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    instance-of v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    move-object v0, p1

    .line 95
    :goto_1
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {p1, p4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p2, v2, p4, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p3, "undefined"

    .line 129
    .line 130
    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_2
    return-void
.end method

.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 7

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->c:Lorg/w3c/dom/Document;

    .line 4
    .line 5
    if-eqz p2, :cond_5

    .line 6
    .line 7
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    iget-boolean p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->f:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, v1

    .line 24
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->xmlSafeTagName(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    :try_start_0
    const-string v3, ":"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const-string p2, ""

    .line 43
    .line 44
    :cond_1
    invoke-interface {v0, p2, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lorg/jsoup/nodes/Attribute;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .line 68
    :try_start_1
    iget-object v5, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->b(Lorg/jsoup/nodes/Element;Lorg/w3c/dom/Element;Lorg/jsoup/nodes/Attribute;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)V
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    :try_start_2
    iget-object v5, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->h:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 75
    .line 76
    sget-object v6, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 77
    .line 78
    if-eq v5, v6, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2, v4, v6}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->b(Lorg/jsoup/nodes/Element;Lorg/w3c/dom/Element;Lorg/jsoup/nodes/Attribute;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->a(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->i:Lorg/jsoup/nodes/Element;

    .line 88
    .line 89
    if-ne p1, v3, :cond_4

    .line 90
    .line 91
    const-string v3, "jsoupContextNode"

    .line 92
    .line 93
    invoke-interface {v0, v3, p2, v1}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_4
    iput-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->g:Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "<"

    .line 102
    .line 103
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ">"

    .line 110
    .line 111
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->a(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 127
    .line 128
    if-eqz p2, :cond_6

    .line 129
    .line 130
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 131
    .line 132
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->a(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    instance-of p2, p1, Lorg/jsoup/nodes/Comment;

    .line 145
    .line 146
    if-eqz p2, :cond_7

    .line 147
    .line 148
    check-cast p1, Lorg/jsoup/nodes/Comment;

    .line 149
    .line 150
    invoke-virtual {p1}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->a(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_7
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    .line 163
    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 167
    .line 168
    invoke-virtual {p1}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->a(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 177
    .line 178
    .line 179
    :cond_8
    :goto_2
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->g:Lorg/w3c/dom/Node;

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of p1, p1, Lorg/w3c/dom/Element;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->g:Lorg/w3c/dom/Node;

    .line 16
    .line 17
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->g:Lorg/w3c/dom/Node;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/select/d;->b(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
