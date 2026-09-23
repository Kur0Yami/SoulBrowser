.class Lcom/mycompany/app/dialog/DialogEditUp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$7;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$7;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 20
    .line 21
    iget v2, p1, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 22
    .line 23
    iget v3, p1, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 24
    .line 25
    iget v4, p1, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_dark_24:I

    .line 43
    .line 44
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput-object v4, v0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    const v5, -0x1e1e1f

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 54
    .line 55
    .line 56
    const v4, -0x3f8a8a8b

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_black_24:I

    .line 65
    .line 66
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iput-object v4, v0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    const v4, -0x7f8a8a8b

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object v5, v0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    if-nez v5, :cond_2

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_2
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 82
    .line 83
    int-to-float v5, v5

    .line 84
    iput v5, v0, Lcom/mycompany/app/view/MyMoveFrame;->g:F

    .line 85
    .line 86
    new-instance v5, Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v5, v0, Lcom/mycompany/app/view/MyMoveFrame;->h:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v5, v0, Lcom/mycompany/app/view/MyMoveFrame;->h:Landroid/graphics/Paint;

    .line 97
    .line 98
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    .line 102
    .line 103
    iget-object v5, v0, Lcom/mycompany/app/view/MyMoveFrame;->h:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 119
    .line 120
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 121
    .line 122
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 126
    .line 127
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 128
    .line 129
    int-to-float v5, v5

    .line 130
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    .line 132
    .line 133
    iget-object v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iput v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iput v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->o:I

    .line 149
    .line 150
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 151
    .line 152
    iput v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->p:I

    .line 153
    .line 154
    iput v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->q:I

    .line 155
    .line 156
    const/high16 v4, 0x40000000    # 2.0f

    .line 157
    .line 158
    if-ne v2, v1, :cond_3

    .line 159
    .line 160
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 161
    .line 162
    iput v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    const/4 v5, 0x3

    .line 166
    if-ne v2, v5, :cond_4

    .line 167
    .line 168
    iget v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 169
    .line 170
    sub-int/2addr v2, v3

    .line 171
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 172
    .line 173
    sub-int/2addr v2, v3

    .line 174
    iput v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    iget v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 178
    .line 179
    sub-int/2addr v2, v3

    .line 180
    int-to-float v2, v2

    .line 181
    div-float/2addr v2, v4

    .line 182
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iput v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 187
    .line 188
    :goto_1
    iget v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->o:I

    .line 189
    .line 190
    iget v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->q:I

    .line 191
    .line 192
    sub-int/2addr v2, v3

    .line 193
    int-to-float v2, v2

    .line 194
    div-float/2addr v2, v4

    .line 195
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    iput v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->s:I

    .line 200
    .line 201
    iget v3, v0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 202
    .line 203
    iget v4, v0, Lcom/mycompany/app/view/MyMoveFrame;->j:I

    .line 204
    .line 205
    sub-int v4, v3, v4

    .line 206
    .line 207
    iput v4, v0, Lcom/mycompany/app/view/MyMoveFrame;->l:I

    .line 208
    .line 209
    iget v4, v0, Lcom/mycompany/app/view/MyMoveFrame;->k:I

    .line 210
    .line 211
    sub-int v4, v2, v4

    .line 212
    .line 213
    iput v4, v0, Lcom/mycompany/app/view/MyMoveFrame;->m:I

    .line 214
    .line 215
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/view/MyMoveFrame;->c(II)V

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->l7(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->y(Z)V

    .line 223
    .line 224
    .line 225
    :cond_5
    :goto_2
    return v1
.end method
