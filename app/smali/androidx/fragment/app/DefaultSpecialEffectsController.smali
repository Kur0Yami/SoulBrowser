.class public final Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/fragment/app/DefaultSpecialEffectsController;",
        "Landroidx/fragment/app/SpecialEffectsController;",
        "AnimationInfo",
        "SpecialEffectsInfo",
        "TransitionInfo",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,877:1\n288#2,2:878\n533#2,6:880\n819#2:886\n847#2,2:887\n766#2:889\n857#2,2:890\n1789#2,3:892\n819#2:895\n847#2,2:896\n1855#2,2:898\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n*L\n47#1:878,2\n53#1:880,6\n312#1:886\n312#1:887,2\n315#1:889\n315#1:890,2\n317#1:892,3\n629#1:895\n629#1:896,2\n632#1:898,2\n*E\n"
    }
.end annotation


# direct methods
.method public static j(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, "child"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public static k(Landroidx/collection/ArrayMap;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, "child"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->k(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;Z)V
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "operations"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 21
    .line 22
    const-string v7, "operation.fragment.mView"

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    move-object v8, v4

    .line 31
    check-cast v8, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 32
    .line 33
    iget-object v9, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 36
    .line 37
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;->a(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    if-ne v9, v6, :cond_0

    .line 45
    .line 46
    iget-object v8, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 47
    .line 48
    if-eq v8, v6, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_0
    move-object v8, v4

    .line 53
    check-cast v8, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move-object v9, v4

    .line 74
    check-cast v9, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 75
    .line 76
    iget-object v10, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 79
    .line 80
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;->a(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    if-eq v10, v6, :cond_2

    .line 88
    .line 89
    iget-object v9, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 90
    .line 91
    if-ne v9, v6, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 v4, 0x0

    .line 95
    :goto_1
    move-object v9, v4

    .line 96
    check-cast v9, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 97
    .line 98
    const/4 v10, 0x2

    .line 99
    invoke-static {v10}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const-string v11, " to "

    .line 104
    .line 105
    const-string v12, "FragmentManager"

    .line 106
    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v4, "Executing operations from "

    .line 112
    .line 113
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v3, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 151
    .line 152
    iget-object v4, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v16

    .line 162
    if-eqz v16, :cond_5

    .line 163
    .line 164
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v16

    .line 168
    move-object/from16 v5, v16

    .line 169
    .line 170
    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 171
    .line 172
    iget-object v5, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 173
    .line 174
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 175
    .line 176
    move/from16 v16, v10

    .line 177
    .line 178
    iget-object v10, v4, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 179
    .line 180
    iget v0, v10, Landroidx/fragment/app/Fragment$AnimationInfo;->b:I

    .line 181
    .line 182
    iput v0, v5, Landroidx/fragment/app/Fragment$AnimationInfo;->b:I

    .line 183
    .line 184
    iget v0, v10, Landroidx/fragment/app/Fragment$AnimationInfo;->c:I

    .line 185
    .line 186
    iput v0, v5, Landroidx/fragment/app/Fragment$AnimationInfo;->c:I

    .line 187
    .line 188
    iget v0, v10, Landroidx/fragment/app/Fragment$AnimationInfo;->d:I

    .line 189
    .line 190
    iput v0, v5, Landroidx/fragment/app/Fragment$AnimationInfo;->d:I

    .line 191
    .line 192
    iget v0, v10, Landroidx/fragment/app/Fragment$AnimationInfo;->e:I

    .line 193
    .line 194
    iput v0, v5, Landroidx/fragment/app/Fragment$AnimationInfo;->e:I

    .line 195
    .line 196
    move-object/from16 v0, p1

    .line 197
    .line 198
    move/from16 v10, v16

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    move/from16 v16, v10

    .line 202
    .line 203
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_8

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 218
    .line 219
    new-instance v5, Landroidx/core/os/CancellationSignal;

    .line 220
    .line 221
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const/16 p1, 0x1

    .line 228
    .line 229
    iget-object v15, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/LinkedHashSet;

    .line 230
    .line 231
    const-string v10, "signal"

    .line 232
    .line 233
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    .line 237
    .line 238
    .line 239
    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-object/from16 v19, v0

    .line 243
    .line 244
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 245
    .line 246
    invoke-direct {v0, v4, v5, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    new-instance v0, Landroidx/core/os/CancellationSignal;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    .line 261
    .line 262
    .line 263
    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 267
    .line 268
    if-eqz v2, :cond_7

    .line 269
    .line 270
    if-ne v4, v8, :cond_6

    .line 271
    .line 272
    :goto_4
    move/from16 v15, p1

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_6
    const/4 v15, 0x0

    .line 276
    goto :goto_5

    .line 277
    :cond_7
    if-ne v4, v9, :cond_6

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :goto_5
    invoke-direct {v5, v4, v0, v2, v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    new-instance v0, Landroidx/fragment/app/a;

    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    invoke-direct {v0, v14, v4, v1, v5}, Landroidx/fragment/app/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 290
    .line 291
    .line 292
    const-string v5, "listener"

    .line 293
    .line 294
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v4, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-object/from16 v0, v19

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_8
    const/16 p1, 0x1

    .line 306
    .line 307
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 308
    .line 309
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 310
    .line 311
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    const/4 v5, 0x0

    .line 322
    :cond_9
    :goto_6
    if-ge v5, v4, :cond_a

    .line 323
    .line 324
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v15

    .line 328
    add-int/lit8 v5, v5, 0x1

    .line 329
    .line 330
    move-object/from16 v19, v15

    .line 331
    .line 332
    check-cast v19, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 333
    .line 334
    invoke-virtual/range {v19 .. v19}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Z

    .line 335
    .line 336
    .line 337
    move-result v19

    .line 338
    if-nez v19, :cond_9

    .line 339
    .line 340
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    const/4 v15, 0x0

    .line 354
    :goto_7
    if-ge v15, v5, :cond_c

    .line 355
    .line 356
    move/from16 v19, v5

    .line 357
    .line 358
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    add-int/lit8 v15, v15, 0x1

    .line 363
    .line 364
    move-object/from16 v20, v5

    .line 365
    .line 366
    check-cast v20, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 367
    .line 368
    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->c()Landroidx/fragment/app/FragmentTransitionImpl;

    .line 369
    .line 370
    .line 371
    move-result-object v20

    .line 372
    if-eqz v20, :cond_b

    .line 373
    .line 374
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    :cond_b
    move/from16 v5, v19

    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    const/4 v5, 0x0

    .line 385
    const/4 v15, 0x0

    .line 386
    :goto_8
    if-ge v15, v0, :cond_f

    .line 387
    .line 388
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v19

    .line 392
    add-int/lit8 v15, v15, 0x1

    .line 393
    .line 394
    move/from16 v20, v0

    .line 395
    .line 396
    move-object/from16 v0, v19

    .line 397
    .line 398
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 399
    .line 400
    move-object/from16 v19, v4

    .line 401
    .line 402
    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->c()Landroidx/fragment/app/FragmentTransitionImpl;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    if-eqz v5, :cond_e

    .line 407
    .line 408
    if-ne v4, v5, :cond_d

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 414
    .line 415
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v3, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 419
    .line 420
    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v3, " returned Transition "

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->c:Ljava/lang/Object;

    .line 431
    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v0, " which uses a different Transition type than other Fragments."

    .line 436
    .line 437
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v2

    .line 454
    :cond_e
    :goto_9
    move-object v5, v4

    .line 455
    move-object/from16 v4, v19

    .line 456
    .line 457
    move/from16 v0, v20

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_f
    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->g:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 461
    .line 462
    iget-object v0, v1, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 463
    .line 464
    if-nez v5, :cond_11

    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    const/4 v4, 0x0

    .line 471
    :goto_a
    if-ge v4, v2, :cond_10

    .line 472
    .line 473
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    add-int/lit8 v4, v4, 0x1

    .line 478
    .line 479
    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 480
    .line 481
    iget-object v6, v5, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 482
    .line 483
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 484
    .line 485
    invoke-interface {v10, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 489
    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_10
    move-object/from16 v25, v11

    .line 493
    .line 494
    move-object/from16 v26, v13

    .line 495
    .line 496
    move-object/from16 v28, v14

    .line 497
    .line 498
    move-object v7, v15

    .line 499
    move-object v15, v9

    .line 500
    move-object v13, v12

    .line 501
    goto/16 :goto_2b

    .line 502
    .line 503
    :cond_11
    new-instance v4, Landroid/view/View;

    .line 504
    .line 505
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 510
    .line 511
    .line 512
    new-instance v1, Landroid/graphics/Rect;

    .line 513
    .line 514
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 515
    .line 516
    .line 517
    move-object/from16 v25, v11

    .line 518
    .line 519
    new-instance v11, Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .line 523
    .line 524
    move-object/from16 v26, v13

    .line 525
    .line 526
    new-instance v13, Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .line 530
    .line 531
    move-object/from16 v27, v6

    .line 532
    .line 533
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 534
    .line 535
    move-object/from16 v28, v14

    .line 536
    .line 537
    const/4 v14, 0x0

    .line 538
    invoke-direct {v6, v14}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 542
    .line 543
    .line 544
    move-result v14

    .line 545
    move-object/from16 v32, v7

    .line 546
    .line 547
    move-object/from16 v31, v15

    .line 548
    .line 549
    const/4 v7, 0x0

    .line 550
    const/4 v15, 0x0

    .line 551
    const/16 v29, 0x0

    .line 552
    .line 553
    const/16 v30, 0x0

    .line 554
    .line 555
    :goto_b
    if-ge v15, v14, :cond_2c

    .line 556
    .line 557
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v19

    .line 561
    add-int/lit8 v15, v15, 0x1

    .line 562
    .line 563
    move/from16 v33, v14

    .line 564
    .line 565
    move-object/from16 v14, v19

    .line 566
    .line 567
    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 568
    .line 569
    iget-object v14, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->e:Ljava/lang/Object;

    .line 570
    .line 571
    if-eqz v14, :cond_2b

    .line 572
    .line 573
    if-eqz v8, :cond_2b

    .line 574
    .line 575
    move/from16 v34, v15

    .line 576
    .line 577
    iget-object v15, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 578
    .line 579
    if-eqz v9, :cond_2a

    .line 580
    .line 581
    iget-object v7, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 582
    .line 583
    invoke-virtual {v5, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v14

    .line 587
    invoke-virtual {v5, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->r(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v14

    .line 591
    move-object/from16 v35, v3

    .line 592
    .line 593
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    move-object/from16 v36, v10

    .line 598
    .line 599
    const-string v10, "lastIn.fragment.sharedElementSourceNames"

    .line 600
    .line 601
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 605
    .line 606
    .line 607
    move-result-object v10

    .line 608
    move-object/from16 v37, v4

    .line 609
    .line 610
    const-string v4, "firstOut.fragment.sharedElementSourceNames"

    .line 611
    .line 612
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    move-object/from16 v38, v1

    .line 620
    .line 621
    const-string v1, "firstOut.fragment.sharedElementTargetNames"

    .line 622
    .line 623
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    move-object/from16 v19, v5

    .line 631
    .line 632
    move-object/from16 v24, v13

    .line 633
    .line 634
    const/4 v13, 0x0

    .line 635
    :goto_c
    const/4 v5, -0x1

    .line 636
    if-ge v13, v1, :cond_13

    .line 637
    .line 638
    move/from16 v20, v1

    .line 639
    .line 640
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-eq v1, v5, :cond_12

    .line 649
    .line 650
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    :cond_12
    add-int/lit8 v13, v13, 0x1

    .line 658
    .line 659
    move/from16 v1, v20

    .line 660
    .line 661
    goto :goto_c

    .line 662
    :cond_13
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    const-string v4, "lastIn.fragment.sharedElementTargetNames"

    .line 667
    .line 668
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    if-nez v2, :cond_14

    .line 672
    .line 673
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 678
    .line 679
    .line 680
    move-result-object v10

    .line 681
    invoke-static {v4, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    goto :goto_d

    .line 686
    :cond_14
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/SharedElementCallback;

    .line 691
    .line 692
    .line 693
    move-result-object v10

    .line 694
    invoke-static {v4, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    :goto_d
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v10

    .line 702
    check-cast v10, Landroidx/core/app/SharedElementCallback;

    .line 703
    .line 704
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    check-cast v4, Landroidx/core/app/SharedElementCallback;

    .line 709
    .line 710
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 711
    .line 712
    .line 713
    move-result v13

    .line 714
    move/from16 v20, v5

    .line 715
    .line 716
    const/4 v5, 0x0

    .line 717
    :goto_e
    if-ge v5, v13, :cond_15

    .line 718
    .line 719
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v21

    .line 723
    move-object/from16 v22, v4

    .line 724
    .line 725
    move-object/from16 v4, v21

    .line 726
    .line 727
    check-cast v4, Ljava/lang/String;

    .line 728
    .line 729
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v21

    .line 733
    move/from16 v23, v5

    .line 734
    .line 735
    move-object/from16 v5, v21

    .line 736
    .line 737
    check-cast v5, Ljava/lang/String;

    .line 738
    .line 739
    invoke-virtual {v6, v4, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    add-int/lit8 v5, v23, 0x1

    .line 743
    .line 744
    move-object/from16 v4, v22

    .line 745
    .line 746
    goto :goto_e

    .line 747
    :cond_15
    move-object/from16 v22, v4

    .line 748
    .line 749
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    if-eqz v4, :cond_17

    .line 754
    .line 755
    const-string v4, ">>> entering view names <<<"

    .line 756
    .line 757
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 761
    .line 762
    .line 763
    move-result v4

    .line 764
    const/4 v5, 0x0

    .line 765
    :goto_f
    const-string v13, "Name: "

    .line 766
    .line 767
    if-ge v5, v4, :cond_16

    .line 768
    .line 769
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v21

    .line 773
    add-int/lit8 v5, v5, 0x1

    .line 774
    .line 775
    move/from16 v23, v4

    .line 776
    .line 777
    move-object/from16 v4, v21

    .line 778
    .line 779
    check-cast v4, Ljava/lang/String;

    .line 780
    .line 781
    move/from16 v21, v5

    .line 782
    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move/from16 v5, v21

    .line 799
    .line 800
    move/from16 v4, v23

    .line 801
    .line 802
    goto :goto_f

    .line 803
    :cond_16
    const-string v4, ">>> exiting view names <<<"

    .line 804
    .line 805
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    const/4 v5, 0x0

    .line 813
    :goto_10
    if-ge v5, v4, :cond_17

    .line 814
    .line 815
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v21

    .line 819
    add-int/lit8 v5, v5, 0x1

    .line 820
    .line 821
    move/from16 v23, v4

    .line 822
    .line 823
    move-object/from16 v4, v21

    .line 824
    .line 825
    check-cast v4, Ljava/lang/String;

    .line 826
    .line 827
    move/from16 v21, v5

    .line 828
    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move/from16 v5, v21

    .line 845
    .line 846
    move/from16 v4, v23

    .line 847
    .line 848
    goto :goto_10

    .line 849
    :cond_17
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 850
    .line 851
    const/4 v5, 0x0

    .line 852
    invoke-direct {v4, v5}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 853
    .line 854
    .line 855
    iget-object v5, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 856
    .line 857
    const-string v13, "firstOut.fragment.mView"

    .line 858
    .line 859
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-static {v4, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController;->k(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->m(Ljava/util/Collection;)Z

    .line 866
    .line 867
    .line 868
    if-eqz v10, :cond_1c

    .line 869
    .line 870
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 871
    .line 872
    .line 873
    move-result v5

    .line 874
    if-eqz v5, :cond_18

    .line 875
    .line 876
    new-instance v5, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    const-string v10, "Executing exit callback for operation "

    .line 879
    .line 880
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v5

    .line 890
    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .line 892
    .line 893
    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 894
    .line 895
    .line 896
    move-result v5

    .line 897
    add-int/lit8 v5, v5, -0x1

    .line 898
    .line 899
    if-ltz v5, :cond_1d

    .line 900
    .line 901
    :goto_11
    add-int/lit8 v10, v5, -0x1

    .line 902
    .line 903
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v5

    .line 907
    check-cast v5, Ljava/lang/String;

    .line 908
    .line 909
    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v13

    .line 913
    check-cast v13, Landroid/view/View;

    .line 914
    .line 915
    if-nez v13, :cond_19

    .line 916
    .line 917
    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move/from16 v21, v10

    .line 921
    .line 922
    goto :goto_12

    .line 923
    :cond_19
    move/from16 v21, v10

    .line 924
    .line 925
    invoke-static {v13}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v10

    .line 929
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v10

    .line 933
    if-nez v10, :cond_1a

    .line 934
    .line 935
    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    check-cast v5, Ljava/lang/String;

    .line 940
    .line 941
    invoke-static {v13}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v10

    .line 945
    invoke-virtual {v6, v10, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    :cond_1a
    :goto_12
    if-gez v21, :cond_1b

    .line 949
    .line 950
    goto :goto_13

    .line 951
    :cond_1b
    move/from16 v5, v21

    .line 952
    .line 953
    goto :goto_11

    .line 954
    :cond_1c
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    invoke-virtual {v6, v5}, Landroidx/collection/ArrayMap;->m(Ljava/util/Collection;)Z

    .line 959
    .line 960
    .line 961
    :cond_1d
    :goto_13
    new-instance v5, Landroidx/collection/ArrayMap;

    .line 962
    .line 963
    const/4 v10, 0x0

    .line 964
    invoke-direct {v5, v10}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 965
    .line 966
    .line 967
    iget-object v10, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 968
    .line 969
    const-string v13, "lastIn.fragment.mView"

    .line 970
    .line 971
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    invoke-static {v5, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController;->k(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v5, v1}, Landroidx/collection/ArrayMap;->m(Ljava/util/Collection;)Z

    .line 978
    .line 979
    .line 980
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 981
    .line 982
    .line 983
    move-result-object v10

    .line 984
    invoke-virtual {v5, v10}, Landroidx/collection/ArrayMap;->m(Ljava/util/Collection;)Z

    .line 985
    .line 986
    .line 987
    if-eqz v22, :cond_24

    .line 988
    .line 989
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 990
    .line 991
    .line 992
    move-result v10

    .line 993
    if-eqz v10, :cond_1e

    .line 994
    .line 995
    new-instance v10, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    const-string v13, "Executing enter callback for operation "

    .line 998
    .line 999
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v10

    .line 1009
    invoke-static {v12, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v10

    .line 1016
    add-int/lit8 v10, v10, -0x1

    .line 1017
    .line 1018
    if-ltz v10, :cond_23

    .line 1019
    .line 1020
    :goto_14
    add-int/lit8 v13, v10, -0x1

    .line 1021
    .line 1022
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v10

    .line 1026
    check-cast v10, Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-virtual {v5, v10}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v20

    .line 1032
    check-cast v20, Landroid/view/View;

    .line 1033
    .line 1034
    move/from16 v21, v13

    .line 1035
    .line 1036
    const-string v13, "name"

    .line 1037
    .line 1038
    if-nez v20, :cond_20

    .line 1039
    .line 1040
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v6, v10}, Landroidx/fragment/app/FragmentTransition;->b(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v10

    .line 1047
    if-eqz v10, :cond_1f

    .line 1048
    .line 1049
    invoke-virtual {v6, v10}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    :cond_1f
    move-object/from16 v39, v12

    .line 1053
    .line 1054
    goto :goto_15

    .line 1055
    :cond_20
    move-object/from16 v39, v12

    .line 1056
    .line 1057
    invoke-static/range {v20 .. v20}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v12

    .line 1061
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v12

    .line 1065
    if-nez v12, :cond_21

    .line 1066
    .line 1067
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v6, v10}, Landroidx/fragment/app/FragmentTransition;->b(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v10

    .line 1074
    if-eqz v10, :cond_21

    .line 1075
    .line 1076
    invoke-static/range {v20 .. v20}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v12

    .line 1080
    invoke-virtual {v6, v10, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    :cond_21
    :goto_15
    if-gez v21, :cond_22

    .line 1084
    .line 1085
    goto :goto_17

    .line 1086
    :cond_22
    move/from16 v10, v21

    .line 1087
    .line 1088
    move-object/from16 v12, v39

    .line 1089
    .line 1090
    goto :goto_14

    .line 1091
    :cond_23
    move-object/from16 v39, v12

    .line 1092
    .line 1093
    goto :goto_17

    .line 1094
    :cond_24
    move-object/from16 v39, v12

    .line 1095
    .line 1096
    sget-object v10, Landroidx/fragment/app/FragmentTransition;->a:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 1097
    .line 1098
    const-string v10, "<this>"

    .line 1099
    .line 1100
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    const-string v10, "namedViews"

    .line 1104
    .line 1105
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    iget v10, v6, Landroidx/collection/SimpleArrayMap;->g:I

    .line 1109
    .line 1110
    add-int/lit8 v10, v10, -0x1

    .line 1111
    .line 1112
    move/from16 v12, v20

    .line 1113
    .line 1114
    :goto_16
    if-ge v12, v10, :cond_26

    .line 1115
    .line 1116
    invoke-virtual {v6, v10}, Landroidx/collection/SimpleArrayMap;->j(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v13

    .line 1120
    check-cast v13, Ljava/lang/String;

    .line 1121
    .line 1122
    invoke-virtual {v5, v13}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v13

    .line 1126
    if-nez v13, :cond_25

    .line 1127
    .line 1128
    invoke-virtual {v6, v10}, Landroidx/collection/SimpleArrayMap;->h(I)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    :cond_25
    add-int/lit8 v10, v10, -0x1

    .line 1132
    .line 1133
    goto :goto_16

    .line 1134
    :cond_26
    :goto_17
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v10

    .line 1138
    const-string v12, "sharedElementNameMapping.keys"

    .line 1139
    .line 1140
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v12

    .line 1147
    const-string v13, "entries"

    .line 1148
    .line 1149
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    move-object/from16 v20, v12

    .line 1153
    .line 1154
    new-instance v12, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    .line 1155
    .line 1156
    invoke-direct {v12, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    .line 1157
    .line 1158
    .line 1159
    move-object/from16 v10, v20

    .line 1160
    .line 1161
    check-cast v10, Ljava/util/AbstractSet;

    .line 1162
    .line 1163
    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/AbstractSet;Lkotlin/jvm/functions/Function1;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v10

    .line 1170
    const-string v12, "sharedElementNameMapping.values"

    .line 1171
    .line 1172
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v12

    .line 1179
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    new-instance v13, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;

    .line 1183
    .line 1184
    invoke-direct {v13, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$retainMatchingViews$1;-><init>(Ljava/util/Collection;)V

    .line 1185
    .line 1186
    .line 1187
    check-cast v12, Ljava/util/AbstractSet;

    .line 1188
    .line 1189
    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/AbstractSet;Lkotlin/jvm/functions/Function1;)V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v6}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v10

    .line 1196
    if-eqz v10, :cond_27

    .line 1197
    .line 1198
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 1202
    .line 1203
    .line 1204
    move-object/from16 v5, v19

    .line 1205
    .line 1206
    move-object/from16 v13, v24

    .line 1207
    .line 1208
    move/from16 v14, v33

    .line 1209
    .line 1210
    move/from16 v15, v34

    .line 1211
    .line 1212
    move-object/from16 v3, v35

    .line 1213
    .line 1214
    move-object/from16 v10, v36

    .line 1215
    .line 1216
    move-object/from16 v4, v37

    .line 1217
    .line 1218
    move-object/from16 v1, v38

    .line 1219
    .line 1220
    move-object/from16 v12, v39

    .line 1221
    .line 1222
    const/4 v7, 0x0

    .line 1223
    goto/16 :goto_b

    .line 1224
    .line 1225
    :cond_27
    invoke-static {v7, v15, v2, v4}, Landroidx/fragment/app/FragmentTransition;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;)V

    .line 1226
    .line 1227
    .line 1228
    new-instance v7, Landroidx/fragment/app/d;

    .line 1229
    .line 1230
    invoke-direct {v7, v9, v8, v2, v5}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v0, v7}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v7

    .line 1240
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1241
    .line 1242
    .line 1243
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 1244
    .line 1245
    .line 1246
    move-result v7

    .line 1247
    if-nez v7, :cond_28

    .line 1248
    .line 1249
    const/4 v10, 0x0

    .line 1250
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v3

    .line 1254
    check-cast v3, Ljava/lang/String;

    .line 1255
    .line 1256
    invoke-virtual {v4, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v3

    .line 1260
    check-cast v3, Landroid/view/View;

    .line 1261
    .line 1262
    move-object/from16 v4, v19

    .line 1263
    .line 1264
    invoke-virtual {v4, v3, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 1265
    .line 1266
    .line 1267
    move-object/from16 v30, v3

    .line 1268
    .line 1269
    goto :goto_18

    .line 1270
    :cond_28
    move-object/from16 v4, v19

    .line 1271
    .line 1272
    const/4 v10, 0x0

    .line 1273
    :goto_18
    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v3

    .line 1277
    move-object/from16 v7, v24

    .line 1278
    .line 1279
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1280
    .line 1281
    .line 1282
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1283
    .line 1284
    .line 1285
    move-result v3

    .line 1286
    if-nez v3, :cond_29

    .line 1287
    .line 1288
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v1

    .line 1292
    check-cast v1, Ljava/lang/String;

    .line 1293
    .line 1294
    invoke-virtual {v5, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    check-cast v1, Landroid/view/View;

    .line 1299
    .line 1300
    if-eqz v1, :cond_29

    .line 1301
    .line 1302
    new-instance v3, Landroidx/fragment/app/a;

    .line 1303
    .line 1304
    move/from16 v10, v16

    .line 1305
    .line 1306
    move-object/from16 v5, v38

    .line 1307
    .line 1308
    invoke-direct {v3, v4, v1, v5, v10}, Landroidx/fragment/app/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1309
    .line 1310
    .line 1311
    invoke-static {v0, v3}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1312
    .line 1313
    .line 1314
    move/from16 v29, p1

    .line 1315
    .line 1316
    :goto_19
    move-object/from16 v1, v37

    .line 1317
    .line 1318
    goto :goto_1a

    .line 1319
    :cond_29
    move-object/from16 v5, v38

    .line 1320
    .line 1321
    goto :goto_19

    .line 1322
    :goto_1a
    invoke-virtual {v4, v14, v1, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1323
    .line 1324
    .line 1325
    const/16 v21, 0x0

    .line 1326
    .line 1327
    const/16 v22, 0x0

    .line 1328
    .line 1329
    move-object/from16 v23, v14

    .line 1330
    .line 1331
    move-object/from16 v19, v4

    .line 1332
    .line 1333
    move-object/from16 v24, v7

    .line 1334
    .line 1335
    move-object/from16 v20, v14

    .line 1336
    .line 1337
    invoke-virtual/range {v19 .. v24}, Landroidx/fragment/app/FragmentTransitionImpl;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1338
    .line 1339
    .line 1340
    move-object/from16 v3, v24

    .line 1341
    .line 1342
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1343
    .line 1344
    move-object/from16 v10, v36

    .line 1345
    .line 1346
    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-object v7, v4

    .line 1353
    move-object v4, v1

    .line 1354
    move-object v1, v5

    .line 1355
    move-object v5, v7

    .line 1356
    move-object v13, v3

    .line 1357
    move-object/from16 v7, v20

    .line 1358
    .line 1359
    :goto_1b
    move/from16 v14, v33

    .line 1360
    .line 1361
    move/from16 v15, v34

    .line 1362
    .line 1363
    move-object/from16 v3, v35

    .line 1364
    .line 1365
    move-object/from16 v12, v39

    .line 1366
    .line 1367
    const/16 v16, 0x2

    .line 1368
    .line 1369
    goto/16 :goto_b

    .line 1370
    .line 1371
    :cond_2a
    move-object/from16 v35, v5

    .line 1372
    .line 1373
    move-object v5, v1

    .line 1374
    move-object v1, v4

    .line 1375
    move-object/from16 v4, v35

    .line 1376
    .line 1377
    move-object/from16 v35, v3

    .line 1378
    .line 1379
    move-object/from16 v39, v12

    .line 1380
    .line 1381
    move-object v3, v13

    .line 1382
    goto :goto_1c

    .line 1383
    :cond_2b
    move-object/from16 v34, v5

    .line 1384
    .line 1385
    move-object v5, v1

    .line 1386
    move-object v1, v4

    .line 1387
    move-object/from16 v4, v34

    .line 1388
    .line 1389
    move-object/from16 v35, v3

    .line 1390
    .line 1391
    move-object/from16 v39, v12

    .line 1392
    .line 1393
    move-object v3, v13

    .line 1394
    move/from16 v34, v15

    .line 1395
    .line 1396
    :goto_1c
    move-object v12, v4

    .line 1397
    move-object v4, v1

    .line 1398
    move-object v1, v5

    .line 1399
    move-object v5, v12

    .line 1400
    move-object v13, v3

    .line 1401
    goto :goto_1b

    .line 1402
    :cond_2c
    move-object/from16 v35, v5

    .line 1403
    .line 1404
    move-object v5, v1

    .line 1405
    move-object v1, v4

    .line 1406
    move-object/from16 v4, v35

    .line 1407
    .line 1408
    move-object/from16 v35, v3

    .line 1409
    .line 1410
    move-object/from16 v39, v12

    .line 1411
    .line 1412
    move-object v3, v13

    .line 1413
    new-instance v2, Ljava/util/ArrayList;

    .line 1414
    .line 1415
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    .line 1419
    .line 1420
    .line 1421
    move-result v12

    .line 1422
    const/4 v13, 0x0

    .line 1423
    const/4 v14, 0x0

    .line 1424
    const/4 v15, 0x0

    .line 1425
    :goto_1d
    if-ge v13, v12, :cond_39

    .line 1426
    .line 1427
    move/from16 p2, v12

    .line 1428
    .line 1429
    move-object/from16 v12, v35

    .line 1430
    .line 1431
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v19

    .line 1435
    add-int/lit8 v13, v13, 0x1

    .line 1436
    .line 1437
    move/from16 v33, v13

    .line 1438
    .line 1439
    move-object/from16 v13, v19

    .line 1440
    .line 1441
    check-cast v13, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1442
    .line 1443
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Z

    .line 1444
    .line 1445
    .line 1446
    move-result v19

    .line 1447
    move-object/from16 v34, v6

    .line 1448
    .line 1449
    iget-object v6, v13, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1450
    .line 1451
    if-eqz v19, :cond_2d

    .line 1452
    .line 1453
    move-object/from16 v35, v11

    .line 1454
    .line 1455
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1456
    .line 1457
    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 1461
    .line 1462
    .line 1463
    goto :goto_1f

    .line 1464
    :cond_2d
    move-object/from16 v35, v11

    .line 1465
    .line 1466
    iget-object v11, v13, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->c:Ljava/lang/Object;

    .line 1467
    .line 1468
    invoke-virtual {v4, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v11

    .line 1472
    if-eqz v7, :cond_2f

    .line 1473
    .line 1474
    if-eq v6, v8, :cond_2e

    .line 1475
    .line 1476
    if-ne v6, v9, :cond_2f

    .line 1477
    .line 1478
    :cond_2e
    move/from16 v19, p1

    .line 1479
    .line 1480
    goto :goto_1e

    .line 1481
    :cond_2f
    const/16 v19, 0x0

    .line 1482
    .line 1483
    :goto_1e
    if-nez v11, :cond_31

    .line 1484
    .line 1485
    if-nez v19, :cond_30

    .line 1486
    .line 1487
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1488
    .line 1489
    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 1493
    .line 1494
    .line 1495
    :cond_30
    :goto_1f
    move/from16 v13, v33

    .line 1496
    .line 1497
    move-object/from16 v6, v34

    .line 1498
    .line 1499
    move-object/from16 v11, v35

    .line 1500
    .line 1501
    move-object/from16 v35, v12

    .line 1502
    .line 1503
    :goto_20
    move/from16 v12, p2

    .line 1504
    .line 1505
    goto :goto_1d

    .line 1506
    :cond_31
    move-object/from16 v36, v3

    .line 1507
    .line 1508
    new-instance v3, Ljava/util/ArrayList;

    .line 1509
    .line 1510
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    .line 1512
    .line 1513
    move-object/from16 v37, v9

    .line 1514
    .line 1515
    iget-object v9, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 1516
    .line 1517
    move-object/from16 v38, v12

    .line 1518
    .line 1519
    iget-object v12, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1520
    .line 1521
    move-object/from16 v40, v7

    .line 1522
    .line 1523
    move-object/from16 v7, v32

    .line 1524
    .line 1525
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-static {v12, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1529
    .line 1530
    .line 1531
    if-eqz v19, :cond_33

    .line 1532
    .line 1533
    if-ne v6, v8, :cond_32

    .line 1534
    .line 1535
    invoke-static/range {v35 .. v35}, Lkotlin/collections/CollectionsKt;->x(Ljava/util/List;)Ljava/util/Set;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v12

    .line 1539
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1540
    .line 1541
    .line 1542
    goto :goto_21

    .line 1543
    :cond_32
    invoke-static/range {v36 .. v36}, Lkotlin/collections/CollectionsKt;->x(Ljava/util/List;)Ljava/util/Set;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v12

    .line 1547
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1548
    .line 1549
    .line 1550
    :cond_33
    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1551
    .line 1552
    .line 1553
    move-result v12

    .line 1554
    if-eqz v12, :cond_34

    .line 1555
    .line 1556
    invoke-virtual {v4, v1, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1557
    .line 1558
    .line 1559
    move-object v9, v11

    .line 1560
    move-object v11, v3

    .line 1561
    move-object v3, v9

    .line 1562
    move/from16 v9, p1

    .line 1563
    .line 1564
    move-object/from16 v19, v1

    .line 1565
    .line 1566
    move-object/from16 v32, v7

    .line 1567
    .line 1568
    move-object/from16 v7, v31

    .line 1569
    .line 1570
    goto :goto_22

    .line 1571
    :cond_34
    invoke-virtual {v4, v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1572
    .line 1573
    .line 1574
    const/16 v23, 0x0

    .line 1575
    .line 1576
    const/16 v24, 0x0

    .line 1577
    .line 1578
    move-object/from16 v21, v11

    .line 1579
    .line 1580
    move-object/from16 v22, v3

    .line 1581
    .line 1582
    move-object/from16 v19, v4

    .line 1583
    .line 1584
    move-object/from16 v20, v11

    .line 1585
    .line 1586
    invoke-virtual/range {v19 .. v24}, Landroidx/fragment/app/FragmentTransitionImpl;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1587
    .line 1588
    .line 1589
    move-object/from16 v3, v20

    .line 1590
    .line 1591
    move-object/from16 v11, v22

    .line 1592
    .line 1593
    iget-object v12, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1594
    .line 1595
    move-object/from16 v32, v7

    .line 1596
    .line 1597
    move-object/from16 v7, v31

    .line 1598
    .line 1599
    if-ne v12, v7, :cond_35

    .line 1600
    .line 1601
    move-object/from16 v12, v28

    .line 1602
    .line 1603
    invoke-interface {v12, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1604
    .line 1605
    .line 1606
    move-object/from16 v19, v1

    .line 1607
    .line 1608
    new-instance v1, Ljava/util/ArrayList;

    .line 1609
    .line 1610
    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1611
    .line 1612
    .line 1613
    iget-object v12, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1614
    .line 1615
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1616
    .line 1617
    .line 1618
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1619
    .line 1620
    invoke-virtual {v4, v3, v9, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1621
    .line 1622
    .line 1623
    new-instance v1, Landroidx/fragment/app/e;

    .line 1624
    .line 1625
    move/from16 v9, p1

    .line 1626
    .line 1627
    invoke-direct {v1, v9, v11}, Landroidx/fragment/app/e;-><init>(ILjava/lang/Object;)V

    .line 1628
    .line 1629
    .line 1630
    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1631
    .line 1632
    .line 1633
    goto :goto_22

    .line 1634
    :cond_35
    move/from16 v9, p1

    .line 1635
    .line 1636
    move-object/from16 v19, v1

    .line 1637
    .line 1638
    :goto_22
    iget-object v1, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1639
    .line 1640
    move-object/from16 v12, v27

    .line 1641
    .line 1642
    if-ne v1, v12, :cond_37

    .line 1643
    .line 1644
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1645
    .line 1646
    .line 1647
    if-eqz v29, :cond_36

    .line 1648
    .line 1649
    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1650
    .line 1651
    .line 1652
    :cond_36
    move-object/from16 v1, v30

    .line 1653
    .line 1654
    goto :goto_23

    .line 1655
    :cond_37
    move-object/from16 v1, v30

    .line 1656
    .line 1657
    invoke-virtual {v4, v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 1658
    .line 1659
    .line 1660
    :goto_23
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1661
    .line 1662
    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    iget-boolean v6, v13, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->d:Z

    .line 1666
    .line 1667
    if-eqz v6, :cond_38

    .line 1668
    .line 1669
    invoke-virtual {v4, v14, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v14

    .line 1673
    :goto_24
    move-object/from16 v30, v1

    .line 1674
    .line 1675
    move-object/from16 v31, v7

    .line 1676
    .line 1677
    move/from16 p1, v9

    .line 1678
    .line 1679
    move-object/from16 v27, v12

    .line 1680
    .line 1681
    move-object/from16 v1, v19

    .line 1682
    .line 1683
    move/from16 v13, v33

    .line 1684
    .line 1685
    move-object/from16 v6, v34

    .line 1686
    .line 1687
    move-object/from16 v11, v35

    .line 1688
    .line 1689
    move-object/from16 v3, v36

    .line 1690
    .line 1691
    move-object/from16 v9, v37

    .line 1692
    .line 1693
    move-object/from16 v35, v38

    .line 1694
    .line 1695
    move-object/from16 v7, v40

    .line 1696
    .line 1697
    goto/16 :goto_20

    .line 1698
    .line 1699
    :cond_38
    invoke-virtual {v4, v15, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v15

    .line 1703
    goto :goto_24

    .line 1704
    :cond_39
    move-object/from16 v36, v3

    .line 1705
    .line 1706
    move-object/from16 v34, v6

    .line 1707
    .line 1708
    move-object v3, v7

    .line 1709
    move-object/from16 v37, v9

    .line 1710
    .line 1711
    move-object/from16 v7, v31

    .line 1712
    .line 1713
    move-object/from16 v38, v35

    .line 1714
    .line 1715
    move/from16 v9, p1

    .line 1716
    .line 1717
    move-object/from16 v35, v11

    .line 1718
    .line 1719
    invoke-virtual {v4, v14, v15, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v1

    .line 1723
    if-nez v1, :cond_3a

    .line 1724
    .line 1725
    move-object/from16 v15, v37

    .line 1726
    .line 1727
    move-object/from16 v13, v39

    .line 1728
    .line 1729
    goto/16 :goto_2b

    .line 1730
    .line 1731
    :cond_3a
    new-instance v5, Ljava/util/ArrayList;

    .line 1732
    .line 1733
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    .line 1737
    .line 1738
    .line 1739
    move-result v6

    .line 1740
    const/4 v11, 0x0

    .line 1741
    :goto_25
    if-ge v11, v6, :cond_3c

    .line 1742
    .line 1743
    move-object/from16 v12, v38

    .line 1744
    .line 1745
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v13

    .line 1749
    add-int/lit8 v11, v11, 0x1

    .line 1750
    .line 1751
    move-object v14, v13

    .line 1752
    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1753
    .line 1754
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Z

    .line 1755
    .line 1756
    .line 1757
    move-result v14

    .line 1758
    if-nez v14, :cond_3b

    .line 1759
    .line 1760
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    .line 1762
    .line 1763
    :cond_3b
    move-object/from16 v38, v12

    .line 1764
    .line 1765
    goto :goto_25

    .line 1766
    :cond_3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1767
    .line 1768
    .line 1769
    move-result v6

    .line 1770
    const/4 v11, 0x0

    .line 1771
    :goto_26
    if-ge v11, v6, :cond_43

    .line 1772
    .line 1773
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v12

    .line 1777
    add-int/lit8 v11, v11, 0x1

    .line 1778
    .line 1779
    check-cast v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1780
    .line 1781
    iget-object v13, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->c:Ljava/lang/Object;

    .line 1782
    .line 1783
    iget-object v14, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1784
    .line 1785
    move-object/from16 v15, v37

    .line 1786
    .line 1787
    if-eqz v3, :cond_3e

    .line 1788
    .line 1789
    if-eq v14, v8, :cond_3d

    .line 1790
    .line 1791
    if-ne v14, v15, :cond_3e

    .line 1792
    .line 1793
    :cond_3d
    move/from16 v19, v9

    .line 1794
    .line 1795
    goto :goto_27

    .line 1796
    :cond_3e
    const/16 v19, 0x0

    .line 1797
    .line 1798
    :goto_27
    if-nez v13, :cond_40

    .line 1799
    .line 1800
    if-eqz v19, :cond_3f

    .line 1801
    .line 1802
    goto :goto_28

    .line 1803
    :cond_3f
    move-object/from16 p2, v5

    .line 1804
    .line 1805
    move/from16 v19, v6

    .line 1806
    .line 1807
    move-object/from16 v13, v39

    .line 1808
    .line 1809
    goto :goto_2a

    .line 1810
    :cond_40
    :goto_28
    sget-object v13, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 1811
    .line 1812
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 1813
    .line 1814
    .line 1815
    move-result v13

    .line 1816
    if-nez v13, :cond_42

    .line 1817
    .line 1818
    const/16 v16, 0x2

    .line 1819
    .line 1820
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 1821
    .line 1822
    .line 1823
    move-result v13

    .line 1824
    if-eqz v13, :cond_41

    .line 1825
    .line 1826
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1827
    .line 1828
    const-string v9, "SpecialEffectsController: Container "

    .line 1829
    .line 1830
    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1834
    .line 1835
    .line 1836
    const-string v9, " has not been laid out. Completing operation "

    .line 1837
    .line 1838
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1842
    .line 1843
    .line 1844
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v9

    .line 1848
    move-object/from16 v13, v39

    .line 1849
    .line 1850
    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    .line 1852
    .line 1853
    goto :goto_29

    .line 1854
    :cond_41
    move-object/from16 v13, v39

    .line 1855
    .line 1856
    :goto_29
    invoke-virtual {v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 1857
    .line 1858
    .line 1859
    move-object/from16 p2, v5

    .line 1860
    .line 1861
    move/from16 v19, v6

    .line 1862
    .line 1863
    goto :goto_2a

    .line 1864
    :cond_42
    move-object/from16 v13, v39

    .line 1865
    .line 1866
    iget-object v9, v12, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b:Landroidx/core/os/CancellationSignal;

    .line 1867
    .line 1868
    move-object/from16 p2, v5

    .line 1869
    .line 1870
    new-instance v5, Landroidx/fragment/app/j;

    .line 1871
    .line 1872
    move/from16 v19, v6

    .line 1873
    .line 1874
    const/4 v6, 0x2

    .line 1875
    invoke-direct {v5, v12, v14, v6}, Landroidx/fragment/app/j;-><init>(Ljava/lang/Object;Landroidx/fragment/app/SpecialEffectsController$Operation;I)V

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v4, v1, v9, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->o(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Landroidx/fragment/app/j;)V

    .line 1879
    .line 1880
    .line 1881
    :goto_2a
    move-object/from16 v5, p2

    .line 1882
    .line 1883
    move-object/from16 v39, v13

    .line 1884
    .line 1885
    move-object/from16 v37, v15

    .line 1886
    .line 1887
    move/from16 v6, v19

    .line 1888
    .line 1889
    const/4 v9, 0x1

    .line 1890
    goto :goto_26

    .line 1891
    :cond_43
    move-object/from16 v15, v37

    .line 1892
    .line 1893
    move-object/from16 v13, v39

    .line 1894
    .line 1895
    sget-object v5, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 1896
    .line 1897
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 1898
    .line 1899
    .line 1900
    move-result v5

    .line 1901
    if-nez v5, :cond_44

    .line 1902
    .line 1903
    :goto_2b
    move-object/from16 v37, v15

    .line 1904
    .line 1905
    const/4 v14, 0x0

    .line 1906
    goto/16 :goto_32

    .line 1907
    .line 1908
    :cond_44
    const/4 v5, 0x4

    .line 1909
    invoke-static {v5, v2}, Landroidx/fragment/app/FragmentTransition;->c(ILjava/util/ArrayList;)V

    .line 1910
    .line 1911
    .line 1912
    new-instance v5, Ljava/util/ArrayList;

    .line 1913
    .line 1914
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    .line 1918
    .line 1919
    .line 1920
    move-result v6

    .line 1921
    const/4 v9, 0x0

    .line 1922
    :goto_2c
    if-ge v9, v6, :cond_45

    .line 1923
    .line 1924
    move-object/from16 v11, v36

    .line 1925
    .line 1926
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v12

    .line 1930
    check-cast v12, Landroid/view/View;

    .line 1931
    .line 1932
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v14

    .line 1936
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    .line 1938
    .line 1939
    const/4 v14, 0x0

    .line 1940
    invoke-static {v12, v14}, Landroidx/core/view/ViewCompat;->L(Landroid/view/View;Ljava/lang/String;)V

    .line 1941
    .line 1942
    .line 1943
    add-int/lit8 v9, v9, 0x1

    .line 1944
    .line 1945
    goto :goto_2c

    .line 1946
    :cond_45
    move-object/from16 v11, v36

    .line 1947
    .line 1948
    const/16 v16, 0x2

    .line 1949
    .line 1950
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 1951
    .line 1952
    .line 1953
    move-result v6

    .line 1954
    if-eqz v6, :cond_47

    .line 1955
    .line 1956
    const-string v6, ">>>>> Beginning transition <<<<<"

    .line 1957
    .line 1958
    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    .line 1960
    .line 1961
    const-string v6, ">>>>> SharedElementFirstOutViews <<<<<"

    .line 1962
    .line 1963
    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    .line 1967
    .line 1968
    .line 1969
    move-result v6

    .line 1970
    const/4 v9, 0x0

    .line 1971
    :goto_2d
    const-string v12, " Name: "

    .line 1972
    .line 1973
    const-string v14, "View: "

    .line 1974
    .line 1975
    if-ge v9, v6, :cond_46

    .line 1976
    .line 1977
    move/from16 p2, v6

    .line 1978
    .line 1979
    move-object/from16 v37, v15

    .line 1980
    .line 1981
    move-object/from16 v6, v35

    .line 1982
    .line 1983
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v15

    .line 1987
    add-int/lit8 v9, v9, 0x1

    .line 1988
    .line 1989
    move/from16 v19, v9

    .line 1990
    .line 1991
    const-string v9, "sharedElementFirstOutViews"

    .line 1992
    .line 1993
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1994
    .line 1995
    .line 1996
    check-cast v15, Landroid/view/View;

    .line 1997
    .line 1998
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1999
    .line 2000
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2004
    .line 2005
    .line 2006
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    .line 2008
    .line 2009
    invoke-static {v15}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v12

    .line 2013
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v9

    .line 2020
    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    .line 2022
    .line 2023
    move/from16 v9, v19

    .line 2024
    .line 2025
    move-object/from16 v15, v37

    .line 2026
    .line 2027
    move/from16 v6, p2

    .line 2028
    .line 2029
    goto :goto_2d

    .line 2030
    :cond_46
    move-object/from16 v37, v15

    .line 2031
    .line 2032
    move-object/from16 v6, v35

    .line 2033
    .line 2034
    const-string v9, ">>>>> SharedElementLastInViews <<<<<"

    .line 2035
    .line 2036
    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    .line 2038
    .line 2039
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2040
    .line 2041
    .line 2042
    move-result v9

    .line 2043
    const/4 v15, 0x0

    .line 2044
    :goto_2e
    if-ge v15, v9, :cond_48

    .line 2045
    .line 2046
    move/from16 p2, v9

    .line 2047
    .line 2048
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v9

    .line 2052
    add-int/lit8 v15, v15, 0x1

    .line 2053
    .line 2054
    move/from16 v19, v15

    .line 2055
    .line 2056
    const-string v15, "sharedElementLastInViews"

    .line 2057
    .line 2058
    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2059
    .line 2060
    .line 2061
    check-cast v9, Landroid/view/View;

    .line 2062
    .line 2063
    new-instance v15, Ljava/lang/StringBuilder;

    .line 2064
    .line 2065
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2066
    .line 2067
    .line 2068
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    .line 2073
    .line 2074
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v9

    .line 2078
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v9

    .line 2085
    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    .line 2087
    .line 2088
    move/from16 v9, p2

    .line 2089
    .line 2090
    move/from16 v15, v19

    .line 2091
    .line 2092
    goto :goto_2e

    .line 2093
    :cond_47
    move-object/from16 v37, v15

    .line 2094
    .line 2095
    move-object/from16 v6, v35

    .line 2096
    .line 2097
    :cond_48
    invoke-virtual {v4, v0, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2101
    .line 2102
    .line 2103
    move-result v1

    .line 2104
    new-instance v9, Ljava/util/ArrayList;

    .line 2105
    .line 2106
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    .line 2108
    .line 2109
    const/4 v12, 0x0

    .line 2110
    :goto_2f
    if-ge v12, v1, :cond_4c

    .line 2111
    .line 2112
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v14

    .line 2116
    check-cast v14, Landroid/view/View;

    .line 2117
    .line 2118
    invoke-static {v14}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)Ljava/lang/String;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v15

    .line 2122
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    .line 2124
    .line 2125
    if-nez v15, :cond_49

    .line 2126
    .line 2127
    move/from16 v20, v1

    .line 2128
    .line 2129
    move-object/from16 v35, v6

    .line 2130
    .line 2131
    move-object/from16 v24, v9

    .line 2132
    .line 2133
    move-object/from16 v14, v34

    .line 2134
    .line 2135
    goto :goto_31

    .line 2136
    :cond_49
    move-object/from16 v35, v6

    .line 2137
    .line 2138
    const/4 v6, 0x0

    .line 2139
    invoke-static {v14, v6}, Landroidx/core/view/ViewCompat;->L(Landroid/view/View;Ljava/lang/String;)V

    .line 2140
    .line 2141
    .line 2142
    move-object/from16 v14, v34

    .line 2143
    .line 2144
    invoke-virtual {v14, v15}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v17

    .line 2148
    move-object/from16 v6, v17

    .line 2149
    .line 2150
    check-cast v6, Ljava/lang/String;

    .line 2151
    .line 2152
    move-object/from16 v24, v9

    .line 2153
    .line 2154
    const/4 v9, 0x0

    .line 2155
    :goto_30
    move/from16 v20, v1

    .line 2156
    .line 2157
    if-ge v9, v1, :cond_4b

    .line 2158
    .line 2159
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v1

    .line 2163
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2164
    .line 2165
    .line 2166
    move-result v1

    .line 2167
    if-eqz v1, :cond_4a

    .line 2168
    .line 2169
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v1

    .line 2173
    check-cast v1, Landroid/view/View;

    .line 2174
    .line 2175
    invoke-static {v1, v15}, Landroidx/core/view/ViewCompat;->L(Landroid/view/View;Ljava/lang/String;)V

    .line 2176
    .line 2177
    .line 2178
    goto :goto_31

    .line 2179
    :cond_4a
    add-int/lit8 v9, v9, 0x1

    .line 2180
    .line 2181
    move/from16 v1, v20

    .line 2182
    .line 2183
    goto :goto_30

    .line 2184
    :cond_4b
    :goto_31
    add-int/lit8 v12, v12, 0x1

    .line 2185
    .line 2186
    move-object/from16 v34, v14

    .line 2187
    .line 2188
    move/from16 v1, v20

    .line 2189
    .line 2190
    move-object/from16 v9, v24

    .line 2191
    .line 2192
    move-object/from16 v6, v35

    .line 2193
    .line 2194
    goto :goto_2f

    .line 2195
    :cond_4c
    move/from16 v20, v1

    .line 2196
    .line 2197
    move-object/from16 v35, v6

    .line 2198
    .line 2199
    move-object/from16 v24, v9

    .line 2200
    .line 2201
    new-instance v19, Landroidx/fragment/app/FragmentTransitionImpl$1;

    .line 2202
    .line 2203
    move-object/from16 v22, v5

    .line 2204
    .line 2205
    move-object/from16 v21, v11

    .line 2206
    .line 2207
    move-object/from16 v23, v35

    .line 2208
    .line 2209
    invoke-direct/range {v19 .. v24}, Landroidx/fragment/app/FragmentTransitionImpl$1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2210
    .line 2211
    .line 2212
    move-object/from16 v1, v19

    .line 2213
    .line 2214
    move-object/from16 v6, v23

    .line 2215
    .line 2216
    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2217
    .line 2218
    .line 2219
    const/4 v14, 0x0

    .line 2220
    invoke-static {v14, v2}, Landroidx/fragment/app/FragmentTransition;->c(ILjava/util/ArrayList;)V

    .line 2221
    .line 2222
    .line 2223
    invoke-virtual {v4, v3, v6, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2224
    .line 2225
    .line 2226
    :goto_32
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2227
    .line 2228
    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    .line 2229
    .line 2230
    .line 2231
    move-result v6

    .line 2232
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v9

    .line 2236
    new-instance v11, Ljava/util/ArrayList;

    .line 2237
    .line 2238
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2239
    .line 2240
    .line 2241
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    .line 2242
    .line 2243
    .line 2244
    move-result v12

    .line 2245
    move v1, v14

    .line 2246
    move v5, v1

    .line 2247
    :goto_33
    const-string v15, " has started."

    .line 2248
    .line 2249
    const-string v2, "context"

    .line 2250
    .line 2251
    if-ge v1, v12, :cond_55

    .line 2252
    .line 2253
    move-object/from16 v3, v26

    .line 2254
    .line 2255
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v4

    .line 2259
    add-int/lit8 v17, v1, 0x1

    .line 2260
    .line 2261
    check-cast v4, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 2262
    .line 2263
    invoke-virtual {v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b()Z

    .line 2264
    .line 2265
    .line 2266
    move-result v1

    .line 2267
    if-eqz v1, :cond_4d

    .line 2268
    .line 2269
    invoke-virtual {v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 2270
    .line 2271
    .line 2272
    :goto_34
    move/from16 v18, v5

    .line 2273
    .line 2274
    goto :goto_35

    .line 2275
    :cond_4d
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2276
    .line 2277
    .line 2278
    invoke-virtual {v4, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->c(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v1

    .line 2282
    if-nez v1, :cond_4e

    .line 2283
    .line 2284
    invoke-virtual {v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 2285
    .line 2286
    .line 2287
    goto :goto_34

    .line 2288
    :cond_4e
    iget-object v1, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->b:Landroid/animation/Animator;

    .line 2289
    .line 2290
    if-nez v1, :cond_4f

    .line 2291
    .line 2292
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2293
    .line 2294
    .line 2295
    goto :goto_34

    .line 2296
    :cond_4f
    move/from16 v18, v5

    .line 2297
    .line 2298
    move-object v5, v4

    .line 2299
    iget-object v4, v5, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2300
    .line 2301
    iget-object v2, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 2302
    .line 2303
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v14

    .line 2307
    move-object/from16 v20, v1

    .line 2308
    .line 2309
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2310
    .line 2311
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2312
    .line 2313
    .line 2314
    move-result v1

    .line 2315
    if-eqz v1, :cond_51

    .line 2316
    .line 2317
    const/16 v16, 0x2

    .line 2318
    .line 2319
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 2320
    .line 2321
    .line 2322
    move-result v1

    .line 2323
    if-eqz v1, :cond_50

    .line 2324
    .line 2325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2326
    .line 2327
    const-string v4, "Ignoring Animator set on "

    .line 2328
    .line 2329
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2330
    .line 2331
    .line 2332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2333
    .line 2334
    .line 2335
    const-string v2, " as this Fragment was involved in a Transition."

    .line 2336
    .line 2337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    .line 2339
    .line 2340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v1

    .line 2344
    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    .line 2346
    .line 2347
    :cond_50
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 2348
    .line 2349
    .line 2350
    :goto_35
    move-object/from16 v26, v3

    .line 2351
    .line 2352
    move/from16 v1, v17

    .line 2353
    .line 2354
    move/from16 v5, v18

    .line 2355
    .line 2356
    :goto_36
    const/4 v14, 0x0

    .line 2357
    goto :goto_33

    .line 2358
    :cond_51
    iget-object v1, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2359
    .line 2360
    move-object/from16 v26, v3

    .line 2361
    .line 2362
    if-ne v1, v7, :cond_52

    .line 2363
    .line 2364
    const/4 v3, 0x1

    .line 2365
    goto :goto_37

    .line 2366
    :cond_52
    const/4 v3, 0x0

    .line 2367
    :goto_37
    move-object/from16 v14, v28

    .line 2368
    .line 2369
    if-eqz v3, :cond_53

    .line 2370
    .line 2371
    invoke-interface {v14, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2372
    .line 2373
    .line 2374
    :cond_53
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2375
    .line 2376
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2377
    .line 2378
    .line 2379
    move-object v1, v0

    .line 2380
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;

    .line 2381
    .line 2382
    move/from16 p2, v6

    .line 2383
    .line 2384
    move-object/from16 v31, v7

    .line 2385
    .line 2386
    move-object/from16 v6, v20

    .line 2387
    .line 2388
    move-object v7, v1

    .line 2389
    move-object/from16 v1, p0

    .line 2390
    .line 2391
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 2392
    .line 2393
    .line 2394
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2395
    .line 2396
    .line 2397
    invoke-virtual {v6, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2398
    .line 2399
    .line 2400
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 2401
    .line 2402
    .line 2403
    const/16 v16, 0x2

    .line 2404
    .line 2405
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 2406
    .line 2407
    .line 2408
    move-result v0

    .line 2409
    if-eqz v0, :cond_54

    .line 2410
    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2412
    .line 2413
    const-string v2, "Animator from operation "

    .line 2414
    .line 2415
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2416
    .line 2417
    .line 2418
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2419
    .line 2420
    .line 2421
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    .line 2423
    .line 2424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2425
    .line 2426
    .line 2427
    move-result-object v0

    .line 2428
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    .line 2430
    .line 2431
    :cond_54
    iget-object v0, v5, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b:Landroidx/core/os/CancellationSignal;

    .line 2432
    .line 2433
    new-instance v2, Landroidx/fragment/app/b;

    .line 2434
    .line 2435
    invoke-direct {v2, v6, v4}, Landroidx/fragment/app/b;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {v0, v2}, Landroidx/core/os/CancellationSignal;->c(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 2439
    .line 2440
    .line 2441
    move/from16 v6, p2

    .line 2442
    .line 2443
    move-object v0, v7

    .line 2444
    move-object/from16 v28, v14

    .line 2445
    .line 2446
    move/from16 v1, v17

    .line 2447
    .line 2448
    move-object/from16 v7, v31

    .line 2449
    .line 2450
    const/4 v5, 0x1

    .line 2451
    goto :goto_36

    .line 2452
    :cond_55
    move-object/from16 v1, p0

    .line 2453
    .line 2454
    move-object v7, v0

    .line 2455
    move/from16 v18, v5

    .line 2456
    .line 2457
    move/from16 p2, v6

    .line 2458
    .line 2459
    move-object/from16 v14, v28

    .line 2460
    .line 2461
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2462
    .line 2463
    .line 2464
    move-result v0

    .line 2465
    const/4 v10, 0x0

    .line 2466
    :goto_38
    if-ge v10, v0, :cond_5e

    .line 2467
    .line 2468
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v3

    .line 2472
    add-int/lit8 v10, v10, 0x1

    .line 2473
    .line 2474
    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 2475
    .line 2476
    iget-object v4, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2477
    .line 2478
    iget-object v5, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 2479
    .line 2480
    const-string v6, "Ignoring Animation set on "

    .line 2481
    .line 2482
    if-eqz p2, :cond_57

    .line 2483
    .line 2484
    const/16 v16, 0x2

    .line 2485
    .line 2486
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 2487
    .line 2488
    .line 2489
    move-result v4

    .line 2490
    if-eqz v4, :cond_56

    .line 2491
    .line 2492
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2493
    .line 2494
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2495
    .line 2496
    .line 2497
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2498
    .line 2499
    .line 2500
    const-string v5, " as Animations cannot run alongside Transitions."

    .line 2501
    .line 2502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    .line 2504
    .line 2505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2506
    .line 2507
    .line 2508
    move-result-object v4

    .line 2509
    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    .line 2511
    .line 2512
    :cond_56
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 2513
    .line 2514
    .line 2515
    goto :goto_38

    .line 2516
    :cond_57
    if-eqz v18, :cond_59

    .line 2517
    .line 2518
    const/16 v16, 0x2

    .line 2519
    .line 2520
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 2521
    .line 2522
    .line 2523
    move-result v4

    .line 2524
    if-eqz v4, :cond_58

    .line 2525
    .line 2526
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2527
    .line 2528
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2529
    .line 2530
    .line 2531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2532
    .line 2533
    .line 2534
    const-string v5, " as Animations cannot run alongside Animators."

    .line 2535
    .line 2536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    .line 2538
    .line 2539
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v4

    .line 2543
    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    .line 2545
    .line 2546
    :cond_58
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 2547
    .line 2548
    .line 2549
    goto :goto_38

    .line 2550
    :cond_59
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2551
    .line 2552
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2553
    .line 2554
    .line 2555
    invoke-virtual {v3, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->c(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 2556
    .line 2557
    .line 2558
    move-result-object v6

    .line 2559
    const-string v12, "Required value was null."

    .line 2560
    .line 2561
    if-eqz v6, :cond_5d

    .line 2562
    .line 2563
    iget-object v6, v6, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->a:Landroid/view/animation/Animation;

    .line 2564
    .line 2565
    if-eqz v6, :cond_5c

    .line 2566
    .line 2567
    iget-object v12, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2568
    .line 2569
    move/from16 p1, v0

    .line 2570
    .line 2571
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->c:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2572
    .line 2573
    if-eq v12, v0, :cond_5a

    .line 2574
    .line 2575
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2576
    .line 2577
    .line 2578
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a()V

    .line 2579
    .line 2580
    .line 2581
    goto :goto_39

    .line 2582
    :cond_5a
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2583
    .line 2584
    .line 2585
    new-instance v0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    .line 2586
    .line 2587
    invoke-direct {v0, v6, v7, v5}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2588
    .line 2589
    .line 2590
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;

    .line 2591
    .line 2592
    invoke-direct {v6, v5, v3, v1, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;-><init>(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 2593
    .line 2594
    .line 2595
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2596
    .line 2597
    .line 2598
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2599
    .line 2600
    .line 2601
    const/16 v16, 0x2

    .line 2602
    .line 2603
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 2604
    .line 2605
    .line 2606
    move-result v0

    .line 2607
    if-eqz v0, :cond_5b

    .line 2608
    .line 2609
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2610
    .line 2611
    const-string v6, "Animation from operation "

    .line 2612
    .line 2613
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2614
    .line 2615
    .line 2616
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2617
    .line 2618
    .line 2619
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    .line 2621
    .line 2622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v0

    .line 2626
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    .line 2628
    .line 2629
    :cond_5b
    :goto_39
    iget-object v0, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->b:Landroidx/core/os/CancellationSignal;

    .line 2630
    .line 2631
    new-instance v6, Landroidx/fragment/app/c;

    .line 2632
    .line 2633
    invoke-direct {v6, v5, v3, v1, v4}, Landroidx/fragment/app/c;-><init>(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v0, v6}, Landroidx/core/os/CancellationSignal;->c(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 2637
    .line 2638
    .line 2639
    move/from16 v0, p1

    .line 2640
    .line 2641
    goto/16 :goto_38

    .line 2642
    .line 2643
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2644
    .line 2645
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2646
    .line 2647
    .line 2648
    throw v0

    .line 2649
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2650
    .line 2651
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2652
    .line 2653
    .line 2654
    throw v0

    .line 2655
    :cond_5e
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2656
    .line 2657
    .line 2658
    move-result-object v0

    .line 2659
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2660
    .line 2661
    .line 2662
    move-result v2

    .line 2663
    if-eqz v2, :cond_5f

    .line 2664
    .line 2665
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v2

    .line 2669
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2670
    .line 2671
    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 2672
    .line 2673
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2674
    .line 2675
    iget-object v2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2676
    .line 2677
    const-string v4, "view"

    .line 2678
    .line 2679
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2680
    .line 2681
    .line 2682
    invoke-virtual {v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a(Landroid/view/View;)V

    .line 2683
    .line 2684
    .line 2685
    goto :goto_3a

    .line 2686
    :cond_5f
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 2687
    .line 2688
    .line 2689
    const/16 v16, 0x2

    .line 2690
    .line 2691
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/FragmentManager;->J(I)Z

    .line 2692
    .line 2693
    .line 2694
    move-result v0

    .line 2695
    if-eqz v0, :cond_60

    .line 2696
    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2698
    .line 2699
    const-string v2, "Completed executing operations from "

    .line 2700
    .line 2701
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2702
    .line 2703
    .line 2704
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2705
    .line 2706
    .line 2707
    move-object/from16 v2, v25

    .line 2708
    .line 2709
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    .line 2711
    .line 2712
    move-object/from16 v15, v37

    .line 2713
    .line 2714
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2715
    .line 2716
    .line 2717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2718
    .line 2719
    .line 2720
    move-result-object v0

    .line 2721
    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    .line 2723
    .line 2724
    :cond_60
    return-void
.end method
