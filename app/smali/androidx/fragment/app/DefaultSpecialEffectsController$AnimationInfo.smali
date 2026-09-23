.class final Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;",
        "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;",
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


# instance fields
.field public final c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V
    .locals 1

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "signal"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 12
    .line 13
    .line 14
    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->c:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->d:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->e:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 18
    .line 19
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->f:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    move v0, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v3

    .line 28
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-boolean v5, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->c:Z

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    :goto_1
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    sget v7, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 68
    .line 69
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 76
    .line 77
    sget v7, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 78
    .line 79
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_6
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    new-instance v6, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 101
    .line 102
    invoke-direct {v6, v3}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_7
    invoke-virtual {v1, v2, v0, v5}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    new-instance v6, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 114
    .line 115
    invoke-direct {v6, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_8
    if-nez v5, :cond_13

    .line 121
    .line 122
    if-eqz v2, :cond_13

    .line 123
    .line 124
    const/16 v1, 0x1001

    .line 125
    .line 126
    if-eq v2, v1, :cond_11

    .line 127
    .line 128
    const/16 v1, 0x2002

    .line 129
    .line 130
    if-eq v2, v1, :cond_f

    .line 131
    .line 132
    const/16 v1, 0x2005

    .line 133
    .line 134
    if-eq v2, v1, :cond_d

    .line 135
    .line 136
    const/16 v1, 0x1003

    .line 137
    .line 138
    if-eq v2, v1, :cond_b

    .line 139
    .line 140
    const/16 v1, 0x1004

    .line 141
    .line 142
    if-eq v2, v1, :cond_9

    .line 143
    .line 144
    const/4 v0, -0x1

    .line 145
    :goto_2
    move v5, v0

    .line 146
    goto :goto_3

    .line 147
    :cond_9
    if-eqz v0, :cond_a

    .line 148
    .line 149
    const v0, 0x10100b8

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->a(Landroid/content/Context;I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    goto :goto_2

    .line 157
    :cond_a
    const v0, 0x10100b9

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->a(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    goto :goto_2

    .line 165
    :cond_b
    if-eqz v0, :cond_c

    .line 166
    .line 167
    sget v0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_c
    sget v0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_d
    if-eqz v0, :cond_e

    .line 174
    .line 175
    const v0, 0x10100ba

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->a(Landroid/content/Context;I)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    goto :goto_2

    .line 183
    :cond_e
    const v0, 0x10100bb

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->a(Landroid/content/Context;I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    goto :goto_2

    .line 191
    :cond_f
    if-eqz v0, :cond_10

    .line 192
    .line 193
    sget v0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_10
    sget v0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_11
    if-eqz v0, :cond_12

    .line 200
    .line 201
    sget v0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_12
    sget v0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_13
    :goto_3
    if-eqz v5, :cond_16

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "anim"

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_14

    .line 224
    .line 225
    :try_start_0
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-eqz v1, :cond_16

    .line 230
    .line 231
    new-instance v2, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 232
    .line 233
    invoke-direct {v2, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .line 235
    .line 236
    :goto_4
    move-object v6, v2

    .line 237
    goto :goto_5

    .line 238
    :catch_0
    move-exception p1

    .line 239
    throw p1

    .line 240
    :catch_1
    :cond_14
    :try_start_1
    invoke-static {p1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    if-eqz v1, :cond_16

    .line 245
    .line 246
    new-instance v2, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 247
    .line 248
    invoke-direct {v2, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :catch_2
    move-exception v1

    .line 253
    if-nez v0, :cond_15

    .line 254
    .line 255
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_16

    .line 260
    .line 261
    new-instance v6, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 262
    .line 263
    invoke-direct {v6, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_15
    throw v1

    .line 268
    :cond_16
    :goto_5
    iput-object v6, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->e:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 269
    .line 270
    iput-boolean v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->d:Z

    .line 271
    .line 272
    return-object v6
.end method
