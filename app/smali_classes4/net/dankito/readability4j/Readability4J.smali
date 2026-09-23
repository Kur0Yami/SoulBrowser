.class public Lnet/dankito/readability4j/Readability4J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/dankito/readability4j/Readability4J$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lnet/dankito/readability4j/Readability4J;",
        "",
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
.field public static final h:Lorg/slf4j/Logger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/jsoup/nodes/Document;

.field public final c:Lnet/dankito/readability4j/model/ReadabilityOptions;

.field public final d:Lnet/dankito/readability4j/processor/Preprocessor;

.field public final e:Lnet/dankito/readability4j/processor/MetadataParser;

.field public final f:Lnet/dankito/readability4j/processor/ArticleGrabber;

.field public final g:Lnet/dankito/readability4j/processor/Postprocessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnet/dankito/readability4j/Readability4J;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->e(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/dankito/readability4j/Readability4J;->h:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/Document;)V
    .locals 5

    .line 1
    new-instance v0, Lnet/dankito/readability4j/model/ReadabilityOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/dankito/readability4j/model/ReadabilityOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lnet/dankito/readability4j/util/RegExUtil;

    .line 7
    .line 8
    invoke-direct {v1}, Lnet/dankito/readability4j/util/RegExUtil;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lnet/dankito/readability4j/processor/Preprocessor;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Lnet/dankito/readability4j/processor/Preprocessor;-><init>(Lnet/dankito/readability4j/util/RegExUtil;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lnet/dankito/readability4j/processor/MetadataParser;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Lnet/dankito/readability4j/processor/MetadataParser;-><init>(Lnet/dankito/readability4j/util/RegExUtil;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lnet/dankito/readability4j/processor/ArticleGrabber;

    .line 22
    .line 23
    invoke-direct {v4, v0, v1}, Lnet/dankito/readability4j/processor/ArticleGrabber;-><init>(Lnet/dankito/readability4j/model/ReadabilityOptions;Lnet/dankito/readability4j/util/RegExUtil;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lnet/dankito/readability4j/processor/Postprocessor;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lnet/dankito/readability4j/Readability4J;->a:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, p0, Lnet/dankito/readability4j/Readability4J;->b:Lorg/jsoup/nodes/Document;

    .line 37
    .line 38
    iput-object v0, p0, Lnet/dankito/readability4j/Readability4J;->c:Lnet/dankito/readability4j/model/ReadabilityOptions;

    .line 39
    .line 40
    iput-object v2, p0, Lnet/dankito/readability4j/Readability4J;->d:Lnet/dankito/readability4j/processor/Preprocessor;

    .line 41
    .line 42
    iput-object v3, p0, Lnet/dankito/readability4j/Readability4J;->e:Lnet/dankito/readability4j/processor/MetadataParser;

    .line 43
    .line 44
    iput-object v4, p0, Lnet/dankito/readability4j/Readability4J;->f:Lnet/dankito/readability4j/processor/ArticleGrabber;

    .line 45
    .line 46
    iput-object v1, p0, Lnet/dankito/readability4j/Readability4J;->g:Lnet/dankito/readability4j/processor/Postprocessor;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()Lnet/dankito/readability4j/Article;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/dankito/readability4j/Readability4J;->c:Lnet/dankito/readability4j/model/ReadabilityOptions;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lnet/dankito/readability4j/Article;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lnet/dankito/readability4j/Readability4J;->d:Lnet/dankito/readability4j/processor/Preprocessor;

    .line 14
    .line 15
    iget-object v4, v0, Lnet/dankito/readability4j/Readability4J;->b:Lorg/jsoup/nodes/Document;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Lnet/dankito/readability4j/processor/Preprocessor;->f(Lorg/jsoup/nodes/Document;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lnet/dankito/readability4j/Readability4J;->e:Lnet/dankito/readability4j/processor/MetadataParser;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v5, v3, Lnet/dankito/readability4j/processor/MetadataParser;->b:Lnet/dankito/readability4j/util/RegExUtil;

    .line 26
    .line 27
    new-instance v6, Lnet/dankito/readability4j/model/ArticleMetadata;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    iput-object v7, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->a:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v7, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->b:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v7, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->c:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v8, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v9, "^\\s*((twitter)\\s*:\\s*)?(description|title)\\s*$"

    .line 45
    .line 46
    const/4 v10, 0x2

    .line 47
    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v11, "^\\s*og\\s*:\\s*(description|title)\\s*$"

    .line 52
    .line 53
    invoke-static {v11, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v11, "meta"

    .line 58
    .line 59
    invoke-virtual {v4, v11}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const-string v12, "document.select(\"meta\")"

    .line 64
    .line 65
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const/4 v14, 0x0

    .line 73
    :goto_0
    const-string v15, ""

    .line 74
    .line 75
    if-ge v14, v12, :cond_6

    .line 76
    .line 77
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    add-int/lit8 v14, v14, 0x1

    .line 82
    .line 83
    move-object/from16 v7, v16

    .line 84
    .line 85
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 86
    .line 87
    const-string v13, "name"

    .line 88
    .line 89
    invoke-virtual {v7, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    move-object/from16 v17, v11

    .line 94
    .line 95
    const-string v11, "property"

    .line 96
    .line 97
    invoke-virtual {v7, v11}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    move/from16 v18, v12

    .line 102
    .line 103
    const-string v12, "author"

    .line 104
    .line 105
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v19

    .line 109
    move/from16 v20, v14

    .line 110
    .line 111
    const-string v14, "content"

    .line 112
    .line 113
    if-nez v19, :cond_5

    .line 114
    .line 115
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_0
    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    if-eqz v12, :cond_2

    .line 142
    .line 143
    move-object v13, v11

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    const/4 v13, 0x0

    .line 146
    :goto_1
    if-eqz v13, :cond_4

    .line 147
    .line 148
    invoke-virtual {v7, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    if-eqz v7, :cond_4

    .line 153
    .line 154
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-eqz v11, :cond_3

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    const-string v12, "(this as java.lang.String).toLowerCase()"

    .line 166
    .line 167
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance v12, Lkotlin/text/Regex;

    .line 171
    .line 172
    const-string v13, "\\s"

    .line 173
    .line 174
    invoke-direct {v12, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12, v11, v15}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-static {v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    const-string v12, "  "

    .line 190
    .line 191
    const-string v13, " "

    .line 192
    .line 193
    invoke-static {v7, v12, v13}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v8, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_2
    move-object/from16 v11, v17

    .line 201
    .line 202
    move/from16 v12, v18

    .line 203
    .line 204
    move/from16 v14, v20

    .line 205
    .line 206
    const/4 v7, 0x0

    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_5
    :goto_3
    invoke-virtual {v7, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    iput-object v7, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->b:Ljava/lang/String;

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_6
    const-string v7, "description"

    .line 217
    .line 218
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Ljava/lang/String;

    .line 223
    .line 224
    if-eqz v7, :cond_7

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_7
    const-string v7, "og:description"

    .line 228
    .line 229
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    check-cast v7, Ljava/lang/String;

    .line 234
    .line 235
    :goto_4
    if-eqz v7, :cond_8

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_8
    const-string v7, "twitter:description"

    .line 239
    .line 240
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    check-cast v7, Ljava/lang/String;

    .line 245
    .line 246
    :goto_5
    iput-object v7, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->c:Ljava/lang/String;

    .line 247
    .line 248
    const/4 v7, 0x4

    .line 249
    :try_start_0
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    const-string v10, "doc.title()"

    .line 254
    .line 255
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    .line 257
    .line 258
    :try_start_1
    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    if-eqz v10, :cond_9

    .line 263
    .line 264
    const-string v10, "#title"

    .line 265
    .line 266
    invoke-virtual {v4, v10}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    invoke-virtual {v10}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    if-eqz v10, :cond_9

    .line 275
    .line 276
    invoke-static {v3, v10, v5, v7}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :catch_0
    :cond_9
    :goto_6
    move-object v10, v9

    .line 281
    goto :goto_7

    .line 282
    :catch_1
    move-object v9, v15

    .line 283
    goto :goto_6

    .line 284
    :goto_7
    new-instance v11, Lkotlin/text/Regex;

    .line 285
    .line 286
    const-string v12, " [\\|\\-\\/>\u00bb] "

    .line 287
    .line 288
    invoke-direct {v11, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v11, v9}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    const/4 v13, 0x3

    .line 296
    if-eqz v11, :cond_b

    .line 297
    .line 298
    new-instance v3, Lkotlin/text/Regex;

    .line 299
    .line 300
    const-string v5, " [\\/>\u00bb] "

    .line 301
    .line 302
    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v9}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    sget-object v5, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 310
    .line 311
    new-instance v9, Lkotlin/text/Regex;

    .line 312
    .line 313
    const-string v11, "(.*)[\\|\\-\\/>\u00bb] .*"

    .line 314
    .line 315
    invoke-direct {v9, v11, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 316
    .line 317
    .line 318
    const-string v11, "$1"

    .line 319
    .line 320
    invoke-virtual {v9, v10, v11}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    invoke-static {v9}, Lnet/dankito/readability4j/processor/MetadataParser;->f(Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v14

    .line 328
    if-ge v14, v13, :cond_a

    .line 329
    .line 330
    new-instance v9, Lkotlin/text/Regex;

    .line 331
    .line 332
    const-string v13, "[^\\|\\-\\/>\u00bb]*[\\|\\-\\/>\u00bb](.*)"

    .line 333
    .line 334
    invoke-direct {v9, v13, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v10, v11}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    :cond_a
    move v13, v3

    .line 342
    move v12, v7

    .line 343
    goto/16 :goto_a

    .line 344
    .line 345
    :cond_b
    const-string v11, ": "

    .line 346
    .line 347
    invoke-static {v9, v11}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-eqz v11, :cond_13

    .line 352
    .line 353
    const-string v3, "h1, h2"

    .line 354
    .line 355
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    const-string v5, "doc.select(\"h1, h2\")"

    .line 360
    .line 361
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    new-instance v5, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    const/4 v14, 0x0

    .line 374
    :goto_8
    if-ge v14, v11, :cond_d

    .line 375
    .line 376
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    add-int/lit8 v14, v14, 0x1

    .line 381
    .line 382
    move-object/from16 v17, v7

    .line 383
    .line 384
    check-cast v17, Lorg/jsoup/nodes/Element;

    .line 385
    .line 386
    const/16 v18, 0x1

    .line 387
    .line 388
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v12

    .line 392
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v12

    .line 396
    if-eqz v12, :cond_c

    .line 397
    .line 398
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    :cond_c
    const/4 v7, 0x4

    .line 402
    goto :goto_8

    .line 403
    :cond_d
    const/16 v18, 0x1

    .line 404
    .line 405
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-lez v3, :cond_f

    .line 410
    .line 411
    :cond_e
    const/4 v11, 0x0

    .line 412
    const/4 v12, 0x4

    .line 413
    goto/16 :goto_9

    .line 414
    .line 415
    :cond_f
    const/16 v3, 0x3a

    .line 416
    .line 417
    const/4 v5, 0x6

    .line 418
    const/4 v7, 0x0

    .line 419
    invoke-static {v10, v3, v7, v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;CII)I

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    add-int/lit8 v9, v9, 0x1

    .line 424
    .line 425
    if-eqz v10, :cond_12

    .line 426
    .line 427
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    const-string v11, "(this as java.lang.String).substring(startIndex)"

    .line 432
    .line 433
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v9}, Lnet/dankito/readability4j/processor/MetadataParser;->f(Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    if-ge v12, v13, :cond_10

    .line 441
    .line 442
    invoke-static {v10, v3, v7, v5}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    add-int/lit8 v3, v3, 0x1

    .line 447
    .line 448
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    move v13, v7

    .line 456
    const/4 v12, 0x4

    .line 457
    goto :goto_a

    .line 458
    :cond_10
    invoke-static {v10, v3, v7, v5}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    invoke-virtual {v10, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 467
    .line 468
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v3}, Lnet/dankito/readability4j/processor/MetadataParser;->f(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    const/4 v5, 0x5

    .line 476
    if-le v3, v5, :cond_11

    .line 477
    .line 478
    move-object v9, v10

    .line 479
    :cond_11
    const/4 v12, 0x4

    .line 480
    const/4 v13, 0x0

    .line 481
    goto :goto_a

    .line 482
    :cond_12
    new-instance v1, Lkotlin/TypeCastException;

    .line 483
    .line 484
    const-string v2, "null cannot be cast to non-null type java.lang.String"

    .line 485
    .line 486
    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v1

    .line 490
    :cond_13
    const/16 v18, 0x1

    .line 491
    .line 492
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    const/16 v11, 0x96

    .line 497
    .line 498
    if-gt v7, v11, :cond_14

    .line 499
    .line 500
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    const/16 v11, 0xf

    .line 505
    .line 506
    if-ge v7, v11, :cond_e

    .line 507
    .line 508
    :cond_14
    const-string v7, "h1"

    .line 509
    .line 510
    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 515
    .line 516
    .line 517
    move-result v11

    .line 518
    move/from16 v12, v18

    .line 519
    .line 520
    if-ne v11, v12, :cond_e

    .line 521
    .line 522
    const/4 v11, 0x0

    .line 523
    invoke-virtual {v7, v11}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    const-string v9, "hOnes[0]"

    .line 528
    .line 529
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 533
    .line 534
    const/4 v12, 0x4

    .line 535
    invoke-static {v3, v7, v5, v12}, Lnet/dankito/readability4j/processor/ProcessorBase;->b(Lnet/dankito/readability4j/processor/ProcessorBase;Lorg/jsoup/nodes/Element;Lnet/dankito/readability4j/util/RegExUtil;I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v9

    .line 539
    :goto_9
    move v13, v11

    .line 540
    :goto_a
    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 541
    .line 542
    if-eqz v9, :cond_22

    .line 543
    .line 544
    invoke-static {v9}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    invoke-static {v5}, Lnet/dankito/readability4j/processor/MetadataParser;->f(Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    move-result v7

    .line 556
    if-gt v7, v12, :cond_15

    .line 557
    .line 558
    if-eqz v13, :cond_16

    .line 559
    .line 560
    new-instance v9, Lkotlin/text/Regex;

    .line 561
    .line 562
    const-string v11, "[\\|\\-\\/>\u00bb]+"

    .line 563
    .line 564
    invoke-direct {v9, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v9, v10, v15}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v9

    .line 571
    invoke-static {v9}, Lnet/dankito/readability4j/processor/MetadataParser;->f(Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move-result v9

    .line 575
    const/16 v18, 0x1

    .line 576
    .line 577
    add-int/lit8 v9, v9, -0x1

    .line 578
    .line 579
    if-eq v7, v9, :cond_15

    .line 580
    .line 581
    goto :goto_b

    .line 582
    :cond_15
    move-object v10, v5

    .line 583
    :cond_16
    :goto_b
    iput-object v10, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->a:Ljava/lang/String;

    .line 584
    .line 585
    if-eqz v10, :cond_17

    .line 586
    .line 587
    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    if-eqz v5, :cond_1a

    .line 592
    .line 593
    :cond_17
    const-string v5, "og:title"

    .line 594
    .line 595
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    check-cast v5, Ljava/lang/String;

    .line 600
    .line 601
    if-eqz v5, :cond_18

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_18
    const-string v5, "twitter:title"

    .line 605
    .line 606
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    check-cast v5, Ljava/lang/String;

    .line 611
    .line 612
    :goto_c
    if-eqz v5, :cond_19

    .line 613
    .line 614
    move-object v15, v5

    .line 615
    :cond_19
    iput-object v15, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->a:Ljava/lang/String;

    .line 616
    .line 617
    :cond_1a
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    if-eqz v5, :cond_1b

    .line 622
    .line 623
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    :cond_1b
    iget-object v5, v0, Lnet/dankito/readability4j/Readability4J;->f:Lnet/dankito/readability4j/processor/ArticleGrabber;

    .line 627
    .line 628
    invoke-static {v5, v4, v6}, Lnet/dankito/readability4j/processor/ArticleGrabber;->n(Lnet/dankito/readability4j/processor/ArticleGrabber;Lorg/jsoup/nodes/Document;Lnet/dankito/readability4j/model/ArticleMetadata;)Lorg/jsoup/nodes/Element;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    sget-object v8, Lnet/dankito/readability4j/Readability4J;->h:Lorg/slf4j/Logger;

    .line 633
    .line 634
    const-string v9, "Grabbed: {}"

    .line 635
    .line 636
    invoke-interface {v8, v7, v9}, Lorg/slf4j/Logger;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    if-eqz v7, :cond_1c

    .line 640
    .line 641
    iget-object v8, v0, Lnet/dankito/readability4j/Readability4J;->a:Ljava/lang/String;

    .line 642
    .line 643
    iget-object v1, v1, Lnet/dankito/readability4j/model/ReadabilityOptions;->c:Ljava/util/ArrayList;

    .line 644
    .line 645
    iget-object v9, v0, Lnet/dankito/readability4j/Readability4J;->g:Lnet/dankito/readability4j/processor/Postprocessor;

    .line 646
    .line 647
    invoke-virtual {v9, v4, v7, v8, v1}, Lnet/dankito/readability4j/processor/Postprocessor;->c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V

    .line 648
    .line 649
    .line 650
    iput-object v7, v2, Lnet/dankito/readability4j/Article;->b:Lorg/jsoup/nodes/Element;

    .line 651
    .line 652
    :cond_1c
    iget-object v1, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->c:Ljava/lang/String;

    .line 653
    .line 654
    if-eqz v1, :cond_1d

    .line 655
    .line 656
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-eqz v1, :cond_1f

    .line 661
    .line 662
    :cond_1d
    if-eqz v7, :cond_1f

    .line 663
    .line 664
    const-string v1, "p"

    .line 665
    .line 666
    invoke-virtual {v7, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    if-eqz v1, :cond_1f

    .line 671
    .line 672
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    if-eqz v1, :cond_1f

    .line 677
    .line 678
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    const-string v4, "firstParagraph.text()"

    .line 683
    .line 684
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    if-eqz v1, :cond_1e

    .line 688
    .line 689
    invoke-static {v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    iput-object v1, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->c:Ljava/lang/String;

    .line 698
    .line 699
    goto :goto_d

    .line 700
    :cond_1e
    new-instance v1, Lkotlin/TypeCastException;

    .line 701
    .line 702
    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    throw v1

    .line 706
    :cond_1f
    :goto_d
    iget-object v1, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->a:Ljava/lang/String;

    .line 707
    .line 708
    iput-object v1, v2, Lnet/dankito/readability4j/Article;->a:Ljava/lang/String;

    .line 709
    .line 710
    iget-object v1, v6, Lnet/dankito/readability4j/model/ArticleMetadata;->b:Ljava/lang/String;

    .line 711
    .line 712
    if-eqz v1, :cond_20

    .line 713
    .line 714
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    if-eqz v1, :cond_21

    .line 719
    .line 720
    :cond_20
    iget-object v1, v5, Lnet/dankito/readability4j/processor/ArticleGrabber;->b:Ljava/lang/String;

    .line 721
    .line 722
    :cond_21
    iget-object v1, v5, Lnet/dankito/readability4j/processor/ArticleGrabber;->c:Ljava/lang/String;

    .line 723
    .line 724
    return-object v2

    .line 725
    :cond_22
    new-instance v1, Lkotlin/TypeCastException;

    .line 726
    .line 727
    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    throw v1
.end method
