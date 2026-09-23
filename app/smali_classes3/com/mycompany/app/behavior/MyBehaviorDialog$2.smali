.class Lcom/mycompany/app/behavior/MyBehaviorDialog$2;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/behavior/MyBehaviorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/behavior/MyBehaviorDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final b(Landroid/view/View;I)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget p1, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 15
    .line 16
    :goto_0
    invoke-static {p2, v0, p1}, Landroidx/core/math/MathUtils;->b(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 11
    .line 12
    return v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Landroid/view/View;FF)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p3, v0

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x3

    .line 7
    iget-object v5, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 8
    .line 9
    if-gez v1, :cond_2

    .line 10
    .line 11
    iget-boolean p2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 16
    .line 17
    :cond_0
    :goto_0
    move v3, v4

    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 25
    .line 26
    if-le p2, p3, :cond_0

    .line 27
    .line 28
    move v2, p3

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_2
    iget-boolean v1, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 32
    .line 33
    if-eqz v1, :cond_9

    .line 34
    .line 35
    invoke-virtual {v5, p1, p3}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F(Landroid/view/View;F)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_9

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    cmpg-float p2, p2, v0

    .line 50
    .line 51
    if-gez p2, :cond_3

    .line 52
    .line 53
    const/high16 p2, 0x43fa0000    # 500.0f

    .line 54
    .line 55
    cmpl-float p2, p3, p2

    .line 56
    .line 57
    if-gtz p2, :cond_5

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iget p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 64
    .line 65
    iget v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->A:I

    .line 66
    .line 67
    if-ne p3, v0, :cond_4

    .line 68
    .line 69
    iget-boolean v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B:I

    .line 74
    .line 75
    if-le p2, v0, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v5}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    add-int/2addr v0, p3

    .line 83
    div-int/lit8 v0, v0, 0x2

    .line 84
    .line 85
    if-le p2, v0, :cond_6

    .line 86
    .line 87
    :cond_5
    :goto_1
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 88
    .line 89
    const/4 v3, 0x5

    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :cond_6
    iget-boolean p2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 93
    .line 94
    if-eqz p2, :cond_7

    .line 95
    .line 96
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    iget v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 112
    .line 113
    sub-int/2addr p3, v0

    .line 114
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    if-ge p2, p3, :cond_8

    .line 119
    .line 120
    :goto_2
    goto :goto_0

    .line 121
    :cond_8
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_9
    iget-boolean v1, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 126
    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    iget-boolean p2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 130
    .line 131
    if-eqz p2, :cond_0

    .line 132
    .line 133
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_a
    cmpl-float v0, p3, v0

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    if-eqz v0, :cond_e

    .line 140
    .line 141
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    cmpl-float p2, p2, p3

    .line 150
    .line 151
    if-lez p2, :cond_b

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    iget-boolean p2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 155
    .line 156
    if-eqz p2, :cond_c

    .line 157
    .line 158
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 159
    .line 160
    :goto_3
    move v3, v1

    .line 161
    goto :goto_5

    .line 162
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    iget p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 167
    .line 168
    sub-int p3, p2, p3

    .line 169
    .line 170
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    iget v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 175
    .line 176
    sub-int/2addr p2, v0

    .line 177
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-ge p3, p2, :cond_d

    .line 182
    .line 183
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_d
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_e
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    iget-boolean p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 194
    .line 195
    if-eqz p3, :cond_10

    .line 196
    .line 197
    iget p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 198
    .line 199
    sub-int p3, p2, p3

    .line 200
    .line 201
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 202
    .line 203
    .line 204
    move-result p3

    .line 205
    iget v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 206
    .line 207
    sub-int/2addr p2, v0

    .line 208
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-ge p3, p2, :cond_f

    .line 213
    .line 214
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_f
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_10
    iget p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 222
    .line 223
    if-ge p2, p3, :cond_12

    .line 224
    .line 225
    iget p3, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 226
    .line 227
    sub-int p3, p2, p3

    .line 228
    .line 229
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    if-ge p2, p3, :cond_11

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_11
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_12
    sub-int p3, p2, p3

    .line 240
    .line 241
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    iget v0, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 246
    .line 247
    sub-int/2addr p2, v0

    .line 248
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-ge p3, p2, :cond_13

    .line 253
    .line 254
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_13
    iget v2, v5, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :goto_5
    const/4 p2, 0x1

    .line 261
    invoke-virtual {v5, p1, v3, v2, p2}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G(Landroid/view/View;IIZ)V

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method public final i(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;->a:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-boolean v3, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->J:Z

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v3, 0x3

    .line 15
    if-ne v1, v3, :cond_3

    .line 16
    .line 17
    iget v1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 18
    .line 19
    if-ne v1, p2, :cond_3

    .line 20
    .line 21
    iget-object p2, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/view/View;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p2, 0x0

    .line 33
    :goto_0
    if-eqz p2, :cond_3

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget-object p2, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-ne p2, p1, :cond_4

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 55
    return p1
.end method
