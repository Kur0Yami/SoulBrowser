.class public Lnet/dankito/readability4j/extended/processor/PostprocessorExtended;
.super Lnet/dankito/readability4j/processor/Postprocessor;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lnet/dankito/readability4j/extended/processor/PostprocessorExtended;",
        "Lnet/dankito/readability4j/processor/Postprocessor;",
        "Readability4J"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public final b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "base"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "href"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    move-object v6, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    if-eqz v6, :cond_1

    .line 28
    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-object v4, p3

    .line 33
    move-object v5, p4

    .line 34
    invoke-super/range {v1 .. v6}, Lnet/dankito/readability4j/processor/Postprocessor;->b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-super/range {p0 .. p5}, Lnet/dankito/readability4j/processor/Postprocessor;->b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 15

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "img"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "articleContent.select(\"img\")"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :cond_0
    :goto_0
    if-ge v5, v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    add-int/lit8 v5, v5, 0x1

    .line 27
    .line 28
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 29
    .line 30
    const-string v7, "imgElement"

    .line 31
    .line 32
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v13, "data-li-src"

    .line 36
    .line 37
    const-string v14, "data-pagespeed-lazy-src"

    .line 38
    .line 39
    const-string v8, "data-src"

    .line 40
    .line 41
    const-string v9, "data-original"

    .line 42
    .line 43
    const-string v10, "data-actualsrc"

    .line 44
    .line 45
    const-string v11, "data-lazy-src"

    .line 46
    .line 47
    const-string v12, "data-delayed-url"

    .line 48
    .line 49
    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_0

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const-string v9, "value"

    .line 78
    .line 79
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-nez v9, :cond_1

    .line 87
    .line 88
    const-string v7, "src"

    .line 89
    .line 90
    invoke-virtual {v6, v7, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-string v2, "amp-img"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "element.getElementsByTag(\"amp-img\")"

    .line 101
    .line 102
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    :cond_3
    :goto_1
    if-ge v4, v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 118
    .line 119
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_3

    .line 124
    .line 125
    new-instance v6, Lorg/jsoup/nodes/Attributes;

    .line 126
    .line 127
    invoke-direct {v6}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v7, "decoding"

    .line 131
    .line 132
    const-string v8, "async"

    .line 133
    .line 134
    invoke-virtual {v6, v7, v8}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 135
    .line 136
    .line 137
    const-string v7, "alt"

    .line 138
    .line 139
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v6, v7, v8}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 144
    .line 145
    .line 146
    const-string v7, "srcset"

    .line 147
    .line 148
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-string v9, "amp_img.attr(\"srcset\")"

    .line 153
    .line 154
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    if-eqz v8, :cond_4

    .line 158
    .line 159
    invoke-static {v8}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v6, v7, v8}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 168
    .line 169
    .line 170
    new-instance v7, Lorg/jsoup/nodes/Element;

    .line 171
    .line 172
    invoke-static {v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    const-string v9, ""

    .line 177
    .line 178
    invoke-direct {v7, v8, v9, v6}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    .line 186
    .line 187
    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 188
    .line 189
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_5
    invoke-super/range {p0 .. p4}, Lnet/dankito/readability4j/processor/Postprocessor;->c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method
