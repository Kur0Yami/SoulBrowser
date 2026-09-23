.class Lcom/mycompany/app/view/MyEngineMenu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEngineMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$4;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu$4;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/view/MyEngineMenu;->h:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_1
    new-instance v3, Lcom/mycompany/app/view/MyPopupList;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyPopupList;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/mycompany/app/view/MyEngineMenu;->h:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iget-object v4, v1, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_2
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_3
    iget-object v4, v1, Lcom/mycompany/app/view/MyEngineMenu;->d:Landroid/view/View;

    .line 40
    .line 41
    if-nez v4, :cond_4

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_4
    iget-object v5, v1, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 46
    .line 47
    const/high16 v6, 0x43440000    # 196.0f

    .line 48
    .line 49
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    float-to-int v5, v5

    .line 54
    iget-object v6, v1, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 55
    .line 56
    const/high16 v7, 0x42500000    # 52.0f

    .line 57
    .line 58
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    float-to-int v6, v6

    .line 63
    iput v6, v1, Lcom/mycompany/app/view/MyEngineMenu;->k:I

    .line 64
    .line 65
    const/4 v6, 0x2

    .line 66
    new-array v7, v6, [I

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 69
    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    aget v9, v7, v8

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    aget v11, v7, v10

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    div-int/2addr v14, v6

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    div-int/2addr v15, v6

    .line 98
    aget v6, v7, v8

    .line 99
    .line 100
    sub-int/2addr v6, v9

    .line 101
    aget v7, v7, v10

    .line 102
    .line 103
    sub-int/2addr v7, v11

    .line 104
    add-int/2addr v7, v15

    .line 105
    iget v9, v1, Lcom/mycompany/app/view/MyEngineMenu;->k:I

    .line 106
    .line 107
    iget-object v10, v1, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    mul-int/2addr v10, v9

    .line 114
    iget-object v9, v1, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 115
    .line 116
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_5

    .line 121
    .line 122
    neg-int v14, v14

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    add-int/2addr v6, v4

    .line 128
    sub-int v4, v6, v5

    .line 129
    .line 130
    move v9, v6

    .line 131
    move v6, v4

    .line 132
    move v4, v9

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    add-int v4, v6, v5

    .line 135
    .line 136
    move v9, v6

    .line 137
    :goto_0
    div-int/lit8 v11, v13, 0x2

    .line 138
    .line 139
    if-ge v7, v11, :cond_6

    .line 140
    .line 141
    add-int v11, v7, v15

    .line 142
    .line 143
    add-int v16, v11, v10

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    neg-int v15, v15

    .line 147
    add-int v16, v7, v15

    .line 148
    .line 149
    sub-int v11, v16, v10

    .line 150
    .line 151
    :goto_1
    if-gez v6, :cond_8

    .line 152
    .line 153
    if-le v5, v12, :cond_7

    .line 154
    .line 155
    move v6, v8

    .line 156
    move v4, v12

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    move v4, v5

    .line 159
    move v6, v8

    .line 160
    :cond_8
    :goto_2
    if-le v4, v12, :cond_a

    .line 161
    .line 162
    sub-int v6, v12, v5

    .line 163
    .line 164
    if-gez v6, :cond_9

    .line 165
    .line 166
    move v6, v8

    .line 167
    :cond_9
    move v4, v12

    .line 168
    :cond_a
    if-gez v11, :cond_c

    .line 169
    .line 170
    move v11, v8

    .line 171
    if-le v10, v13, :cond_b

    .line 172
    .line 173
    move v5, v13

    .line 174
    goto :goto_3

    .line 175
    :cond_b
    move v5, v10

    .line 176
    goto :goto_3

    .line 177
    :cond_c
    move/from16 v5, v16

    .line 178
    .line 179
    :goto_3
    if-le v5, v13, :cond_e

    .line 180
    .line 181
    sub-int v5, v13, v10

    .line 182
    .line 183
    if-gez v5, :cond_d

    .line 184
    .line 185
    :goto_4
    move v5, v13

    .line 186
    goto :goto_5

    .line 187
    :cond_d
    move v8, v5

    .line 188
    goto :goto_4

    .line 189
    :cond_e
    move v8, v11

    .line 190
    :goto_5
    sub-int/2addr v9, v6

    .line 191
    add-int/2addr v9, v14

    .line 192
    iput v9, v1, Lcom/mycompany/app/view/MyEngineMenu;->l:I

    .line 193
    .line 194
    sub-int/2addr v7, v8

    .line 195
    add-int/2addr v7, v15

    .line 196
    iput v7, v1, Lcom/mycompany/app/view/MyEngineMenu;->m:I

    .line 197
    .line 198
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 199
    .line 200
    const/4 v9, -0x1

    .line 201
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    sub-int/2addr v12, v4

    .line 205
    sub-int/2addr v13, v5

    .line 206
    invoke-virtual {v7, v6, v8, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 207
    .line 208
    .line 209
    move-object v5, v7

    .line 210
    :goto_6
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    iput-object v3, v1, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 214
    .line 215
    iget-object v2, v1, Lcom/mycompany/app/view/MyEngineMenu;->b:Landroid/os/Handler;

    .line 216
    .line 217
    if-nez v2, :cond_f

    .line 218
    .line 219
    :goto_7
    return-void

    .line 220
    :cond_f
    new-instance v3, Lcom/mycompany/app/view/MyEngineMenu$5;

    .line 221
    .line 222
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyEngineMenu$5;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    .line 227
    .line 228
    return-void
.end method
