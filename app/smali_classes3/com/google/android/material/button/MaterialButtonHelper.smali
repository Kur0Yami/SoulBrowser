.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

.field public d:Landroidx/dynamicanimation/animation/SpringForce;

.field public e:Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/PorterDuff$Mode;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/content/res/ColorStateList;

.field public p:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Landroid/graphics/drawable/RippleDrawable;

.field public w:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->q:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->r:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->s:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->u:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final b(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->h:I

    .line 20
    .line 21
    iget v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->i:I

    .line 22
    .line 23
    iput p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->i:I

    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->h:I

    .line 26
    .line 27
    iget-boolean v7, p0, Lcom/google/android/material/button/MaterialButtonHelper;->r:Z

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->c()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/2addr v2, p1

    .line 35
    sub-int/2addr v2, v5

    .line 36
    add-int/2addr v4, p2

    .line 37
    sub-int/2addr v4, v6

    .line 38
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->e:Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iput-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->I:Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->l(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->m:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->l:Landroid/graphics/PorterDuff$Mode;

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->n:Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    iget-object v4, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 55
    .line 56
    iput v2, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->k:F

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 62
    .line 63
    iget-object v4, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 64
    .line 65
    if-eq v4, v3, :cond_4

    .line 66
    .line 67
    iput-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 79
    .line 80
    invoke-direct {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    .line 91
    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 99
    .line 100
    .line 101
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    .line 102
    .line 103
    int-to-float v4, v4

    .line 104
    iget-boolean v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->q:Z

    .line 105
    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 109
    .line 110
    invoke-static {v1, v5}, Lcom/google/android/material/color/MaterialColors;->c(Landroid/view/View;I)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    move v5, v3

    .line 116
    :goto_0
    iget-object v6, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 117
    .line 118
    iput v4, v6, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->k:F

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 121
    .line 122
    .line 123
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iget-object v5, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 128
    .line 129
    iget-object v6, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 130
    .line 131
    if-eq v6, v4, :cond_8

    .line 132
    .line 133
    iput-object v4, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 140
    .line 141
    .line 142
    :cond_8
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 145
    .line 146
    invoke-direct {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 147
    .line 148
    .line 149
    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 150
    .line 151
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 152
    .line 153
    if-eqz v5, :cond_9

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    .line 159
    .line 160
    if-eqz v4, :cond_a

    .line 161
    .line 162
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 163
    .line 164
    invoke-virtual {v5, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 168
    .line 169
    const/4 v5, -0x1

    .line 170
    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 171
    .line 172
    .line 173
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 174
    .line 175
    iget-object v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->o:Landroid/content/res/ColorStateList;

    .line 176
    .line 177
    invoke-static {v5}, Lcom/google/android/material/ripple/RippleUtils;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 182
    .line 183
    const/4 v6, 0x2

    .line 184
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    aput-object v2, v6, v3

    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    aput-object v0, v6, v2

    .line 190
    .line 191
    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 192
    .line 193
    .line 194
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    .line 195
    .line 196
    iget v8, p0, Lcom/google/android/material/button/MaterialButtonHelper;->f:I

    .line 197
    .line 198
    iget v9, p0, Lcom/google/android/material/button/MaterialButtonHelper;->h:I

    .line 199
    .line 200
    iget v10, p0, Lcom/google/android/material/button/MaterialButtonHelper;->g:I

    .line 201
    .line 202
    iget v11, p0, Lcom/google/android/material/button/MaterialButtonHelper;->i:I

    .line 203
    .line 204
    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->p:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 208
    .line 209
    invoke-direct {v4, v5, v6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 210
    .line 211
    .line 212
    iput-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 213
    .line 214
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->w:I

    .line 224
    .line 225
    int-to-float v2, v2

    .line 226
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->n(F)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 234
    .line 235
    .line 236
    :cond_b
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-le v1, v0, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x2

    .line 72
    if-le v1, v2, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->v:Landroid/graphics/drawable/RippleDrawable;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    const/4 v0, 0x0

    .line 93
    :goto_2
    if-eqz v0, :cond_7

    .line 94
    .line 95
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 98
    .line 99
    .line 100
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->c:Lcom/google/android/material/shape/StateListShapeAppearanceModel;

    .line 107
    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->d:Landroidx/dynamicanimation/animation/SpringForce;

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonHelper;->a(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->n:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    iget-object v5, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 19
    .line 20
    iput v3, v5, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->k:F

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 26
    .line 27
    iget-object v5, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    if-eq v5, v4, :cond_0

    .line 30
    .line 31
    iput-object v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->k:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    iget-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->q:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->a:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 52
    .line 53
    invoke-static {v0, v3}, Lcom/google/android/material/color/MaterialColors;->c(Landroid/view/View;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_1
    iget-object v3, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 58
    .line 59
    iput v1, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->k:F

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->f:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 69
    .line 70
    iget-object v3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    if-eq v3, v0, :cond_2

    .line 73
    .line 74
    iput-object v0, v1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->e:Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
