.class final Lorg/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CleaningVisitor"
.end annotation


# instance fields
.field public c:I

.field public final f:Lorg/jsoup/nodes/Element;

.field public g:Lorg/jsoup/nodes/Element;

.field public final synthetic h:Lorg/jsoup/safety/Cleaner;


# direct methods
.method public constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->h:Lorg/jsoup/safety/Cleaner;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->f:Lorg/jsoup/nodes/Element;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 7

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->h:Lorg/jsoup/safety/Cleaner;

    .line 4
    .line 5
    if-eqz p2, :cond_5

    .line 6
    .line 7
    move-object p2, p1

    .line 8
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    iget-object v1, v0, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Safelist;

    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object p1, v0, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Safelist;

    .line 23
    .line 24
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->shallowClone()Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->clearAttributes()Lorg/jsoup/nodes/Element;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lorg/jsoup/nodes/Attribute;

    .line 59
    .line 60
    invoke-virtual {p1, v1, p2, v5}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1, v1}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "a"

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    const-string v1, "rel"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v5, "nofollow"

    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    const-string v3, "href"

    .line 100
    .line 101
    invoke-virtual {p2, v3}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_2

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_2

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 143
    .line 144
    .line 145
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 146
    .line 147
    add-int/2addr p1, v4

    .line 148
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 149
    .line 150
    iput-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->f:Lorg/jsoup/nodes/Element;

    .line 154
    .line 155
    if-eq p1, p2, :cond_4

    .line 156
    .line 157
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 158
    .line 159
    add-int/lit8 p1, p1, 0x1

    .line 160
    .line 161
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 162
    .line 163
    :cond_4
    return-void

    .line 164
    :cond_5
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 165
    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 169
    .line 170
    new-instance p2, Lorg/jsoup/nodes/TextNode;

    .line 171
    .line 172
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_6
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    .line 186
    .line 187
    if-eqz p2, :cond_7

    .line 188
    .line 189
    iget-object p2, v0, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Safelist;

    .line 190
    .line 191
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p2, v0}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_7

    .line 204
    .line 205
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 206
    .line 207
    new-instance p2, Lorg/jsoup/nodes/DataNode;

    .line 208
    .line 209
    invoke-virtual {p1}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_7
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 223
    .line 224
    add-int/lit8 p1, p1, 0x1

    .line 225
    .line 226
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->c:I

    .line 227
    .line 228
    return-void
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
    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->h:Lorg/jsoup/safety/Cleaner;

    .line 6
    .line 7
    iget-object p2, p2, Lorg/jsoup/safety/Cleaner;->a:Lorg/jsoup/safety/Safelist;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->g:Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/select/d;->b(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
