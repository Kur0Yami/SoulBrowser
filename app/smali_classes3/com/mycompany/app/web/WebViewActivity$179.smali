.class Lcom/mycompany/app/web/WebViewActivity$179;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/wview/WebUpView$UpViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$179;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$179;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->V7(ZZ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$179;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->P3:Lcom/mycompany/app/wview/WebUpView;

    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_1
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    const/high16 v3, -0x1000000

    .line 27
    .line 28
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 29
    .line 30
    invoke-static {v3, v5}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_dark_24:I

    .line 35
    .line 36
    const v6, -0x3f8a8a8b

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v3, -0x1

    .line 41
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 42
    .line 43
    invoke-static {v3, v5}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_black_24:I

    .line 48
    .line 49
    const v6, -0x7f8a8a8b

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v7, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iput-object v5, v1, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_3
    new-instance v4, Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v4, v1, Lcom/mycompany/app/view/MyWebCoord;->O:Landroid/graphics/Paint;

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v1, Lcom/mycompany/app/view/MyWebCoord;->O:Landroid/graphics/Paint;

    .line 78
    .line 79
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 80
    .line 81
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v1, Lcom/mycompany/app/view/MyWebCoord;->O:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, v1, Lcom/mycompany/app/view/MyWebCoord;->P:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v1, Lcom/mycompany/app/view/MyWebCoord;->P:Landroid/graphics/Paint;

    .line 100
    .line 101
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v1, Lcom/mycompany/app/view/MyWebCoord;->P:Landroid/graphics/Paint;

    .line 107
    .line 108
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 109
    .line 110
    int-to-float v4, v4

    .line 111
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v1, Lcom/mycompany/app/view/MyWebCoord;->P:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iput v3, v1, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    iput v3, v1, Lcom/mycompany/app/view/MyWebCoord;->b0:I

    .line 130
    .line 131
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 132
    .line 133
    iput v3, v1, Lcom/mycompany/app/view/MyWebCoord;->V:I

    .line 134
    .line 135
    iput v3, v1, Lcom/mycompany/app/view/MyWebCoord;->W:I

    .line 136
    .line 137
    div-int/lit8 v4, v3, 0x2

    .line 138
    .line 139
    iput v4, v1, Lcom/mycompany/app/view/MyWebCoord;->M:I

    .line 140
    .line 141
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 142
    .line 143
    iput v4, v1, Lcom/mycompany/app/view/MyWebCoord;->N:I

    .line 144
    .line 145
    sget v4, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 146
    .line 147
    if-ne v4, v5, :cond_4

    .line 148
    .line 149
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    const/4 v6, 0x3

    .line 153
    if-ne v4, v6, :cond_5

    .line 154
    .line 155
    iget v4, v1, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 156
    .line 157
    sub-int/2addr v4, v3

    .line 158
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 159
    .line 160
    sub-int v3, v4, v3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    iget v4, v1, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 164
    .line 165
    sub-int/2addr v4, v3

    .line 166
    int-to-float v3, v4

    .line 167
    const/high16 v4, 0x40000000    # 2.0f

    .line 168
    .line 169
    div-float/2addr v3, v4

    .line 170
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    :goto_1
    iget v4, v1, Lcom/mycompany/app/view/MyWebCoord;->b0:I

    .line 175
    .line 176
    iget v6, v1, Lcom/mycompany/app/view/MyWebCoord;->W:I

    .line 177
    .line 178
    sub-int/2addr v4, v6

    .line 179
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 180
    .line 181
    sub-int/2addr v4, v6

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    float-to-int v6, v6

    .line 187
    sub-int/2addr v6, v3

    .line 188
    iput v6, v1, Lcom/mycompany/app/view/MyWebCoord;->g0:I

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    float-to-int v2, v2

    .line 195
    sub-int/2addr v2, v4

    .line 196
    iput v2, v1, Lcom/mycompany/app/view/MyWebCoord;->h0:I

    .line 197
    .line 198
    iget v2, v1, Lcom/mycompany/app/view/MyWebCoord;->R:I

    .line 199
    .line 200
    sub-int v2, v3, v2

    .line 201
    .line 202
    iput v2, v1, Lcom/mycompany/app/view/MyWebCoord;->T:I

    .line 203
    .line 204
    iget v2, v1, Lcom/mycompany/app/view/MyWebCoord;->S:I

    .line 205
    .line 206
    sub-int v2, v4, v2

    .line 207
    .line 208
    iput v2, v1, Lcom/mycompany/app/view/MyWebCoord;->U:I

    .line 209
    .line 210
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyWebCoord;->E(II)V

    .line 211
    .line 212
    .line 213
    move v4, v5

    .line 214
    :goto_2
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Q3:Z

    .line 215
    .line 216
    return-void
.end method
