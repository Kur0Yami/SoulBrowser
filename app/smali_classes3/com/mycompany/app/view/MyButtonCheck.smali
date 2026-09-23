.class public Lcom/mycompany/app/view/MyButtonCheck;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/drawable/Drawable;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Landroid/animation/ValueAnimator;

.field public F:Landroid/animation/ValueAnimator;

.field public G:F

.field public H:Landroid/graphics/Paint;

.field public I:F

.field public J:F

.field public K:Z

.field public L:F

.field public M:F

.field public N:Z

.field public O:Landroid/view/View$OnClickListener;

.field public P:Landroid/view/View$OnLongClickListener;

.field public Q:Landroid/animation/ValueAnimator;

.field public R:Landroid/animation/ValueAnimator;

.field public S:Z

.field public T:F

.field public U:Z

.field public final V:Ljava/lang/Runnable;

.field public W:F

.field public a0:Z

.field public final b0:Ljava/lang/Runnable;

.field public c:Z

.field public c0:F

.field public d0:Z

.field public final e0:Ljava/lang/Runnable;

.field public final f:Landroid/content/Context;

.field public f0:F

.field public g:Z

.field public g0:Z

.field public h:F

.field public final h0:Ljava/lang/Runnable;

.field public i:I

.field public i0:F

.field public j:I

.field public j0:Z

.field public k:Landroid/graphics/Paint;

.field public final k0:Ljava/lang/Runnable;

.field public l:Z

.field public l0:F

.field public m:F

.field public m0:Z

.field public n:I

.field public final n0:Ljava/lang/Runnable;

.field public o:I

.field public p:Landroid/graphics/Paint;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/animation/ValueAnimator;

.field public s:F

.field public t:I

.field public u:I

.field public v:Landroid/graphics/Paint;

.field public w:I

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$3;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->V:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$7;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$7;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->b0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$11;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$11;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->e0:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$15;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$15;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->h0:Ljava/lang/Runnable;

    .line 31
    .line 32
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$19;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$19;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->k0:Ljava/lang/Runnable;

    .line 38
    .line 39
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$23;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$23;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->n0:Ljava/lang/Runnable;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->c:Z

    .line 48
    .line 49
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 50
    .line 51
    sget p1, Lcom/mycompany/app/main/MainApp;->X0:I

    .line 52
    .line 53
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const/4 v1, -0x1

    .line 62
    if-ne p1, v1, :cond_0

    .line 63
    .line 64
    const/high16 p1, -0x1000000

    .line 65
    .line 66
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 67
    .line 68
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 79
    .line 80
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 86
    .line 87
    iget v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 99
    .line 100
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    const v1, -0x1f1f20

    .line 109
    .line 110
    .line 111
    if-eq p1, v1, :cond_2

    .line 112
    .line 113
    const/high16 v1, 0x21000000

    .line 114
    .line 115
    if-ne p1, v1, :cond_3

    .line 116
    .line 117
    :cond_2
    const p1, -0xc0c0c1

    .line 118
    .line 119
    .line 120
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 121
    .line 122
    :cond_3
    new-instance p1, Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 133
    .line 134
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 140
    .line 141
    iget v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->o:I

    .line 153
    .line 154
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 155
    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 159
    .line 160
    if-nez v1, :cond_5

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 164
    .line 165
    if-ne p1, v1, :cond_6

    .line 166
    .line 167
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_6
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 171
    .line 172
    if-ne p1, v1, :cond_7

    .line 173
    .line 174
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_7
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 178
    .line 179
    if-ne p1, v1, :cond_8

    .line 180
    .line 181
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 182
    .line 183
    :cond_8
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 184
    .line 185
    iget-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 192
    .line 193
    :cond_9
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 194
    .line 195
    if-eqz p1, :cond_e

    .line 196
    .line 197
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 198
    .line 199
    if-nez v1, :cond_a

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 203
    .line 204
    if-ne p1, v1, :cond_b

    .line 205
    .line 206
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_b
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 210
    .line 211
    if-ne p1, v1, :cond_c

    .line 212
    .line 213
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_c
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 217
    .line 218
    if-ne p1, v1, :cond_d

    .line 219
    .line 220
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 221
    .line 222
    :cond_d
    :goto_1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 223
    .line 224
    iget-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 225
    .line 226
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 231
    .line 232
    :cond_e
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 233
    .line 234
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 235
    .line 236
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyButtonCheck;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyButtonCheck;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyButtonCheck;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setValAnimShow(F)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/view/MyButtonCheck;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setValCheckScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/view/MyButtonCheck;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setValCheckScaleUp(F)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/mycompany/app/view/MyButtonCheck;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/mycompany/app/view/MyButtonCheck;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setValPreScaleUp(F)V

    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setValCheckScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValCheckScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->l0:F

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->m0:Z

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    new-array v2, v2, [F

    .line 34
    .line 35
    aput v0, v2, v1

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v3, 0x1

    .line 39
    aput v1, v2, v3

    .line 40
    .line 41
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    const/high16 v2, 0x43c80000    # 400.0f

    .line 48
    .line 49
    mul-float/2addr v0, v2

    .line 50
    float-to-long v2, v0

    .line 51
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$21;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$21;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$22;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$22;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v0, 0x0

    .line 36
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    const v1, 0x3ecccccd    # 0.4f

    .line 47
    .line 48
    .line 49
    :goto_2
    cmpl-float v3, v0, v1

    .line 50
    .line 51
    if-ltz v3, :cond_5

    .line 52
    .line 53
    :goto_3
    return-void

    .line 54
    :cond_5
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i0:F

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->j0:Z

    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    new-array v4, v4, [F

    .line 61
    .line 62
    aput v0, v4, v3

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    aput v1, v4, v3

    .line 66
    .line 67
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    sub-float/2addr v2, v0

    .line 74
    const/high16 v0, 0x43c80000    # 400.0f

    .line 75
    .line 76
    mul-float/2addr v2, v0

    .line 77
    float-to-long v2, v2

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$17;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$17;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$18;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$18;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->isPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    :cond_5
    return-void
.end method

.method public final k(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->C:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sub-int v4, v0, v2

    .line 38
    .line 39
    div-int/lit8 v4, v4, 0x2

    .line 40
    .line 41
    sub-int v5, v1, v3

    .line 42
    .line 43
    div-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    add-int/2addr v2, v4

    .line 46
    add-int/2addr v3, v5

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    sub-int/2addr v0, v6

    .line 68
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    sub-int/2addr v1, v2

    .line 77
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->O:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->P:Landroid/view/View$OnLongClickListener;

    .line 23
    .line 24
    return-void
.end method

.method public final m(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    move p1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 50
    .line 51
    if-eq v0, p2, :cond_3

    .line 52
    .line 53
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    new-instance p1, Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 68
    .line 69
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 75
    .line 76
    iget p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->o:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move v2, p1

    .line 94
    :goto_2
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final n(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->u:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->t:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->u:I

    .line 12
    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->t:I

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 31
    .line 32
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->t:I

    .line 40
    .line 41
    int-to-float p2, p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 46
    .line 47
    iget p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->u:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final o(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->h:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->g:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->m:F

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->l:Z

    .line 9
    .line 10
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->j()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v4, 0x40a00000    # 5.0f

    .line 28
    .line 29
    const/high16 v5, 0x3f800000    # 1.0f

    .line 30
    .line 31
    if-eqz v3, :cond_5

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 39
    .line 40
    sub-float v6, v5, v6

    .line 41
    .line 42
    mul-float/2addr v6, v3

    .line 43
    mul-float/2addr v6, v4

    .line 44
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 49
    .line 50
    if-le v3, v6, :cond_3

    .line 51
    .line 52
    move v3, v6

    .line 53
    :cond_3
    iget-object v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    .line 57
    .line 58
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 59
    .line 60
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 61
    .line 62
    iget v7, p0, Lcom/mycompany/app/view/MyButtonCheck;->h:F

    .line 63
    .line 64
    iget-object v8, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 71
    .line 72
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    .line 74
    .line 75
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 76
    .line 77
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 78
    .line 79
    iget v7, p0, Lcom/mycompany/app/view/MyButtonCheck;->h:F

    .line 80
    .line 81
    iget-object v8, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->o:I

    .line 93
    .line 94
    int-to-float v3, v3

    .line 95
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 96
    .line 97
    const v7, 0x3f4ccccd    # 0.8f

    .line 98
    .line 99
    .line 100
    sub-float/2addr v6, v7

    .line 101
    mul-float/2addr v6, v3

    .line 102
    mul-float/2addr v6, v4

    .line 103
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    .line 112
    .line 113
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 114
    .line 115
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 116
    .line 117
    iget v4, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 118
    .line 119
    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 123
    .line 124
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 125
    .line 126
    iget v4, p0, Lcom/mycompany/app/view/MyButtonCheck;->m:F

    .line 127
    .line 128
    iget-object v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {p1, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    move v0, v1

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    move v0, v2

    .line 136
    :goto_3
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->v:Landroid/graphics/Paint;

    .line 137
    .line 138
    if-eqz v3, :cond_8

    .line 139
    .line 140
    iget v4, p0, Lcom/mycompany/app/view/MyButtonCheck;->t:I

    .line 141
    .line 142
    int-to-float v4, v4

    .line 143
    const/high16 v6, 0x40000000    # 2.0f

    .line 144
    .line 145
    div-float/2addr v4, v6

    .line 146
    iget v6, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 147
    .line 148
    iget v7, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget v8, p0, Lcom/mycompany/app/view/MyButtonCheck;->m:F

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    iget v8, p0, Lcom/mycompany/app/view/MyButtonCheck;->h:F

    .line 156
    .line 157
    :goto_4
    sub-float/2addr v8, v4

    .line 158
    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    if-eqz v0, :cond_9

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    .line 171
    .line 172
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 173
    .line 174
    if-nez v0, :cond_b

    .line 175
    .line 176
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_a
    move v1, v2

    .line 182
    :cond_b
    :goto_6
    if-nez v1, :cond_d

    .line 183
    .line 184
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 185
    .line 186
    if-eqz v0, :cond_c

    .line 187
    .line 188
    iput v5, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_c
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 193
    .line 194
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    if-eqz v0, :cond_f

    .line 197
    .line 198
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 199
    .line 200
    if-eqz v3, :cond_e

    .line 201
    .line 202
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonCheck;->k(Landroid/graphics/drawable/Drawable;)V

    .line 205
    .line 206
    .line 207
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    .line 211
    .line 212
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    if-eqz v0, :cond_12

    .line 215
    .line 216
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 217
    .line 218
    if-eqz v3, :cond_10

    .line 219
    .line 220
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonCheck;->k(Landroid/graphics/drawable/Drawable;)V

    .line 223
    .line 224
    .line 225
    :cond_10
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 226
    .line 227
    if-nez v0, :cond_11

    .line 228
    .line 229
    if-eqz v1, :cond_12

    .line 230
    .line 231
    :cond_11
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 232
    .line 233
    iget v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 234
    .line 235
    iget v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 236
    .line 237
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    .line 244
    .line 245
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 246
    .line 247
    if-eqz v0, :cond_14

    .line 248
    .line 249
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->K:Z

    .line 250
    .line 251
    if-eqz v1, :cond_13

    .line 252
    .line 253
    iget v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 254
    .line 255
    iget v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->J:F

    .line 256
    .line 257
    add-float/2addr v1, v2

    .line 258
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 259
    .line 260
    sub-float/2addr v3, v2

    .line 261
    iget v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->I:F

    .line 262
    .line 263
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_13
    iget v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 268
    .line 269
    iget v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->J:F

    .line 270
    .line 271
    sub-float/2addr v1, v2

    .line 272
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 273
    .line 274
    sub-float/2addr v3, v2

    .line 275
    iget v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->I:F

    .line 276
    .line 277
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 278
    .line 279
    .line 280
    :cond_14
    :goto_8
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 8
    .line 9
    int-to-float p1, p1

    .line 10
    const/high16 p3, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr p1, p3

    .line 13
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->L:F

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    div-float/2addr p2, p3

    .line 17
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->M:F

    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->g:Z

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    sub-float p2, p1, p2

    .line 25
    .line 26
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->h:F

    .line 27
    .line 28
    :cond_0
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->l:Z

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->m:F

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->O:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_a

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 42
    .line 43
    if-eqz v0, :cond_9

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    float-to-int v2, v2

    .line 55
    sget v3, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 56
    .line 57
    invoke-static {v0, v2, v3, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_9

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->s()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->O:Landroid/view/View$OnClickListener;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck$27;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonCheck$27;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->s()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->S:Z

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    float-to-int v0, v0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    float-to-int v4, v4

    .line 110
    sget v5, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 111
    .line 112
    invoke-static {v0, v4, v5, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    const v0, 0x3f4ccccd    # 0.8f

    .line 132
    .line 133
    .line 134
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 135
    .line 136
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->T:F

    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->U:Z

    .line 139
    .line 140
    new-array v0, v2, [F

    .line 141
    .line 142
    fill-array-data v0, :array_0

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    const-wide/16 v1, 0xc8

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 162
    .line 163
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$1;

    .line 164
    .line 165
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$1;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 172
    .line 173
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$2;

    .line 174
    .line 175
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$2;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 182
    .line 183
    if-eqz v0, :cond_8

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 186
    .line 187
    .line 188
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 191
    .line 192
    .line 193
    :cond_9
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    return p1

    .line 198
    :cond_a
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 199
    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    return p1

    .line 205
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 11
    .line 12
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 18
    .line 19
    if-eq v3, p1, :cond_2

    .line 20
    .line 21
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v3, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    :goto_0
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 37
    .line 38
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 45
    .line 46
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 52
    .line 53
    if-eq p1, p2, :cond_5

    .line 54
    .line 55
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 56
    .line 57
    if-nez p2, :cond_4

    .line 58
    .line 59
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    :goto_2
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 71
    .line 72
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    return-void

    .line 82
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final q(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 7
    .line 8
    if-eqz p2, :cond_8

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    const/4 v0, 0x2

    .line 12
    const-wide/16 v1, 0xc8

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->c0:F

    .line 32
    .line 33
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->d0:Z

    .line 34
    .line 35
    new-array v0, v0, [F

    .line 36
    .line 37
    aput p1, v0, v3

    .line 38
    .line 39
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    aput p1, v0, p2

    .line 42
    .line 43
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    new-instance p2, Lcom/mycompany/app/view/MyButtonCheck$9;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyButtonCheck$9;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    new-instance p2, Lcom/mycompany/app/view/MyButtonCheck$10;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyButtonCheck$10;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    if-nez p1, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    iget p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->G:F

    .line 101
    .line 102
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->f0:F

    .line 103
    .line 104
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->g0:Z

    .line 105
    .line 106
    new-array v0, v0, [F

    .line 107
    .line 108
    aput p1, v0, v3

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    aput p1, v0, p2

    .line 112
    .line 113
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    new-instance p2, Lcom/mycompany/app/view/MyButtonCheck$13;

    .line 130
    .line 131
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyButtonCheck$13;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    new-instance p2, Lcom/mycompany/app/view/MyButtonCheck$14;

    .line 140
    .line 141
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyButtonCheck$14;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->E:Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 152
    .line 153
    .line 154
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->F:Landroid/animation/ValueAnimator;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 157
    .line 158
    .line 159
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final r(III)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, p1, :cond_1

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 23
    .line 24
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 30
    .line 31
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 46
    .line 47
    :goto_0
    move p1, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move p1, v1

    .line 50
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iput v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 55
    .line 56
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 57
    .line 58
    move p1, v3

    .line 59
    :cond_2
    if-nez p2, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iput v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 66
    .line 67
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 73
    .line 74
    if-eq v0, p2, :cond_5

    .line 75
    .line 76
    iput p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->w:I

    .line 77
    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iput-object p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->x:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    :goto_2
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 92
    .line 93
    :cond_5
    :goto_3
    if-nez p3, :cond_6

    .line 94
    .line 95
    iget-object p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    iput v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 100
    .line 101
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    iget p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 107
    .line 108
    if-eq p2, p3, :cond_8

    .line 109
    .line 110
    iput p3, p0, Lcom/mycompany/app/view/MyButtonCheck;->z:I

    .line 111
    .line 112
    if-nez p3, :cond_7

    .line 113
    .line 114
    iput-object v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->f:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iput-object p2, p0, Lcom/mycompany/app/view/MyButtonCheck;->A:Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    :goto_4
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 126
    .line 127
    :cond_8
    :goto_5
    if-nez p1, :cond_a

    .line 128
    .line 129
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 130
    .line 131
    if-nez p1, :cond_a

    .line 132
    .line 133
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 134
    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_9
    return-void

    .line 139
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->s:F

    .line 12
    .line 13
    const v1, 0x3f4ccccd    # 0.8f

    .line 14
    .line 15
    .line 16
    cmpg-float v2, v0, v1

    .line 17
    .line 18
    if-gtz v2, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->W:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonCheck;->a0:Z

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [F

    .line 28
    .line 29
    aput v0, v3, v2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput v1, v3, v0

    .line 33
    .line 34
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$5;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$5;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck$6;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonCheck$6;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->q:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->r:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public setBgNorColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->i:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->j:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->k:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setBgNorRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->h:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->g:Z

    .line 5
    .line 6
    return-void
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->n:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->o:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->p:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setCheckArea(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->S:Z

    .line 2
    .line 3
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setFullSize(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->C:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->C:Z

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->y:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->B:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setNoti(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v0, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->K:Z

    .line 41
    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->I:F

    .line 49
    .line 50
    const/high16 v0, 0x41100000    # 9.0f

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->J:F

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->H:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->O:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonCheck$25;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->P:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonCheck$26;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonCheck$26;-><init>(Lcom/mycompany/app/view/MyButtonCheck;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->Q:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonCheck;->R:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonCheck;->N:Z

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->invalidate()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public final t(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->i()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    if-eqz p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonCheck;->h()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const/16 p1, 0x8

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
