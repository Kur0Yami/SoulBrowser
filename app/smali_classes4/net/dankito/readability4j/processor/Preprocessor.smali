.class public Lnet/dankito/readability4j/processor/Preprocessor;
.super Lnet/dankito/readability4j/processor/ProcessorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/dankito/readability4j/processor/Preprocessor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lnet/dankito/readability4j/processor/Preprocessor;",
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
.field public static final c:Lorg/slf4j/Logger;


# instance fields
.field public final b:Lnet/dankito/readability4j/util/RegExUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnet/dankito/readability4j/processor/Preprocessor;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->e(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/dankito/readability4j/processor/Preprocessor;->c:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lnet/dankito/readability4j/util/RegExUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/dankito/readability4j/processor/Preprocessor;->b:Lnet/dankito/readability4j/util/RegExUtil;

    .line 5
    .line 6
    return-void
.end method

.method public static g(Lorg/jsoup/nodes/Node;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "#comment"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-string v3, "child"

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "removeComments"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lnet/dankito/readability4j/processor/Preprocessor;->g(Lorg/jsoup/nodes/Node;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/nodes/Document;)V
    .locals 14

    .line 1
    sget-object v0, Lnet/dankito/readability4j/processor/Preprocessor;->c:Lorg/slf4j/Logger;

    .line 2
    .line 3
    const-string v1, "Starting to prepare document"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "script"

    .line 9
    .line 10
    sget-object v1, Lnet/dankito/readability4j/processor/Preprocessor$removeScripts$1;->c:Lnet/dankito/readability4j/processor/Preprocessor$removeScripts$1;

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "noscript"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "document.getElementsByTag(\"noscript\")"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    if-ge v4, v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 41
    .line 42
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v6, "img"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-lez v7, :cond_2

    .line 56
    .line 57
    new-instance v7, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    const-string v8, "images"

    .line 63
    .line 64
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    move v9, v3

    .line 72
    :cond_0
    :goto_1
    if-ge v9, v8, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    add-int/lit8 v9, v9, 0x1

    .line 79
    .line 80
    check-cast v10, Lorg/jsoup/nodes/Element;

    .line 81
    .line 82
    const-string v11, "src"

    .line 83
    .line 84
    invoke-virtual {v10, v11}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    const-string v12, "source"

    .line 89
    .line 90
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-nez v12, :cond_0

    .line 98
    .line 99
    new-instance v12, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v13, "img[src="

    .line 102
    .line 103
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 v11, 0x5d

    .line 110
    .line 111
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {p1, v11}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-lez v11, :cond_0

    .line 127
    .line 128
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-lez v6, :cond_2

    .line 137
    .line 138
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->unwrap()Lorg/jsoup/nodes/Node;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    const-string v6, "removeScripts(\'noscript\')"

    .line 143
    .line 144
    invoke-static {v5, v6}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    const-string v0, "style"

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-static {p1, v0, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 152
    .line 153
    .line 154
    const-string v0, "form"

    .line 155
    .line 156
    invoke-static {p1, v0, v1}, Lnet/dankito/readability4j/processor/ProcessorBase;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lnet/dankito/readability4j/processor/Preprocessor;->g(Lorg/jsoup/nodes/Node;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "br"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v2, "document.body().select(\"br\")"

    .line 173
    .line 174
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    move v4, v3

    .line 182
    :cond_4
    :goto_2
    if-ge v4, v2, :cond_7

    .line 183
    .line 184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    add-int/lit8 v4, v4, 0x1

    .line 189
    .line 190
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 191
    .line 192
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    iget-object v7, p0, Lnet/dankito/readability4j/processor/Preprocessor;->b:Lnet/dankito/readability4j/util/RegExUtil;

    .line 197
    .line 198
    invoke-static {v6, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->c(Lorg/jsoup/nodes/Node;Lnet/dankito/readability4j/util/RegExUtil;)Lorg/jsoup/nodes/Element;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    move v8, v3

    .line 203
    :goto_3
    if-eqz v6, :cond_5

    .line 204
    .line 205
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-eqz v9, :cond_5

    .line 214
    .line 215
    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    const-string v9, "replaceBrs"

    .line 220
    .line 221
    invoke-static {v6, v9}, Lnet/dankito/readability4j/processor/ProcessorBase;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v8, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->c(Lorg/jsoup/nodes/Node;Lnet/dankito/readability4j/util/RegExUtil;)Lorg/jsoup/nodes/Element;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    const/4 v8, 0x1

    .line 229
    goto :goto_3

    .line 230
    :cond_5
    if-eqz v8, :cond_4

    .line 231
    .line 232
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    const-string v8, "p"

    .line 237
    .line 238
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    :goto_4
    if-eqz v5, :cond_4

    .line 250
    .line 251
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-eqz v8, :cond_6

    .line 260
    .line 261
    invoke-static {v5, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->c(Lorg/jsoup/nodes/Node;Lnet/dankito/readability4j/util/RegExUtil;)Lorg/jsoup/nodes/Element;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    if-eqz v8, :cond_6

    .line 266
    .line 267
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-eqz v8, :cond_6

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_6
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v6, v5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 283
    .line 284
    .line 285
    move-object v5, v8

    .line 286
    goto :goto_4

    .line 287
    :cond_7
    const-string v0, "font"

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    const-string v0, "parentElement.getElementsByTag(tagName)"

    .line 294
    .line 295
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    :goto_5
    if-ge v3, v0, :cond_8

    .line 303
    .line 304
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    add-int/lit8 v3, v3, 0x1

    .line 309
    .line 310
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 311
    .line 312
    const-string v2, "span"

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_8
    return-void
.end method
