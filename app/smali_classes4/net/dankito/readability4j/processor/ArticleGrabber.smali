.class public Lnet/dankito/readability4j/processor/ArticleGrabber;
.super Lnet/dankito/readability4j/processor/ProcessorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/dankito/readability4j/processor/ArticleGrabber$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lnet/dankito/readability4j/processor/ArticleGrabber;",
        "Lnet/dankito/readability4j/processor/ProcessorBase;",
        "Companion",
        "Readability4J"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final i:Ljava/util/List;

.field public static final j:Ljava/util/List;

.field public static final k:Ljava/util/List;

.field public static final l:Ljava/util/List;

.field public static final m:Ljava/util/List;

.field public static final n:Ljava/util/List;

.field public static final o:Ljava/util/List;

.field public static final p:Lorg/slf4j/Logger;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Lnet/dankito/readability4j/util/RegExUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v7, "td"

    .line 2
    .line 3
    const-string v8, "pre"

    .line 4
    .line 5
    const-string v0, "section"

    .line 6
    .line 7
    const-string v1, "h2"

    .line 8
    .line 9
    const-string v2, "h3"

    .line 10
    .line 11
    const-string v3, "h4"

    .line 12
    .line 13
    const-string v4, "h5"

    .line 14
    .line 15
    const-string v5, "h6"

    .line 16
    .line 17
    const-string v6, "p"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->i:Ljava/util/List;

    .line 28
    .line 29
    const-string v10, "ul"

    .line 30
    .line 31
    const-string v11, "select"

    .line 32
    .line 33
    const-string v1, "a"

    .line 34
    .line 35
    const-string v2, "blockquote"

    .line 36
    .line 37
    const-string v3, "dl"

    .line 38
    .line 39
    const-string v4, "div"

    .line 40
    .line 41
    const-string v5, "img"

    .line 42
    .line 43
    const-string v6, "ol"

    .line 44
    .line 45
    const-string v7, "p"

    .line 46
    .line 47
    const-string v8, "pre"

    .line 48
    .line 49
    const-string v9, "table"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->j:Ljava/util/List;

    .line 60
    .line 61
    const-string v0, "section"

    .line 62
    .line 63
    const-string v1, "p"

    .line 64
    .line 65
    const-string v2, "div"

    .line 66
    .line 67
    const-string v3, "article"

    .line 68
    .line 69
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->k:Ljava/util/List;

    .line 78
    .line 79
    const-string v11, "valign"

    .line 80
    .line 81
    const-string v12, "vspace"

    .line 82
    .line 83
    const-string v1, "align"

    .line 84
    .line 85
    const-string v2, "background"

    .line 86
    .line 87
    const-string v3, "bgcolor"

    .line 88
    .line 89
    const-string v4, "border"

    .line 90
    .line 91
    const-string v5, "cellpadding"

    .line 92
    .line 93
    const-string v6, "cellspacing"

    .line 94
    .line 95
    const-string v7, "frame"

    .line 96
    .line 97
    const-string v8, "hspace"

    .line 98
    .line 99
    const-string v9, "rules"

    .line 100
    .line 101
    const-string v10, "style"

    .line 102
    .line 103
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->l:Ljava/util/List;

    .line 112
    .line 113
    const-string v0, "hr"

    .line 114
    .line 115
    const-string v1, "pre"

    .line 116
    .line 117
    const-string v2, "table"

    .line 118
    .line 119
    const-string v3, "th"

    .line 120
    .line 121
    const-string v4, "td"

    .line 122
    .line 123
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->m:Ljava/util/List;

    .line 132
    .line 133
    const-string v0, "embed"

    .line 134
    .line 135
    const-string v1, "iframe"

    .line 136
    .line 137
    const-string v2, "object"

    .line 138
    .line 139
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->n:Ljava/util/List;

    .line 148
    .line 149
    const-string v0, "tfoot"

    .line 150
    .line 151
    const-string v1, "thead"

    .line 152
    .line 153
    const-string v2, "col"

    .line 154
    .line 155
    const-string v4, "colgroup"

    .line 156
    .line 157
    filled-new-array {v2, v4, v0, v1, v3}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->o:Ljava/util/List;

    .line 166
    .line 167
    const-class v0, Lnet/dankito/readability4j/processor/ArticleGrabber;

    .line 168
    .line 169
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->e(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sput-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->p:Lorg/slf4j/Logger;

    .line 174
    .line 175
    return-void
.end method

.method public constructor <init>(Lnet/dankito/readability4j/model/ReadabilityOptions;Lnet/dankito/readability4j/util/RegExUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->h:Lnet/dankito/readability4j/util/RegExUtil;

    .line 5
    .line 6
    iget p2, p1, Lnet/dankito/readability4j/model/ReadabilityOptions;->a:I

    .line 7
    .line 8
    iput p2, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->d:I

    .line 9
    .line 10
    iget p1, p1, Lnet/dankito/readability4j/model/ReadabilityOptions;->b:I

    .line 11
    .line 12
    iput p1, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->e:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->f:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->g:Ljava/util/HashMap;

    .line 27
    .line 28
    return-void
.end method

.method public static h(Lorg/jsoup/nodes/Element;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "svg"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "readability-styled"

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const-string v0, "PRESENTATIONAL_ATTRIBUTES"

    .line 23
    .line 24
    sget-object v1, Lnet/dankito/readability4j/processor/ArticleGrabber;->l:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->m:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const-string v0, "width"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 64
    .line 65
    .line 66
    const-string v0, "height"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v0, "e.children()"

    .line 76
    .line 77
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x0

    .line 85
    :goto_1
    if-ge v1, v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 94
    .line 95
    const-string v3, "child"

    .line 96
    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->h(Lorg/jsoup/nodes/Element;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :goto_2
    return-void
.end method

.method public static k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public static l(ILorg/jsoup/nodes/Element;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    if-ne v1, p0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v2, "next.parent()"

    .line 30
    .line 31
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static n(Lnet/dankito/readability4j/processor/ArticleGrabber;Lorg/jsoup/nodes/Document;Lnet/dankito/readability4j/model/ArticleMetadata;)Lorg/jsoup/nodes/Element;
    .locals 40

    move-object/from16 v0, p0

    .line 1
    new-instance v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;

    .line 2
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->a:Z

    iput-boolean v3, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->b:Z

    iput-boolean v3, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->c:Z

    .line 3
    iget-object v4, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->h:Lnet/dankito/readability4j/util/RegExUtil;

    iget-object v5, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->h:Lnet/dankito/readability4j/util/RegExUtil;

    .line 4
    const-string v6, "**** grabArticle ****"

    sget-object v7, Lnet/dankito/readability4j/processor/ArticleGrabber;->p:Lorg/slf4j/Logger;

    invoke-interface {v7, v6}, Lorg/slf4j/Logger;->e(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v6

    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 6
    const-string v0, "No body found in document. Abort."

    invoke-interface {v7, v0}, Lorg/slf4j/Logger;->e(Ljava/lang/String;)V

    return-object v8

    .line 7
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v9

    .line 8
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, p1

    .line 9
    :goto_1
    const-string v12, "br"

    const-string v13, "h2"

    const-string v14, "h1"

    const-string v15, "body"

    const-string v8, " "

    const-string v3, "p"

    move-object/from16 v17, v9

    const-string v9, "div"

    move-object/from16 v18, v6

    if-eqz v11, :cond_13

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->b:Ljava/lang/String;

    const-string v8, "null cannot be cast to non-null type kotlin.CharSequence"

    move-object/from16 v21, v7

    const-string v7, "node.text()"

    if-eqz v21, :cond_1

    move-object/from16 v21, v5

    goto :goto_4

    :cond_1
    move-object/from16 v21, v5

    .line 12
    const-string v5, "rel"

    invoke-virtual {v11, v5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    const-string v1, "author"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object v1, v4, Lnet/dankito/readability4j/util/RegExUtil;->e:Ljava/util/regex/Pattern;

    .line 15
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    :cond_2
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;

    move-result-object v1

    const-string v5, "node.wholeText()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x64

    if-ge v1, v5, :cond_4

    .line 19
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->b:Ljava/lang/String;

    const/4 v1, 0x1

    .line 20
    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 21
    const-string v1, "byline"

    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    :goto_2
    move-object v11, v3

    :goto_3
    move-object/from16 v9, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 22
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_4
    :goto_4
    iget-boolean v1, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->a:Z

    if-eqz v1, :cond_5

    .line 24
    iget-object v1, v4, Lnet/dankito/readability4j/util/RegExUtil;->a:Ljava/util/regex/Pattern;

    .line 25
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    iget-object v1, v4, Lnet/dankito/readability4j/util/RegExUtil;->b:Ljava/util/regex/Pattern;

    .line 27
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_5

    .line 28
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "a"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 30
    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 31
    const-string v1, "Removing unlikely candidate"

    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_5
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "section"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "header"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 33
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "h3"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 34
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "h4"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "h5"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "h6"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 35
    :cond_6
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v11, v12}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const-string v6, "hr"

    invoke-virtual {v11, v6}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    add-int/2addr v6, v5

    if-ne v1, v6, :cond_8

    :cond_7
    const/4 v1, 0x1

    .line 38
    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 39
    const-string v1, "node without content"

    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 40
    :cond_8
    sget-object v1, Lnet/dankito/readability4j/processor/ArticleGrabber;->i:Ljava/util/List;

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_9
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 43
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 44
    :cond_a
    invoke-virtual {v11}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v1

    const-string v5, "element.childNodes()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Node;

    .line 46
    instance-of v6, v5, Lorg/jsoup/nodes/TextNode;

    if-eqz v6, :cond_b

    check-cast v5, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v5}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v6, v4, Lnet/dankito/readability4j/util/RegExUtil;->i:Ljava/util/regex/Pattern;

    .line 48
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 49
    invoke-virtual {v11, v5}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 50
    invoke-virtual {v11, v1}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 51
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    move-object v11, v1

    goto :goto_7

    .line 52
    :cond_d
    :goto_5
    invoke-static {v11}, Lnet/dankito/readability4j/processor/ArticleGrabber;->q(Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 53
    invoke-virtual {v11, v3}, Lorg/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 54
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v7, p1

    goto :goto_7

    .line 55
    :cond_f
    invoke-virtual {v11}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v1

    const-string v5, "node.childNodes()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Node;

    .line 57
    instance-of v6, v5, Lorg/jsoup/nodes/TextNode;

    if-eqz v6, :cond_10

    move-object v6, v5

    check-cast v6, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v6}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v7

    const-string v9, "childNode.text()"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_11

    invoke-static {v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    move-object/from16 v7, p1

    .line 58
    invoke-virtual {v7, v3}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 59
    invoke-virtual {v6}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 60
    const-string v6, "style"

    const-string v12, "display: inline;"

    invoke-virtual {v9, v6, v12}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 61
    const-string v6, "readability-styled"

    invoke-virtual {v9, v6}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 62
    invoke-virtual {v5, v9}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    goto :goto_6

    :cond_10
    move-object/from16 v7, p1

    goto :goto_6

    .line 63
    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    if-eqz v11, :cond_12

    const/4 v1, 0x0

    .line 64
    invoke-static {v11, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v1

    move-object v11, v1

    goto/16 :goto_3

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_13
    move-object/from16 v21, v5

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_8
    move-object/from16 v22, v12

    const-wide/16 v26, 0x0

    if-ge v6, v5, :cond_1e

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v28

    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 67
    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v28

    if-nez v28, :cond_14

    move-object/from16 v12, v22

    goto :goto_8

    :cond_14
    move-object/from16 v11, v21

    move/from16 v21, v5

    const/4 v5, 0x4

    .line 68
    invoke-static {v0, v12, v11, v5}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v23, v6

    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v29, v10

    const/16 v10, 0x19

    if-ge v6, v10, :cond_15

    :goto_9
    move/from16 v5, v21

    move-object/from16 v12, v22

    move/from16 v6, v23

    move-object/from16 v10, v29

    move-object/from16 v21, v11

    goto :goto_8

    :cond_15
    const/4 v6, 0x3

    .line 70
    invoke-static {v6, v12}, Lnet/dankito/readability4j/processor/ArticleGrabber;->l(ILorg/jsoup/nodes/Element;)Ljava/util/ArrayList;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_16

    goto :goto_9

    :cond_16
    move-object/from16 v30, v13

    const/4 v10, 0x1

    int-to-double v12, v10

    add-double v12, v12, v26

    move-wide/from16 v26, v12

    .line 72
    new-array v12, v10, [C

    const/16 v10, 0x2c

    const/16 v19, 0x0

    aput-char v10, v12, v19

    invoke-static {v5, v12}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-double v12, v10

    add-double v12, v26, v12

    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-wide/from16 v26, v12

    int-to-double v12, v5

    const-wide/high16 v31, 0x4059000000000000L    # 100.0

    div-double v12, v12, v31

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    move-object v10, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    add-double v4, v4, v26

    .line 74
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_17

    const/4 v13, 0x0

    .line 75
    :goto_a
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-wide/from16 v25, v4

    move-object/from16 v4, v24

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 76
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move-object/from16 v32, v10

    move-object/from16 v31, v11

    goto :goto_d

    .line 77
    :cond_18
    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v5

    if-nez v5, :cond_19

    .line 78
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0, v4, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->r(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    :cond_19
    if-nez v13, :cond_1a

    const/4 v5, 0x1

    goto :goto_b

    :cond_1a
    const/4 v5, 0x1

    if-ne v13, v5, :cond_1b

    const/4 v5, 0x2

    goto :goto_b

    :cond_1b
    mul-int/lit8 v5, v13, 0x3

    .line 80
    :goto_b
    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v4

    if-eqz v4, :cond_1c

    move-object/from16 v32, v10

    move-object/from16 v31, v11

    .line 81
    iget-wide v10, v4, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    move-object/from16 v24, v6

    int-to-double v5, v5

    div-double v5, v25, v5

    add-double/2addr v5, v10

    .line 82
    iput-wide v5, v4, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    goto :goto_c

    :cond_1c
    move-object/from16 v24, v6

    move-object/from16 v32, v10

    move-object/from16 v31, v11

    :goto_c
    if-eq v13, v12, :cond_1d

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v24

    move-wide/from16 v4, v25

    move-object/from16 v11, v31

    move-object/from16 v10, v32

    goto :goto_a

    :cond_1d
    :goto_d
    move/from16 v5, v21

    move-object/from16 v12, v22

    move/from16 v6, v23

    move-object/from16 v10, v29

    move-object/from16 v13, v30

    move-object/from16 v21, v31

    move-object/from16 v4, v32

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v32, v4

    move-object/from16 v30, v13

    move-object/from16 v31, v21

    .line 83
    iget v4, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->d:I

    .line 84
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v6, :cond_25

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 86
    invoke-virtual {v0, v11}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v12

    if-eqz v12, :cond_23

    move-object/from16 v21, v14

    .line 87
    iget-wide v13, v12, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    move-object/from16 v29, v1

    move-wide/from16 v33, v13

    const/4 v1, 0x1

    int-to-double v13, v1

    .line 88
    invoke-virtual {v0, v11}, Lnet/dankito/readability4j/processor/ArticleGrabber;->j(Lorg/jsoup/nodes/Element;)D

    move-result-wide v35

    sub-double v13, v13, v35

    mul-double v13, v13, v33

    .line 89
    iput-wide v13, v12, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 90
    const-string v1, "Candidate: {} with score {}"

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move/from16 v33, v6

    move-object/from16 v6, v20

    invoke-interface {v6, v11, v12, v1}, Lorg/slf4j/Logger;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v4, -0x1

    move/from16 v20, v10

    if-ltz v1, :cond_24

    const/4 v12, 0x0

    .line 91
    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v12, :cond_1f

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/Element;

    goto :goto_10

    :cond_1f
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_20

    .line 92
    invoke-virtual {v0, v10}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v34

    move-object/from16 v39, v34

    move-object/from16 v34, v10

    move-object/from16 v10, v39

    goto :goto_11

    :cond_20
    move-object/from16 v34, v10

    const/4 v10, 0x0

    :goto_11
    if-eqz v34, :cond_22

    move-wide/from16 v34, v13

    if-eqz v10, :cond_21

    .line 93
    iget-wide v13, v10, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    cmpl-double v10, v34, v13

    if-lez v10, :cond_21

    goto :goto_12

    :cond_21
    if-eq v12, v1, :cond_24

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v13, v34

    goto :goto_f

    .line 94
    :cond_22
    :goto_12
    invoke-virtual {v5, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_24

    .line 96
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_13

    :cond_23
    move-object/from16 v29, v1

    move/from16 v33, v6

    move-object/from16 v21, v14

    move-object/from16 v6, v20

    move/from16 v20, v10

    :cond_24
    :goto_13
    move/from16 v10, v20

    move-object/from16 v14, v21

    move-object/from16 v1, v29

    move-object/from16 v20, v6

    move/from16 v6, v33

    goto/16 :goto_e

    :cond_25
    move-object/from16 v21, v14

    move-object/from16 v6, v20

    .line 97
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    goto :goto_14

    :cond_26
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_39

    .line 98
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_21

    .line 99
    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v10

    if-eqz v10, :cond_2c

    .line 101
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v12, :cond_29

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v20, v5

    move-object v5, v14

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 103
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object/from16 v5, v20

    goto :goto_15

    .line 104
    :cond_29
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v5, :cond_2c

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 105
    invoke-virtual {v0, v13}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v14

    move-object/from16 v20, v4

    move/from16 v29, v5

    if-eqz v14, :cond_2a

    .line 106
    iget-wide v4, v14, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    move-wide/from16 v33, v4

    goto :goto_17

    :cond_2a
    move-wide/from16 v33, v26

    :goto_17
    iget-wide v4, v10, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    div-double v33, v33, v4

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v33, v4

    if-ltz v4, :cond_2b

    const/4 v5, 0x0

    .line 107
    invoke-static {v5, v13}, Lnet/dankito/readability4j/processor/ArticleGrabber;->l(ILorg/jsoup/nodes/Element;)Ljava/util/ArrayList;

    move-result-object v4

    .line 108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move-object/from16 v4, v20

    move/from16 v5, v29

    goto :goto_16

    :cond_2c
    move-object/from16 v20, v4

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_30

    .line 110
    invoke-virtual/range {v20 .. v20}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    :goto_18
    if-eqz v4, :cond_30

    .line 111
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v10

    if-eq v10, v15, :cond_30

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 112
    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_2e

    if-ge v11, v5, :cond_2e

    .line 113
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    add-int/lit8 v11, v11, 0x1

    :cond_2d
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x3

    goto :goto_19

    :cond_2e
    if-lt v11, v5, :cond_2f

    goto :goto_1a

    .line 114
    :cond_2f
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    goto :goto_18

    :cond_30
    move-object/from16 v4, v20

    .line 115
    :goto_1a
    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v1

    if-nez v1, :cond_31

    .line 116
    invoke-virtual {v0, v4, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->r(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 117
    :cond_31
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 119
    iget-wide v10, v5, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    :goto_1b
    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    goto :goto_1c

    :cond_32
    move-wide/from16 v10, v26

    goto :goto_1b

    :goto_1c
    div-double v12, v10, v24

    :goto_1d
    if-eqz v1, :cond_36

    .line 120
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 121
    invoke-virtual {v0, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v5

    if-nez v5, :cond_33

    .line 122
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_1d

    :cond_33
    move-object v14, v4

    .line 123
    iget-wide v4, v5, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    cmpg-double v20, v4, v12

    if-gez v20, :cond_34

    goto :goto_1e

    :cond_34
    cmpl-double v10, v4, v10

    if-lez v10, :cond_35

    move-object v4, v1

    goto :goto_1f

    .line 124
    :cond_35
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    move-wide v10, v4

    move-object v4, v14

    goto :goto_1d

    :cond_36
    move-object v14, v4

    :goto_1e
    move-object v4, v14

    .line 125
    :goto_1f
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    :goto_20
    move-object/from16 v39, v4

    move-object v4, v1

    move-object/from16 v1, v39

    if-eqz v4, :cond_37

    .line 126
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_37

    .line 127
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_20

    .line 128
    :cond_37
    invoke-virtual {v0, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v4

    if-nez v4, :cond_38

    .line 129
    invoke-virtual {v0, v1, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->r(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 130
    :cond_38
    new-instance v4, Lkotlin/Pair;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v10, v18

    goto :goto_23

    .line 131
    :cond_39
    :goto_21
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-direct {v1, v9}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v5, :cond_3a

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/jsoup/nodes/Node;

    .line 134
    const-string v12, "Moving child out: {}"

    invoke-interface {v6, v11, v12}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v11}, Lorg/jsoup/nodes/Node;->remove()V

    .line 136
    invoke-virtual {v1, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_22

    :cond_3a
    move-object/from16 v10, v18

    .line 137
    invoke-virtual {v10, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 138
    invoke-virtual {v0, v1, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->r(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 139
    new-instance v4, Lkotlin/Pair;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    :goto_23
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 141
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 142
    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 143
    invoke-virtual {v0, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v11

    .line 144
    const-string v12, "articleContent"

    if-nez v11, :cond_3b

    .line 145
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v18, v4

    move-object v15, v8

    move-object/from16 v13, v31

    goto/16 :goto_2c

    .line 146
    :cond_3b
    iget-wide v13, v11, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    const-wide v24, 0x3fc999999999999aL    # 0.2

    mul-double v13, v13, v24

    move-object v15, v8

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 147
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 148
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v13

    if-eqz v13, :cond_3c

    .line 149
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v13

    if-eqz v13, :cond_3c

    goto :goto_24

    :cond_3c
    new-instance v13, Lorg/jsoup/select/Elements;

    invoke-direct {v13}, Lorg/jsoup/select/Elements;-><init>()V

    .line 150
    :goto_24
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v18, v4

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v13, :cond_46

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v4, v4, 0x1

    move/from16 v28, v4

    move-object/from16 v4, v20

    check-cast v4, Lorg/jsoup/nodes/Element;

    move-wide/from16 v33, v7

    .line 152
    const-string v7, "sibling"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;

    move-result-object v7

    move/from16 v20, v13

    move-object v8, v14

    if-eqz v7, :cond_3d

    .line 153
    iget-wide v13, v7, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 154
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_26

    :cond_3d
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_26
    const-string v14, "Looking at sibling node: {} with score {}"

    invoke-interface {v6, v4, v13, v14}, Lorg/slf4j/Logger;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_3e

    .line 155
    iget-wide v13, v7, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 156
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3e

    goto :goto_27

    :cond_3e
    const-string v13, "Unknown"

    :goto_27
    const-string v14, "Sibling has score {}"

    invoke-interface {v6, v13, v14}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    move-object/from16 v29, v8

    :goto_28
    move-object/from16 v13, v31

    goto :goto_2a

    .line 158
    :cond_3f
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-eq v13, v14, :cond_40

    .line 159
    iget-wide v13, v11, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    mul-double v13, v13, v24

    add-double v13, v13, v26

    goto :goto_29

    :cond_40
    move-wide/from16 v13, v26

    :goto_29
    move-object/from16 v29, v8

    if-eqz v7, :cond_41

    .line 160
    iget-wide v7, v7, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    add-double/2addr v7, v13

    cmpl-double v7, v7, v33

    if-ltz v7, :cond_41

    goto :goto_28

    .line 161
    :cond_41
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 162
    invoke-virtual {v0, v4}, Lnet/dankito/readability4j/processor/ArticleGrabber;->j(Lorg/jsoup/nodes/Element;)D

    move-result-wide v7

    move-wide/from16 v35, v7

    move-object/from16 v13, v31

    const/4 v14, 0x4

    .line 163
    invoke-static {v0, v4, v13, v14}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v14, 0x50

    if-le v8, v14, :cond_42

    const-wide/high16 v37, 0x3fd0000000000000L    # 0.25

    cmpg-double v31, v35, v37

    if-gez v31, :cond_42

    goto :goto_2a

    :cond_42
    if-ge v8, v14, :cond_45

    if-lez v8, :cond_45

    cmpg-double v8, v35, v26

    if-nez v8, :cond_45

    .line 165
    new-instance v8, Lkotlin/text/Regex;

    const-string v14, "\\.( |$)"

    invoke-direct {v8, v14}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 166
    :goto_2a
    const-string v7, "Appending node: {}"

    invoke-interface {v6, v4, v7}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v7, Lnet/dankito/readability4j/processor/ArticleGrabber;->k:Ljava/util/List;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 168
    const-string v7, "Altering sibling: {} to div."

    invoke-interface {v6, v4, v7}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v4, v9}, Lorg/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 170
    :cond_43
    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_2b

    :cond_44
    move-object/from16 v13, v31

    :cond_45
    :goto_2b
    move-object/from16 v31, v13

    move/from16 v13, v20

    move/from16 v4, v28

    move-object/from16 v14, v29

    move-wide/from16 v7, v33

    goto/16 :goto_25

    :cond_46
    move-object/from16 v13, v31

    .line 171
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :goto_2c
    const-string v4, "Article content pre-prep: {}"

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->h(Lorg/jsoup/nodes/Element;)V

    .line 174
    const-string v4, "table"

    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    const-string v8, "root.getElementsByTag(\"table\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_2d
    if-ge v11, v8, :cond_53

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 176
    const-string v14, "role"

    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v7

    .line 177
    const-string v7, "presentation"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 178
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    :goto_2e
    move-object/from16 v7, v20

    goto :goto_2d

    :cond_47
    const/4 v7, 0x0

    .line 179
    const-string v14, "datatable"

    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 180
    const-string v7, "0"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 181
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_2e

    .line 182
    :cond_48
    const-string v7, "summary"

    invoke-virtual {v12, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 183
    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 184
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_2e

    :cond_49
    const/4 v7, 0x1

    .line 185
    const-string v14, "caption"

    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v14

    .line 186
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    move-result v16

    if-lez v16, :cond_4a

    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/Element;

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v7

    if-lez v7, :cond_4a

    .line 187
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_2e

    .line 188
    :cond_4a
    const-string v7, "DATA_TABLE_DESCENDANTS"

    sget-object v14, Lnet/dankito/readability4j/processor/ArticleGrabber;->o:Ljava/util/List;

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 190
    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    move-result v14

    if-lez v14, :cond_4b

    .line 191
    const-string v7, "Data table because found data-y descendant"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->e(Ljava/lang/String;)V

    .line 192
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    goto/16 :goto_2e

    .line 193
    :cond_4c
    invoke-virtual {v12, v4}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-lez v7, :cond_4d

    .line 194
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    goto/16 :goto_2e

    .line 195
    :cond_4d
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const-string v7, "tr"

    invoke-virtual {v12, v7}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    .line 197
    const-string v14, "trs"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v25, v8

    move/from16 v26, v11

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v24, 0x0

    :goto_2f
    if-ge v11, v14, :cond_4f

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v28, v7

    move-object/from16 v7, v27

    check-cast v7, Lorg/jsoup/nodes/Element;

    move/from16 v27, v11

    .line 199
    :try_start_0
    const-string v11, "rowspan"

    invoke-virtual {v7, v11}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v31, v13

    :try_start_1
    const-string v13, "tr.attr(\"rowspan\")"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_30

    :catch_0
    move-object/from16 v31, v13

    :catch_1
    const/4 v11, 0x1

    :goto_30
    add-int v24, v24, v11

    .line 200
    const-string v11, "td"

    invoke-virtual {v7, v11}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    const-string v11, "tr.getElementsByTag(\"td\")"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v29, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_31
    if-ge v14, v11, :cond_4e

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v34, v7

    move-object/from16 v7, v33

    check-cast v7, Lorg/jsoup/nodes/Element;

    move/from16 v33, v11

    .line 202
    :try_start_2
    const-string v11, "colspan"

    invoke-virtual {v7, v11}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "cell.attr(\"colspan\")"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_32

    :catch_2
    const/4 v7, 0x1

    :goto_32
    add-int/2addr v13, v7

    move/from16 v11, v33

    move-object/from16 v7, v34

    goto :goto_31

    .line 203
    :cond_4e
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v11, v27

    move-object/from16 v7, v28

    move/from16 v14, v29

    move-object/from16 v13, v31

    goto :goto_2f

    :cond_4f
    move-object/from16 v31, v13

    .line 204
    new-instance v7, Lkotlin/Pair;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/16 v11, 0xa

    if-ge v8, v11, :cond_52

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v14, 0x4

    if-le v8, v14, :cond_50

    :goto_33
    const/4 v7, 0x1

    goto :goto_36

    .line 206
    :cond_50
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    mul-int/2addr v7, v8

    if-le v7, v11, :cond_51

    const/4 v7, 0x1

    goto :goto_34

    :cond_51
    const/4 v7, 0x0

    :goto_34
    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    :goto_35
    move-object/from16 v7, v20

    move/from16 v8, v25

    move/from16 v11, v26

    move-object/from16 v13, v31

    goto/16 :goto_2d

    :cond_52
    const/4 v14, 0x4

    goto :goto_33

    .line 207
    :goto_36
    invoke-virtual {v0, v12, v7}, Lnet/dankito/readability4j/processor/ArticleGrabber;->s(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_35

    :cond_53
    move-object/from16 v31, v13

    .line 208
    const-string v7, "form"

    invoke-virtual {v0, v5, v7, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 209
    const-string v7, "fieldset"

    invoke-virtual {v0, v5, v7, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 210
    const-string v7, "object"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 211
    const-string v7, "embed"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 212
    const-string v7, "footer"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 213
    const-string v7, "link"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 214
    new-instance v7, Lkotlin/text/Regex;

    const-string v8, "share"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v8

    const-string v11, "articleContent.children()"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_37
    if-ge v12, v11, :cond_56

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 217
    const-string v14, "topCandidate"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v8

    const/4 v14, 0x1

    .line 218
    invoke-static {v13, v14}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v8

    const/4 v14, 0x0

    .line 219
    invoke-static {v13, v14}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v13

    :goto_38
    if-eqz v13, :cond_55

    .line 220
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_55

    .line 221
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 222
    invoke-virtual {v7}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x1

    .line 223
    invoke-static {v13, v14}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v16

    .line 224
    invoke-static {v13, v8}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    move-object/from16 v13, v16

    goto :goto_39

    :cond_54
    const/4 v8, 0x0

    const/4 v14, 0x1

    .line 225
    invoke-static {v13, v8}, Lnet/dankito/readability4j/processor/ArticleGrabber;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v13

    :goto_39
    move-object/from16 v8, v23

    goto :goto_38

    :cond_55
    const/4 v14, 0x1

    move-object/from16 v8, v20

    goto :goto_37

    :cond_56
    move-object/from16 v8, v30

    const/4 v14, 0x1

    .line 226
    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    .line 227
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-ne v11, v14, :cond_58

    move-object/from16 v11, p2

    .line 228
    iget-object v12, v11, Lnet/dankito/readability4j/model/ArticleMetadata;->a:Ljava/lang/String;

    if-eqz v12, :cond_59

    .line 229
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_59

    const/4 v14, 0x0

    .line 230
    invoke-virtual {v7, v14}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 231
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v14, v23

    if-gez v14, :cond_59

    const/4 v14, 0x0

    int-to-float v15, v14

    cmpl-float v13, v13, v15

    .line 232
    const-string v15, "h2[0].text()"

    if-lez v13, :cond_57

    .line 233
    invoke-virtual {v7, v14}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v12}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    goto :goto_3a

    .line 234
    :cond_57
    invoke-virtual {v7, v14}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_3a
    if-eqz v7, :cond_59

    .line 235
    invoke-virtual {v0, v8, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    goto :goto_3b

    :cond_58
    move-object/from16 v11, p2

    .line 236
    :cond_59
    :goto_3b
    const-string v7, "iframe"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 237
    const-string v7, "input"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 238
    const-string v7, "textarea"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 239
    const-string v7, "select"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 240
    const-string v7, "button"

    invoke-virtual {v0, v7, v5}, Lnet/dankito/readability4j/processor/ArticleGrabber;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    move-object/from16 v7, v21

    .line 241
    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "Arrays.asList(\"h1\", \"h2\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 243
    const-string v12, "it"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanHeaders$$inlined$forEach$lambda$1;

    invoke-direct {v12, v0, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanHeaders$$inlined$forEach$lambda$1;-><init>(Lnet/dankito/readability4j/processor/ArticleGrabber;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    invoke-static {v5, v8, v12}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3c

    .line 244
    :cond_5a
    invoke-virtual {v0, v5, v4, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 245
    const-string v4, "ul"

    invoke-virtual {v0, v5, v4, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 246
    invoke-virtual {v0, v5, v9, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V

    .line 247
    new-instance v4, Lnet/dankito/readability4j/processor/ArticleGrabber$prepArticle$3;

    invoke-direct {v4, v0}, Lnet/dankito/readability4j/processor/ArticleGrabber$prepArticle$3;-><init>(Lnet/dankito/readability4j/processor/ArticleGrabber;)V

    invoke-static {v5, v3, v4}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v22

    .line 248
    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    const-string v7, "articleContent.select(\"br\")"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3d
    if-ge v8, v7, :cond_5c

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v8, v8, 0x1

    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 250
    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v13

    move-object/from16 v14, v32

    invoke-static {v13, v14}, Lnet/dankito/readability4j/processor/ProcessorBase;->c(Lorg/jsoup/nodes/Node;Lnet/dankito/readability4j/util/RegExUtil;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    if-eqz v13, :cond_5b

    .line 251
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 252
    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_5b
    move-object/from16 v32, v14

    goto :goto_3d

    :cond_5c
    move-object/from16 v14, v32

    .line 253
    const-string v3, "Article content post-prep: {}"

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    const-string v3, "page"

    const-string v4, "readability-page-1"

    const-string v7, "id"

    if-eqz v18, :cond_5d

    .line 255
    invoke-virtual {v1, v7, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 256
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-object/from16 v8, p1

    goto :goto_3f

    :cond_5d
    move-object/from16 v8, p1

    .line 257
    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 258
    invoke-virtual {v9, v7, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 259
    invoke-virtual {v9, v3}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_3e
    if-ge v7, v4, :cond_5e

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    check-cast v12, Lorg/jsoup/nodes/Node;

    .line 262
    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->remove()V

    .line 263
    invoke-virtual {v9, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_3e

    .line 264
    :cond_5e
    invoke-virtual {v5, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 265
    :goto_3f
    const-string v3, "Article content after paging: {}"

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    .line 267
    invoke-static {v5, v14, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->a(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 268
    iget v7, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->e:I

    if-ge v4, v7, :cond_65

    move-object/from16 v7, v17

    .line 269
    invoke-virtual {v10, v7}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 270
    iget-boolean v9, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->a:Z

    if-eqz v9, :cond_5f

    const/4 v9, 0x0

    .line 271
    iput-boolean v9, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->a:Z

    .line 272
    new-instance v12, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v12, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5f
    const/4 v9, 0x0

    .line 273
    iget-boolean v12, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->b:Z

    if-eqz v12, :cond_60

    .line 274
    iput-boolean v9, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->b:Z

    .line 275
    new-instance v12, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v12, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 276
    :cond_60
    iget-boolean v12, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->c:Z

    if-eqz v12, :cond_61

    .line 277
    iput-boolean v9, v2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->c:Z

    .line 278
    new-instance v9, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v9, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_40
    const/4 v9, 0x0

    const/16 v19, 0x0

    goto :goto_43

    .line 279
    :cond_61
    new-instance v9, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v9, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_62

    new-instance v4, Lnet/dankito/readability4j/processor/ArticleGrabber$grabArticle$$inlined$sortBy$1;

    .line 281
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 283
    :cond_62
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gtz v4, :cond_63

    goto :goto_42

    .line 284
    :cond_63
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/jsoup/nodes/Element;

    :goto_41
    const/16 v19, 0x1

    goto :goto_43

    :cond_64
    :goto_42
    const/4 v8, 0x0

    goto :goto_44

    :cond_65
    move-object/from16 v7, v17

    const/4 v9, 0x0

    goto :goto_41

    :goto_43
    if-eqz v19, :cond_68

    .line 285
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jsoup/nodes/Element;

    aput-object v2, v3, v9

    const/16 v16, 0x1

    aput-object v1, v3, v16

    invoke-static {v3}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 286
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v3, "topCandidate.parent()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {v9, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->l(ILorg/jsoup/nodes/Element;)Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-virtual {v8}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v1, "html"

    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 293
    const-string v3, "dir"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "articleDir"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 295
    iput-object v2, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->c:Ljava/lang/String;

    :cond_67
    move-object v8, v5

    :goto_44
    return-object v8

    :cond_68
    const/16 v16, 0x1

    move-object v9, v7

    move-object v4, v14

    move/from16 v3, v16

    move-object/from16 v5, v31

    const/4 v8, 0x0

    move-object v7, v6

    move-object v6, v10

    goto/16 :goto_0
.end method

.method public static o(Lorg/jsoup/nodes/Element;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "(this as java.lang.String).toLowerCase()"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    if-lez p2, :cond_0

    .line 19
    .line 20
    if-le v1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "parent.parent()"

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object v4, p3

    .line 49
    check-cast v4, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    :cond_1
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    return v0
.end method

.method public static synthetic p(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 1
    const-string v0, "figure"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v0, v1, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->o(Lorg/jsoup/nodes/Element;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static q(Lorg/jsoup/nodes/Element;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "element.children()"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :cond_0
    if-ge v2, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    sget-object v4, Lnet/dankito/readability4j/processor/ArticleGrabber;->j:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    const-string v4, "node"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lnet/dankito/readability4j/processor/ArticleGrabber;->q(Lorg/jsoup/nodes/Element;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    :cond_1
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_2
    return v1
.end method


# virtual methods
.method public final f(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 1
    sget-object v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lnet/dankito/readability4j/processor/ArticleGrabber$clean$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lnet/dankito/readability4j/processor/ArticleGrabber$clean$1;-><init>(Lnet/dankito/readability4j/processor/ArticleGrabber;Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ul"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    const-string v0, "ol"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    new-instance v1, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;

    .line 27
    .line 28
    invoke-direct {v1, p0, p3, v0}, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;-><init>(Lnet/dankito/readability4j/processor/ArticleGrabber;Lnet/dankito/readability4j/model/ArticleGrabberOptions;Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final i(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->h:Lnet/dankito/readability4j/util/RegExUtil;

    .line 2
    .line 3
    iget-object v1, v0, Lnet/dankito/readability4j/util/RegExUtil;->c:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    iget-object v0, v0, Lnet/dankito/readability4j/util/RegExUtil;->d:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    iget-boolean p2, p2, Lnet/dankito/readability4j/model/ArticleGrabberOptions;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v3, "e.className()"

    .line 18
    .line 19
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const/16 v2, -0x19

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x19

    .line 65
    .line 66
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v3, "e.id()"

    .line 71
    .line 72
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    add-int/lit8 v2, v2, -0x19

    .line 99
    .line 100
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x19

    .line 118
    .line 119
    :cond_4
    return v2
.end method

.method public final j(Lorg/jsoup/nodes/Element;)D
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->h:Lnet/dankito/readability4j/util/RegExUtil;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {p0, p1, v0, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-string v3, "a"

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v3, "element.getElementsByTag(\"a\")"

    .line 24
    .line 25
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    :goto_0
    if-ge v5, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 43
    .line 44
    const-string v7, "linkNode"

    .line 45
    .line 46
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v6, v0, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    add-int/2addr v4, v6

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    int-to-double v0, v4

    .line 60
    int-to-double v2, v2

    .line 61
    div-double/2addr v0, v2

    .line 62
    return-wide v0
.end method

.method public final m(Lorg/jsoup/nodes/Element;)Lnet/dankito/readability4j/model/ReadabilityObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lnet/dankito/readability4j/model/ReadabilityObject;

    .line 8
    .line 9
    return-object p1
.end method

.method public final r(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)V
    .locals 5

    .line 1
    new-instance v0, Lnet/dankito/readability4j/model/ReadabilityObject;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    iput-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 9
    .line 10
    iget-object v1, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->f:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v4, 0x5

    .line 29
    sparse-switch v2, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :pswitch_0
    const-string v2, "h6"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_1
    const-string v2, "h5"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    const-string v2, "h4"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_3
    const-string v2, "h3"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_4
    const-string v2, "h2"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_5
    const-string v2, "h1"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_0
    const-string v2, "blockquote"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :sswitch_1
    const-string v2, "form"

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :sswitch_2
    const-string v2, "pre"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :sswitch_3
    const-string v2, "div"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    iget-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 129
    .line 130
    int-to-double v3, v4

    .line 131
    add-double/2addr v1, v3

    .line 132
    iput-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :sswitch_4
    const-string v2, "ul"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :sswitch_5
    const-string v2, "th"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_1

    .line 151
    .line 152
    :goto_0
    iget-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 153
    .line 154
    int-to-double v3, v4

    .line 155
    sub-double/2addr v1, v3

    .line 156
    iput-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :sswitch_6
    const-string v2, "td"

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_1

    .line 166
    .line 167
    :goto_1
    iget-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 168
    .line 169
    int-to-double v3, v3

    .line 170
    add-double/2addr v1, v3

    .line 171
    iput-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :sswitch_7
    const-string v2, "ol"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :sswitch_8
    const-string v2, "li"

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :sswitch_9
    const-string v2, "dt"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :sswitch_a
    const-string v2, "dl"

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :sswitch_b
    const-string v2, "dd"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_1

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :sswitch_c
    const-string v2, "address"

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_1

    .line 226
    .line 227
    :goto_2
    iget-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 228
    .line 229
    int-to-double v3, v3

    .line 230
    sub-double/2addr v1, v3

    .line 231
    iput-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 232
    .line 233
    :cond_1
    :goto_3
    iget-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->i(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    int-to-double p1, p1

    .line 240
    add-double/2addr v1, p1

    .line 241
    iput-wide v1, v0, Lnet/dankito/readability4j/model/ReadabilityObject;->a:D

    .line 242
    .line 243
    return-void

    .line 244
    nop

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_c
        0xc80 -> :sswitch_b
        0xc88 -> :sswitch_a
        0xc90 -> :sswitch_9
        0xd7d -> :sswitch_8
        0xddd -> :sswitch_7
        0xe70 -> :sswitch_6
        0xe74 -> :sswitch_5
        0xe97 -> :sswitch_4
        0x18491 -> :sswitch_3
        0x1b2a3 -> :sswitch_2
        0x300cc4 -> :sswitch_1
        0x4dad4a0f -> :sswitch_0
    .end sparse-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :pswitch_data_0
    .packed-switch 0xcc9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lorg/jsoup/nodes/Element;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/dankito/readability4j/processor/ArticleGrabber;->g:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
