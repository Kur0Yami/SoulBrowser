.class public final Landroidx/graphics/shapes/FloatMappingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
        "SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n75#3:101\n190#3,3:104\n253#3,4:107\n193#3,2:111\n258#3:113\n195#3:114\n223#4,2:102\n1774#4,4:115\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n42#1:101\n93#1:104,3\n93#1:107,4\n93#1:111,2\n93#1:113\n93#1:114\n42#1:102,2\n96#1:115,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F
    .locals 7

    .line 1
    const-string v0, "xValues"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yValues"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    cmpg-float v0, v0, p2

    .line 13
    .line 14
    if-gtz v0, :cond_5

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    cmpg-float v1, p2, v0

    .line 19
    .line 20
    if-gtz v1, :cond_5

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iget v2, p0, Landroidx/collection/FloatList;->b:I

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    move-object v2, v1

    .line 40
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 41
    .line 42
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->a(I)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/lit8 v4, v2, 0x1

    .line 51
    .line 52
    iget v5, p0, Landroidx/collection/FloatList;->b:I

    .line 53
    .line 54
    rem-int v5, v4, v5

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Landroidx/collection/FloatList;->a(I)F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    cmpl-float v6, v5, v3

    .line 61
    .line 62
    if-ltz v6, :cond_1

    .line 63
    .line 64
    cmpg-float v3, v3, p2

    .line 65
    .line 66
    if-gtz v3, :cond_0

    .line 67
    .line 68
    cmpg-float v3, p2, v5

    .line 69
    .line 70
    if-gtz v3, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    cmpl-float v3, p2, v3

    .line 74
    .line 75
    if-gez v3, :cond_2

    .line 76
    .line 77
    cmpg-float v3, p2, v5

    .line 78
    .line 79
    if-gtz v3, :cond_0

    .line 80
    .line 81
    :cond_2
    :goto_0
    iget v1, p0, Landroidx/collection/FloatList;->b:I

    .line 82
    .line 83
    rem-int/2addr v4, v1

    .line 84
    invoke-virtual {p0, v4}, Landroidx/collection/FloatList;->a(I)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->a(I)F

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    sub-float/2addr v1, v3

    .line 93
    invoke-static {v1, v0}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1, v4}, Landroidx/collection/FloatList;->a(I)F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->a(I)F

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    sub-float/2addr v3, v4

    .line 106
    invoke-static {v3, v0}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const v4, 0x3a83126f    # 0.001f

    .line 111
    .line 112
    .line 113
    cmpg-float v4, v1, v4

    .line 114
    .line 115
    if-gez v4, :cond_3

    .line 116
    .line 117
    const/high16 p0, 0x3f000000    # 0.5f

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/collection/FloatList;->a(I)F

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    sub-float/2addr p2, p0

    .line 125
    invoke-static {p2, v0}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    div-float/2addr p0, v1

    .line 130
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/collection/FloatList;->a(I)F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    mul-float/2addr v3, p0

    .line 135
    add-float/2addr v3, p1

    .line 136
    invoke-static {v3, v0}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    return p0

    .line 141
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 142
    .line 143
    const-string p1, "Collection contains no element matching the predicate."

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string p1, "Invalid progress: "

    .line 152
    .line 153
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method public static final b(Landroidx/collection/FloatList;)V
    .locals 7

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/collection/FloatList;->a:[F

    .line 9
    .line 10
    iget v2, p0, Landroidx/collection/FloatList;->b:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    const/4 v5, 0x1

    .line 15
    if-ge v4, v2, :cond_1

    .line 16
    .line 17
    aget v6, v1, v4

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    cmpg-float v0, v0, v6

    .line 27
    .line 28
    if-gtz v0, :cond_0

    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpg-float v0, v6, v0

    .line 33
    .line 34
    if-gtz v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v5, v3

    .line 38
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x1f

    .line 50
    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    iget v0, p0, Landroidx/collection/FloatList;->b:I

    .line 54
    .line 55
    invoke-static {v5, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    instance-of v2, v0, Ljava/util/Collection;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    move-object v2, v0

    .line 64
    check-cast v2, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    move v2, v3

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move v2, v3

    .line 79
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    move-object v4, v0

    .line 86
    check-cast v4, Lkotlin/collections/IntIterator;

    .line 87
    .line 88
    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {p0, v4}, Landroidx/collection/FloatList;->a(I)F

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    sub-int/2addr v4, v5

    .line 97
    invoke-virtual {p0, v4}, Landroidx/collection/FloatList;->a(I)F

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    cmpg-float v4, v6, v4

    .line 102
    .line 103
    if-gez v4, :cond_3

    .line 104
    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    if-gez v2, :cond_3

    .line 108
    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    :goto_3
    if-gt v2, v5, :cond_5

    .line 114
    .line 115
    move v3, v5

    .line 116
    :cond_5
    if-eqz v3, :cond_6

    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "FloatMapping - Progress wraps more than once: "

    .line 122
    .line 123
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v1}, Landroidx/collection/FloatList;->b(Landroidx/collection/FloatList;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "FloatMapping - Progress outside of range: "

    .line 150
    .line 151
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v1}, Landroidx/collection/FloatList;->b(Landroidx/collection/FloatList;I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method
