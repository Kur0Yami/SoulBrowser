.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder;",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1810:1\n1#2:1811\n1563#3:1812\n1634#3,3:1813\n1563#3:1816\n1634#3,3:1817\n*S KotlinDebug\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n*L\n1265#1:1812\n1265#1:1813,3\n1266#1:1816\n1266#1:1817,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/List;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

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
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v1, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x26

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {p0, v2, v1, v3}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_0
    const/16 v5, 0x3d

    .line 28
    .line 29
    invoke-static {p0, v5, v1, v3}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v5, "substring(...)"

    .line 34
    .line 35
    if-eq v3, v4, :cond_2

    .line 36
    .line 37
    if-le v3, v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Lokhttp3/HttpUrl;
    .locals 15

    .line 1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v1, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x7

    .line 9
    invoke-static {v2, v2, v3, v0}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v2, v3, v4}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    move v5, v3

    .line 20
    move-object v3, v4

    .line 21
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_6

    .line 24
    .line 25
    iget v6, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 26
    .line 27
    const/4 v7, -0x1

    .line 28
    if-eq v6, v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v6}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    .line 43
    .line 44
    const/16 v9, 0xa

    .line 45
    .line 46
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_1

    .line 62
    .line 63
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    check-cast v10, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2, v2, v5, v10}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    new-instance v11, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    move v12, v2

    .line 96
    :goto_2
    if-ge v12, v9, :cond_4

    .line 97
    .line 98
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    add-int/lit8 v12, v12, 0x1

    .line 103
    .line 104
    check-cast v13, Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v13, :cond_2

    .line 107
    .line 108
    const/4 v14, 0x3

    .line 109
    invoke-static {v2, v2, v14, v13}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    move-object v13, v10

    .line 115
    :goto_3
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    move-object v11, v10

    .line 120
    :cond_4
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v8, :cond_5

    .line 123
    .line 124
    invoke-static {v2, v2, v5, v8}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    :cond_5
    move-object v8, v10

    .line 129
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    move-object v2, v0

    .line 134
    new-instance v0, Lokhttp3/HttpUrl;

    .line 135
    .line 136
    move v5, v6

    .line 137
    move-object v6, v7

    .line 138
    move-object v7, v11

    .line 139
    invoke-direct/range {v0 .. v9}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string v1, "host == null"

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v1, "scheme == null"

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0
.end method

.method public final b(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "input"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v4, v3, v2}, Lokhttp3/internal/_UtilCommonKt;->f(IILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-static {v3, v5, v2}, Lokhttp3/internal/_UtilCommonKt;->g(IILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sub-int v6, v5, v3

    .line 32
    .line 33
    const/16 v7, 0x30

    .line 34
    .line 35
    const/16 v8, 0x5b

    .line 36
    .line 37
    const/16 v9, 0x3a

    .line 38
    .line 39
    const/4 v10, -0x1

    .line 40
    const/4 v11, 0x2

    .line 41
    if-ge v6, v11, :cond_1

    .line 42
    .line 43
    :cond_0
    :goto_0
    move v6, v10

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/16 v12, 0x61

    .line 50
    .line 51
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    const/16 v14, 0x41

    .line 56
    .line 57
    if-ltz v13, :cond_2

    .line 58
    .line 59
    const/16 v13, 0x7a

    .line 60
    .line 61
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-lez v13, :cond_3

    .line 66
    .line 67
    :cond_2
    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-ltz v13, :cond_0

    .line 72
    .line 73
    const/16 v13, 0x5a

    .line 74
    .line 75
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-lez v6, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    add-int/lit8 v6, v3, 0x1

    .line 83
    .line 84
    :goto_1
    if-ge v6, v5, :cond_0

    .line 85
    .line 86
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-gt v12, v13, :cond_4

    .line 91
    .line 92
    const/16 v15, 0x7b

    .line 93
    .line 94
    if-ge v13, v15, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-gt v14, v13, :cond_5

    .line 98
    .line 99
    if-ge v13, v8, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    if-gt v7, v13, :cond_6

    .line 103
    .line 104
    if-ge v13, v9, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/16 v15, 0x2b

    .line 108
    .line 109
    if-eq v13, v15, :cond_8

    .line 110
    .line 111
    const/16 v15, 0x2d

    .line 112
    .line 113
    if-eq v13, v15, :cond_8

    .line 114
    .line 115
    const/16 v15, 0x2e

    .line 116
    .line 117
    if-ne v13, v15, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    if-ne v13, v9, :cond_0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_8
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_3
    const-string v12, "substring(...)"

    .line 127
    .line 128
    if-eq v6, v10, :cond_b

    .line 129
    .line 130
    const-string v13, "https:"

    .line 131
    .line 132
    invoke-static {v3, v2, v13}, Lkotlin/text/StringsKt;->G(ILjava/lang/String;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_9

    .line 137
    .line 138
    const-string v6, "https"

    .line 139
    .line 140
    iput-object v6, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 141
    .line 142
    add-int/lit8 v3, v3, 0x6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    const-string v13, "http:"

    .line 146
    .line 147
    invoke-static {v3, v2, v13}, Lkotlin/text/StringsKt;->G(ILjava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    if-eqz v13, :cond_a

    .line 152
    .line 153
    const-string v6, "http"

    .line 154
    .line 155
    iput-object v6, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x5

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v5, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 165
    .line 166
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const/16 v2, 0x27

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v1

    .line 192
    :cond_b
    if-eqz v1, :cond_2e

    .line 193
    .line 194
    iget-object v6, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v6, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 197
    .line 198
    :goto_4
    move v6, v3

    .line 199
    move v13, v4

    .line 200
    :goto_5
    const/16 v14, 0x5c

    .line 201
    .line 202
    const/16 v15, 0x2f

    .line 203
    .line 204
    if-ge v6, v5, :cond_d

    .line 205
    .line 206
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-eq v7, v15, :cond_c

    .line 211
    .line 212
    if-eq v7, v14, :cond_c

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 216
    .line 217
    add-int/lit8 v6, v6, 0x1

    .line 218
    .line 219
    const/16 v7, 0x30

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_d
    :goto_6
    const-string v6, " \"\'<>#"

    .line 223
    .line 224
    const-string v7, ""

    .line 225
    .line 226
    iget-object v9, v0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    .line 227
    .line 228
    const/16 v8, 0x23

    .line 229
    .line 230
    if-ge v13, v11, :cond_11

    .line 231
    .line 232
    if-eqz v1, :cond_11

    .line 233
    .line 234
    iget-object v11, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 235
    .line 236
    const/16 v16, 0x1

    .line 237
    .line 238
    iget-object v14, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-nez v11, :cond_e

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_e
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->e()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    iput-object v10, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->a()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    iput-object v10, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v10, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 260
    .line 261
    iput-object v10, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 262
    .line 263
    iget v10, v1, Lokhttp3/HttpUrl;->e:I

    .line 264
    .line 265
    iput v10, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 266
    .line 267
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->c()Ljava/util/ArrayList;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    .line 276
    .line 277
    if-eq v3, v5, :cond_f

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    if-ne v10, v8, :cond_1f

    .line 284
    .line 285
    :cond_f
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    const/16 v10, 0x53

    .line 292
    .line 293
    invoke-static {v1, v4, v4, v6, v10}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eqz v1, :cond_10

    .line 298
    .line 299
    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    goto :goto_7

    .line 304
    :cond_10
    const/4 v1, 0x0

    .line 305
    :goto_7
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 306
    .line 307
    goto/16 :goto_11

    .line 308
    .line 309
    :cond_11
    const/16 v16, 0x1

    .line 310
    .line 311
    :goto_8
    add-int/2addr v3, v13

    .line 312
    move v1, v4

    .line 313
    move v11, v1

    .line 314
    :goto_9
    const-string v13, "@/\\?#"

    .line 315
    .line 316
    invoke-static {v2, v3, v5, v13}, Lokhttp3/internal/_UtilCommonKt;->c(Ljava/lang/String;IILjava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    if-eq v13, v5, :cond_12

    .line 321
    .line 322
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v14

    .line 326
    goto :goto_a

    .line 327
    :cond_12
    move v14, v10

    .line 328
    :goto_a
    if-eq v14, v10, :cond_17

    .line 329
    .line 330
    if-eq v14, v8, :cond_17

    .line 331
    .line 332
    if-eq v14, v15, :cond_17

    .line 333
    .line 334
    const/16 v4, 0x5c

    .line 335
    .line 336
    if-eq v14, v4, :cond_17

    .line 337
    .line 338
    const/16 v4, 0x3f

    .line 339
    .line 340
    if-eq v14, v4, :cond_17

    .line 341
    .line 342
    const/16 v4, 0x40

    .line 343
    .line 344
    if-eq v14, v4, :cond_13

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    goto :goto_9

    .line 348
    :cond_13
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    .line 349
    .line 350
    const-string v14, "%40"

    .line 351
    .line 352
    if-nez v1, :cond_16

    .line 353
    .line 354
    const/16 v8, 0x3a

    .line 355
    .line 356
    invoke-static {v2, v8, v3, v13}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/lang/String;CII)I

    .line 357
    .line 358
    .line 359
    move-result v15

    .line 360
    const/16 v8, 0x70

    .line 361
    .line 362
    invoke-static {v2, v3, v15, v4, v8}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-eqz v11, :cond_14

    .line 367
    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    iget-object v11, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v8, v11, v14, v3}, Landroid/support/v4/media/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    :cond_14
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 380
    .line 381
    if-eq v15, v13, :cond_15

    .line 382
    .line 383
    add-int/lit8 v15, v15, 0x1

    .line 384
    .line 385
    const/16 v8, 0x70

    .line 386
    .line 387
    invoke-static {v2, v15, v13, v4, v8}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 392
    .line 393
    move/from16 v1, v16

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_15
    const/16 v8, 0x70

    .line 397
    .line 398
    :goto_b
    move/from16 v11, v16

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_16
    const/16 v8, 0x70

    .line 402
    .line 403
    new-instance v15, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    iget-object v10, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-static {v2, v3, v13, v4, v8}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 428
    .line 429
    :goto_c
    add-int/lit8 v3, v13, 0x1

    .line 430
    .line 431
    const/4 v4, 0x0

    .line 432
    const/16 v8, 0x23

    .line 433
    .line 434
    const/4 v10, -0x1

    .line 435
    const/16 v15, 0x2f

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_17
    move v1, v3

    .line 439
    :goto_d
    if-ge v1, v13, :cond_1a

    .line 440
    .line 441
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    const/16 v8, 0x3a

    .line 446
    .line 447
    if-eq v4, v8, :cond_1b

    .line 448
    .line 449
    const/16 v10, 0x5b

    .line 450
    .line 451
    if-eq v4, v10, :cond_18

    .line 452
    .line 453
    goto :goto_e

    .line 454
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 455
    .line 456
    if-ge v1, v13, :cond_19

    .line 457
    .line 458
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 459
    .line 460
    .line 461
    move-result v4

    .line 462
    const/16 v11, 0x5d

    .line 463
    .line 464
    if-ne v4, v11, :cond_18

    .line 465
    .line 466
    :cond_19
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_1a
    move v1, v13

    .line 470
    :cond_1b
    add-int/lit8 v4, v1, 0x1

    .line 471
    .line 472
    const/4 v8, 0x4

    .line 473
    const/16 v10, 0x22

    .line 474
    .line 475
    if-ge v4, v13, :cond_1e

    .line 476
    .line 477
    invoke-static {v3, v1, v8, v2}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    invoke-static {v8}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    iput-object v8, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 486
    .line 487
    const/16 v8, 0x78

    .line 488
    .line 489
    :try_start_0
    invoke-static {v2, v4, v13, v7, v8}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    move/from16 v11, v16

    .line 498
    .line 499
    if-gt v11, v8, :cond_1c

    .line 500
    .line 501
    const/high16 v11, 0x10000

    .line 502
    .line 503
    if-ge v8, v11, :cond_1c

    .line 504
    .line 505
    goto :goto_f

    .line 506
    :catch_0
    :cond_1c
    const/4 v8, -0x1

    .line 507
    :goto_f
    iput v8, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 508
    .line 509
    const/4 v11, -0x1

    .line 510
    if-eq v8, v11, :cond_1d

    .line 511
    .line 512
    goto :goto_10

    .line 513
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    const-string v3, "Invalid URL port: \""

    .line 516
    .line 517
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v2

    .line 547
    :cond_1e
    invoke-static {v3, v1, v8, v2}, Lokhttp3/internal/url/_UrlKt;->c(IIILjava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-static {v4}, Lokhttp3/internal/_HostnamesCommonKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 556
    .line 557
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 558
    .line 559
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    invoke-static {v4}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    iput v4, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 567
    .line 568
    :goto_10
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 569
    .line 570
    if-eqz v4, :cond_2d

    .line 571
    .line 572
    move v3, v13

    .line 573
    :cond_1f
    :goto_11
    const-string v1, "?#"

    .line 574
    .line 575
    invoke-static {v2, v3, v5, v1}, Lokhttp3/internal/_UtilCommonKt;->c(Ljava/lang/String;IILjava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-ne v3, v1, :cond_20

    .line 580
    .line 581
    goto/16 :goto_17

    .line 582
    .line 583
    :cond_20
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    const/16 v8, 0x2f

    .line 588
    .line 589
    if-eq v4, v8, :cond_21

    .line 590
    .line 591
    const/16 v8, 0x5c

    .line 592
    .line 593
    if-eq v4, v8, :cond_21

    .line 594
    .line 595
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    const/16 v16, 0x1

    .line 600
    .line 601
    add-int/lit8 v4, v4, -0x1

    .line 602
    .line 603
    invoke-interface {v9, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    goto :goto_12

    .line 607
    :cond_21
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 608
    .line 609
    .line 610
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    add-int/lit8 v3, v3, 0x1

    .line 614
    .line 615
    :goto_12
    if-ge v3, v1, :cond_2a

    .line 616
    .line 617
    const-string v4, "/\\"

    .line 618
    .line 619
    invoke-static {v2, v3, v1, v4}, Lokhttp3/internal/_UtilCommonKt;->c(Ljava/lang/String;IILjava/lang/String;)I

    .line 620
    .line 621
    .line 622
    move-result v4

    .line 623
    if-ge v4, v1, :cond_22

    .line 624
    .line 625
    const/4 v11, 0x1

    .line 626
    goto :goto_13

    .line 627
    :cond_22
    const/4 v11, 0x0

    .line 628
    :goto_13
    const-string v8, " \"<>^`{}|/\\?#"

    .line 629
    .line 630
    const/16 v10, 0x70

    .line 631
    .line 632
    invoke-static {v2, v3, v4, v8, v10}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    const-string v8, "."

    .line 637
    .line 638
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v8

    .line 642
    if-nez v8, :cond_28

    .line 643
    .line 644
    const-string v8, "%2e"

    .line 645
    .line 646
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v8

    .line 650
    if-eqz v8, :cond_23

    .line 651
    .line 652
    goto/16 :goto_16

    .line 653
    .line 654
    :cond_23
    const-string v8, ".."

    .line 655
    .line 656
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    if-nez v8, :cond_26

    .line 661
    .line 662
    const-string v8, "%2e."

    .line 663
    .line 664
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    if-nez v8, :cond_26

    .line 669
    .line 670
    const-string v8, ".%2e"

    .line 671
    .line 672
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    if-nez v8, :cond_26

    .line 677
    .line 678
    const-string v8, "%2e%2e"

    .line 679
    .line 680
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    if-eqz v8, :cond_24

    .line 685
    .line 686
    goto :goto_15

    .line 687
    :cond_24
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    const/16 v16, 0x1

    .line 692
    .line 693
    add-int/lit8 v8, v8, -0x1

    .line 694
    .line 695
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    check-cast v8, Ljava/lang/CharSequence;

    .line 700
    .line 701
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 702
    .line 703
    .line 704
    move-result v8

    .line 705
    if-nez v8, :cond_25

    .line 706
    .line 707
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    add-int/lit8 v8, v8, -0x1

    .line 712
    .line 713
    invoke-interface {v9, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    goto :goto_14

    .line 717
    :cond_25
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    :goto_14
    if-eqz v11, :cond_28

    .line 721
    .line 722
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    goto :goto_16

    .line 726
    :cond_26
    :goto_15
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    const/16 v16, 0x1

    .line 731
    .line 732
    add-int/lit8 v3, v3, -0x1

    .line 733
    .line 734
    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    check-cast v3, Ljava/lang/String;

    .line 739
    .line 740
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    if-nez v3, :cond_27

    .line 745
    .line 746
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    if-nez v3, :cond_27

    .line 751
    .line 752
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 753
    .line 754
    .line 755
    move-result v3

    .line 756
    add-int/lit8 v3, v3, -0x1

    .line 757
    .line 758
    invoke-interface {v9, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    goto :goto_16

    .line 762
    :cond_27
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    :cond_28
    :goto_16
    if-eqz v11, :cond_29

    .line 766
    .line 767
    add-int/lit8 v3, v4, 0x1

    .line 768
    .line 769
    goto/16 :goto_12

    .line 770
    .line 771
    :cond_29
    move v3, v4

    .line 772
    goto/16 :goto_12

    .line 773
    .line 774
    :cond_2a
    :goto_17
    if-ge v1, v5, :cond_2b

    .line 775
    .line 776
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 777
    .line 778
    .line 779
    move-result v3

    .line 780
    const/16 v4, 0x3f

    .line 781
    .line 782
    if-ne v3, v4, :cond_2b

    .line 783
    .line 784
    const/16 v3, 0x23

    .line 785
    .line 786
    invoke-static {v2, v3, v1, v5}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/lang/String;CII)I

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    add-int/lit8 v1, v1, 0x1

    .line 791
    .line 792
    const/16 v3, 0x50

    .line 793
    .line 794
    invoke-static {v2, v1, v4, v6, v3}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    invoke-static {v1}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 803
    .line 804
    move v1, v4

    .line 805
    :cond_2b
    if-ge v1, v5, :cond_2c

    .line 806
    .line 807
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    const/16 v4, 0x23

    .line 812
    .line 813
    if-ne v3, v4, :cond_2c

    .line 814
    .line 815
    const/16 v16, 0x1

    .line 816
    .line 817
    add-int/lit8 v1, v1, 0x1

    .line 818
    .line 819
    const/16 v3, 0x30

    .line 820
    .line 821
    invoke-static {v2, v1, v5, v7, v3}, Lokhttp3/internal/url/_UrlKt;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 826
    .line 827
    :cond_2c
    return-void

    .line 828
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    const-string v5, "Invalid URL host: \""

    .line 831
    .line 832
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 853
    .line 854
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v2

    .line 862
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    const/4 v3, 0x6

    .line 867
    if-le v1, v3, :cond_2f

    .line 868
    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .line 873
    .line 874
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v2, "..."

    .line 882
    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    goto :goto_18

    .line 891
    :cond_2f
    move-object v1, v2

    .line 892
    :goto_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 893
    .line 894
    const-string v3, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 895
    .line 896
    invoke-static {v3, v1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "://"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "//"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x3a

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_3

    .line 42
    .line 43
    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    const/16 v1, 0x40

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;C)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    const/16 v1, 0x5b

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/16 v1, 0x5d

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_5
    :goto_2
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 104
    .line 105
    const/4 v3, -0x1

    .line 106
    if-ne v1, v3, :cond_6

    .line 107
    .line 108
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v4, :cond_9

    .line 111
    .line 112
    :cond_6
    if-eq v1, v3, :cond_7

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    :goto_3
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eq v1, v3, :cond_9

    .line 136
    .line 137
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    :cond_9
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const/4 v3, 0x0

    .line 150
    move v4, v3

    .line 151
    :goto_4
    if-ge v4, v2, :cond_a

    .line 152
    .line 153
    const/16 v5, 0x2f

    .line 154
    .line 155
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    check-cast v5, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    add-int/lit8 v4, v4, 0x1

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 171
    .line 172
    if-eqz v1, :cond_f

    .line 173
    .line 174
    const/16 v1, 0x3f

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const/4 v3, 0x2

    .line 193
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->d(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-lez v2, :cond_b

    .line 210
    .line 211
    if-le v3, v4, :cond_c

    .line 212
    .line 213
    :cond_b
    if-gez v2, :cond_f

    .line 214
    .line 215
    if-gt v4, v3, :cond_f

    .line 216
    .line 217
    :cond_c
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Ljava/lang/String;

    .line 222
    .line 223
    add-int/lit8 v6, v3, 0x1

    .line 224
    .line 225
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Ljava/lang/String;

    .line 230
    .line 231
    if-lez v3, :cond_d

    .line 232
    .line 233
    const/16 v7, 0x26

    .line 234
    .line 235
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    if-eqz v6, :cond_e

    .line 242
    .line 243
    const/16 v5, 0x3d

    .line 244
    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :cond_e
    if-eq v3, v4, :cond_f

    .line 252
    .line 253
    add-int/2addr v3, v2

    .line 254
    goto :goto_5

    .line 255
    :cond_f
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 256
    .line 257
    if-eqz v1, :cond_10

    .line 258
    .line 259
    const/16 v1, 0x23

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0
.end method
