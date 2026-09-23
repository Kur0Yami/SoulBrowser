.class final Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/jsoup/nodes/Element;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "node",
        "Lorg/jsoup/nodes/Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic c:Lnet/dankito/readability4j/processor/ArticleGrabber;

.field public final synthetic f:Lnet/dankito/readability4j/model/ArticleGrabberOptions;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lnet/dankito/readability4j/processor/ArticleGrabber;Lnet/dankito/readability4j/model/ArticleGrabberOptions;Z)V
    .locals 0

    iput-object p1, p0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->c:Lnet/dankito/readability4j/processor/ArticleGrabber;

    iput-object p2, p0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->f:Lnet/dankito/readability4j/model/ArticleGrabberOptions;

    iput-boolean p3, p0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->g:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    new-instance v2, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;-><init>(Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->c:Lnet/dankito/readability4j/processor/ArticleGrabber;

    .line 13
    .line 14
    iget-object v4, v3, Lnet/dankito/readability4j/processor/ArticleGrabber;->h:Lnet/dankito/readability4j/util/RegExUtil;

    .line 15
    .line 16
    const-string v5, "table"

    .line 17
    .line 18
    const/4 v6, -0x1

    .line 19
    invoke-static {v1, v5, v6, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->o(Lorg/jsoup/nodes/Element;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v5, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iget-object v2, v0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->f:Lnet/dankito/readability4j/model/ArticleGrabberOptions;

    .line 29
    .line 30
    invoke-virtual {v3, v1, v2}, Lnet/dankito/readability4j/processor/ArticleGrabber;->i(Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/model/ArticleGrabberOptions;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sget-object v6, Lnet/dankito/readability4j/processor/ArticleGrabber;->p:Lorg/slf4j/Logger;

    .line 35
    .line 36
    const-string v7, "Cleaning Conditionally {}"

    .line 37
    .line 38
    invoke-interface {v6, v1, v7}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-gez v2, :cond_1

    .line 43
    .line 44
    move v5, v6

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    const/4 v7, 0x4

    .line 48
    invoke-static {v3, v1, v4, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    new-array v9, v6, [C

    .line 53
    .line 54
    const/16 v10, 0x2c

    .line 55
    .line 56
    aput-char v10, v9, v5

    .line 57
    .line 58
    invoke-static {v8, v9}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;[C)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    sub-int/2addr v8, v6

    .line 67
    const/16 v9, 0xa

    .line 68
    .line 69
    if-ge v8, v9, :cond_c

    .line 70
    .line 71
    const-string v8, "p"

    .line 72
    .line 73
    invoke-virtual {v1, v8}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    const-string v9, "img"

    .line 82
    .line 83
    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    const-string v10, "li"

    .line 92
    .line 93
    invoke-virtual {v1, v10}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    add-int/lit8 v10, v10, -0x64

    .line 102
    .line 103
    const-string v11, "input"

    .line 104
    .line 105
    invoke-virtual {v1, v11}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    const-string v12, "embed"

    .line 114
    .line 115
    invoke-virtual {v1, v12}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    const-string v13, "node.getElementsByTag(\"embed\")"

    .line 120
    .line 121
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    move v14, v5

    .line 129
    move v15, v14

    .line 130
    :goto_0
    if-ge v15, v13, :cond_3

    .line 131
    .line 132
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    add-int/lit8 v15, v15, 0x1

    .line 137
    .line 138
    move-object/from16 v5, v16

    .line 139
    .line 140
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 141
    .line 142
    const-string v6, "src"

    .line 143
    .line 144
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-string v6, "it.attr(\"src\")"

    .line 149
    .line 150
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v6, v4, Lnet/dankito/readability4j/util/RegExUtil;->g:Ljava/util/regex/Pattern;

    .line 154
    .line 155
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_2

    .line 164
    .line 165
    add-int/lit8 v14, v14, 0x1

    .line 166
    .line 167
    :cond_2
    const/4 v5, 0x0

    .line 168
    const/4 v6, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v3, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->j(Lorg/jsoup/nodes/Element;)D

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    invoke-static {v3, v1, v4, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    const/4 v4, 0x1

    .line 183
    if-le v9, v4, :cond_5

    .line 184
    .line 185
    int-to-float v4, v8

    .line 186
    int-to-float v7, v9

    .line 187
    div-float/2addr v4, v7

    .line 188
    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    .line 189
    .line 190
    float-to-double v12, v4

    .line 191
    cmpg-double v4, v12, v17

    .line 192
    .line 193
    if-gez v4, :cond_6

    .line 194
    .line 195
    invoke-static {v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->p(Lorg/jsoup/nodes/Element;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_4

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    const/4 v4, 0x1

    .line 203
    goto :goto_2

    .line 204
    :cond_5
    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    .line 205
    .line 206
    :cond_6
    :goto_1
    iget-boolean v4, v0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->g:Z

    .line 207
    .line 208
    if-nez v4, :cond_7

    .line 209
    .line 210
    if-gt v10, v8, :cond_4

    .line 211
    .line 212
    :cond_7
    int-to-double v10, v11

    .line 213
    int-to-double v7, v8

    .line 214
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 215
    .line 216
    div-double/2addr v7, v12

    .line 217
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 218
    .line 219
    .line 220
    move-result-wide v7

    .line 221
    cmpl-double v7, v10, v7

    .line 222
    .line 223
    if-gtz v7, :cond_4

    .line 224
    .line 225
    const/16 v7, 0x19

    .line 226
    .line 227
    if-nez v4, :cond_8

    .line 228
    .line 229
    if-ge v3, v7, :cond_8

    .line 230
    .line 231
    if-nez v9, :cond_8

    .line 232
    .line 233
    invoke-static {v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;->p(Lorg/jsoup/nodes/Element;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_4

    .line 238
    .line 239
    :cond_8
    if-nez v4, :cond_9

    .line 240
    .line 241
    if-ge v2, v7, :cond_9

    .line 242
    .line 243
    const-wide v8, 0x3fc999999999999aL    # 0.2

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    cmpl-double v1, v5, v8

    .line 249
    .line 250
    if-gtz v1, :cond_4

    .line 251
    .line 252
    :cond_9
    if-lt v2, v7, :cond_a

    .line 253
    .line 254
    cmpl-double v1, v5, v17

    .line 255
    .line 256
    if-gtz v1, :cond_4

    .line 257
    .line 258
    :cond_a
    const/4 v4, 0x1

    .line 259
    if-ne v14, v4, :cond_b

    .line 260
    .line 261
    const/16 v1, 0x4b

    .line 262
    .line 263
    if-lt v3, v1, :cond_d

    .line 264
    .line 265
    :cond_b
    if-le v14, v4, :cond_c

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_c
    const/4 v5, 0x0

    .line 269
    goto :goto_3

    .line 270
    :cond_d
    :goto_2
    move v5, v4

    .line 271
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    return-object v1
.end method
