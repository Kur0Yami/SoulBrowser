.class public final Landroidx/graphics/shapes/FeatureMappingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0018\u0008\u0000\u0010\u0002\"\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0012\u0004\u0012\u00020\u00010\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "",
        "Landroidx/graphics/shapes/ProgressableFeature;",
        "MeasuredFeatures",
        "graphics-shapes_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFeatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/FeatureMappingKt\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n108#2,4:132\n108#2,4:138\n108#2,4:142\n37#3,2:136\n2310#4,14:146\n2310#4,14:161\n1#5:160\n*S KotlinDebug\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/FeatureMappingKt\n*L\n65#1:132,4\n67#1:138,4\n90#1:142,4\n66#1:136,2\n111#1:146,14\n123#1:161,14\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 1
    const-string v0, "f1"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "f2"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_9

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lkotlin/collections/IntIterator;

    .line 27
    .line 28
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/graphics/shapes/ProgressableFeature;

    .line 45
    .line 46
    iget-object v3, v3, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Landroidx/graphics/shapes/ProgressableFeature;

    .line 53
    .line 54
    iget-object v5, v5, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 55
    .line 56
    invoke-static {v3, v5}, Landroidx/graphics/shapes/FeatureMappingKt;->b(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    :cond_1
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Landroidx/graphics/shapes/ProgressableFeature;

    .line 69
    .line 70
    iget-object v6, v6, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 71
    .line 72
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Landroidx/graphics/shapes/ProgressableFeature;

    .line 77
    .line 78
    iget-object v7, v7, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 79
    .line 80
    invoke-static {v6, v7}, Landroidx/graphics/shapes/FeatureMappingKt;->b(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-lez v7, :cond_2

    .line 89
    .line 90
    move v2, v5

    .line 91
    move v3, v6

    .line 92
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_1

    .line 97
    .line 98
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v3, 0x1

    .line 107
    new-array v5, v3, [Landroidx/graphics/shapes/ProgressableFeature;

    .line 108
    .line 109
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    aput-object v6, v5, v4

    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    move v5, v2

    .line 120
    :goto_1
    if-ge v3, v0, :cond_8

    .line 121
    .line 122
    sub-int v6, v0, v3

    .line 123
    .line 124
    sub-int v6, v2, v6

    .line 125
    .line 126
    if-le v6, v5, :cond_3

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    add-int/2addr v6, v1

    .line 130
    :goto_2
    new-instance v7, Lkotlin/ranges/IntRange;

    .line 131
    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    invoke-direct {v7, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_7

    .line 146
    .line 147
    move-object v6, v5

    .line 148
    check-cast v6, Lkotlin/collections/IntIterator;

    .line 149
    .line 150
    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_4

    .line 159
    .line 160
    :goto_3
    move v5, v7

    .line 161
    goto :goto_4

    .line 162
    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Landroidx/graphics/shapes/ProgressableFeature;

    .line 167
    .line 168
    iget-object v8, v8, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 169
    .line 170
    rem-int v9, v7, v1

    .line 171
    .line 172
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    check-cast v9, Landroidx/graphics/shapes/ProgressableFeature;

    .line 177
    .line 178
    iget-object v9, v9, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 179
    .line 180
    invoke-static {v8, v9}, Landroidx/graphics/shapes/FeatureMappingKt;->b(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    :cond_5
    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Landroidx/graphics/shapes/ProgressableFeature;

    .line 193
    .line 194
    iget-object v10, v10, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 195
    .line 196
    rem-int v11, v9, v1

    .line 197
    .line 198
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    check-cast v11, Landroidx/graphics/shapes/ProgressableFeature;

    .line 203
    .line 204
    iget-object v11, v11, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 205
    .line 206
    invoke-static {v10, v11}, Landroidx/graphics/shapes/FeatureMappingKt;->b(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    if-lez v11, :cond_6

    .line 215
    .line 216
    move v7, v9

    .line 217
    move v8, v10

    .line 218
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-nez v9, :cond_5

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :goto_4
    rem-int v6, v5, v1

    .line 226
    .line 227
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 238
    .line 239
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 240
    .line 241
    .line 242
    throw p0

    .line 243
    :cond_8
    return-object v4

    .line 244
    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 245
    .line 246
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 247
    .line 248
    .line 249
    throw p0
.end method

.method public static final b(Landroidx/graphics/shapes/Feature;Landroidx/graphics/shapes/Feature;)F
    .locals 5

    .line 1
    const-string v0, "f1"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "f2"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p0, Landroidx/graphics/shapes/Feature$Corner;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    instance-of v0, p1, Landroidx/graphics/shapes/Feature$Corner;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    check-cast v0, Landroidx/graphics/shapes/Feature$Corner;

    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/graphics/shapes/Feature$Corner;->d:Z

    .line 23
    .line 24
    move-object v1, p1

    .line 25
    check-cast v1, Landroidx/graphics/shapes/Feature$Corner;

    .line 26
    .line 27
    iget-boolean v1, v1, Landroidx/graphics/shapes/Feature$Corner;->d:Z

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 32
    .line 33
    .line 34
    return p0

    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/graphics/shapes/Cubic;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroidx/graphics/shapes/Cubic;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-float/2addr v2, v0

    .line 61
    const/high16 v0, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float/2addr v2, v0

    .line 64
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 69
    .line 70
    iget-object v3, v3, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    aget v3, v3, v4

    .line 74
    .line 75
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroidx/graphics/shapes/Cubic;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    add-float/2addr p0, v3

    .line 86
    div-float/2addr p0, v0

    .line 87
    iget-object v3, p1, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 88
    .line 89
    iget-object p1, p1, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 90
    .line 91
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 96
    .line 97
    iget-object v3, v3, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 98
    .line 99
    aget v1, v3, v1

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    add-float/2addr v3, v1

    .line 112
    div-float/2addr v3, v0

    .line 113
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroidx/graphics/shapes/Cubic;

    .line 118
    .line 119
    iget-object v1, v1, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 120
    .line 121
    aget v1, v1, v4

    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroidx/graphics/shapes/Cubic;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    add-float/2addr p1, v1

    .line 134
    div-float/2addr p1, v0

    .line 135
    sub-float/2addr v2, v3

    .line 136
    sub-float/2addr p0, p1

    .line 137
    mul-float/2addr v2, v2

    .line 138
    mul-float/2addr p0, p0

    .line 139
    add-float/2addr p0, v2

    .line 140
    return p0
.end method
