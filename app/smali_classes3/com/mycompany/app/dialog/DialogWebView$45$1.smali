.class Lcom/mycompany/app/dialog/DialogWebView$45$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView$45;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView$45;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$45$1;->c:Lcom/mycompany/app/dialog/DialogWebView$45;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$45$1;->c:Lcom/mycompany/app/dialog/DialogWebView$45;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$45;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->f2:Lcom/mycompany/app/web/WebTransControl;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->g2:Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->f2:Lcom/mycompany/app/web/WebTransControl;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->g2:Landroid/view/View;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->y1:Lcom/mycompany/app/web/WebTransControl;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->y1:Lcom/mycompany/app/web/WebTransControl;

    .line 25
    .line 26
    :try_start_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->p0:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->o0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 34
    .line 35
    :goto_0
    const/4 v3, 0x2

    .line 36
    new-array v4, v3, [I

    .line 37
    .line 38
    new-array v5, v3, [I

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    aget v7, v5, v6

    .line 48
    .line 49
    aget v8, v4, v6

    .line 50
    .line 51
    sub-int/2addr v7, v8

    .line 52
    const/4 v8, 0x1

    .line 53
    aget v5, v5, v8

    .line 54
    .line 55
    aget v4, v4, v8

    .line 56
    .line 57
    sub-int/2addr v5, v4

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    add-int/2addr v7, v4

    .line 75
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    div-int/lit8 v10, v4, 0x2

    .line 78
    .line 79
    sub-int/2addr v7, v10

    .line 80
    if-le v7, v8, :cond_3

    .line 81
    .line 82
    move v7, v8

    .line 83
    :cond_3
    if-gez v7, :cond_4

    .line 84
    .line 85
    move v7, v6

    .line 86
    :cond_4
    const/4 v10, -0x1

    .line 87
    if-gt v8, v9, :cond_5

    .line 88
    .line 89
    :goto_1
    move v11, v6

    .line 90
    move v4, v10

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    mul-int/lit8 v4, v4, 0x7

    .line 93
    .line 94
    if-gt v8, v4, :cond_6

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    div-int/lit8 v11, v4, 0x2

    .line 98
    .line 99
    sub-int v11, v7, v11

    .line 100
    .line 101
    sub-int v12, v8, v4

    .line 102
    .line 103
    if-le v11, v12, :cond_7

    .line 104
    .line 105
    move v11, v12

    .line 106
    :cond_7
    if-gez v11, :cond_8

    .line 107
    .line 108
    move v11, v6

    .line 109
    :cond_8
    sub-int/2addr v7, v11

    .line 110
    sub-int v12, v8, v11

    .line 111
    .line 112
    if-le v7, v12, :cond_9

    .line 113
    .line 114
    move v7, v12

    .line 115
    :cond_9
    if-gez v7, :cond_a

    .line 116
    .line 117
    move v7, v6

    .line 118
    :cond_a
    :goto_2
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 119
    .line 120
    mul-int/lit8 v12, v12, 0x9

    .line 121
    .line 122
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 123
    .line 124
    add-int/2addr v13, v5

    .line 125
    sub-int v14, v9, v12

    .line 126
    .line 127
    if-le v13, v14, :cond_b

    .line 128
    .line 129
    move v13, v14

    .line 130
    :cond_b
    if-gez v13, :cond_f

    .line 131
    .line 132
    div-int/2addr v2, v3

    .line 133
    add-int/2addr v5, v2

    .line 134
    if-le v5, v12, :cond_c

    .line 135
    .line 136
    move v5, v12

    .line 137
    :cond_c
    if-le v5, v9, :cond_d

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_d
    move v9, v5

    .line 141
    :goto_3
    move v13, v6

    .line 142
    if-gez v9, :cond_e

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_e
    move v6, v9

    .line 146
    :cond_f
    :goto_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->y1:Lcom/mycompany/app/web/WebTransControl;

    .line 147
    .line 148
    iput v7, v2, Lcom/mycompany/app/web/WebTransControl;->t:I

    .line 149
    .line 150
    iput v6, v2, Lcom/mycompany/app/web/WebTransControl;->u:I

    .line 151
    .line 152
    const/4 v3, 0x4

    .line 153
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->y1:Lcom/mycompany/app/web/WebTransControl;

    .line 157
    .line 158
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$46;

    .line 159
    .line 160
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$46;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebTransControl;->setListener(Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    invoke-direct {v2, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    if-eq v4, v10, :cond_11

    .line 172
    .line 173
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->f0:Z

    .line 174
    .line 175
    if-eqz v3, :cond_10

    .line 176
    .line 177
    add-int/2addr v11, v4

    .line 178
    sub-int/2addr v8, v11

    .line 179
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_10
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 183
    .line 184
    :cond_11
    :goto_5
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    .line 186
    new-instance v3, Landroid/widget/FrameLayout;

    .line 187
    .line 188
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 189
    .line 190
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->z1:Landroid/widget/FrameLayout;

    .line 194
    .line 195
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->y1:Lcom/mycompany/app/web/WebTransControl;

    .line 196
    .line 197
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->z1:Landroid/widget/FrameLayout;

    .line 201
    .line 202
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$47;

    .line 203
    .line 204
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$47;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->z1:Landroid/widget/FrameLayout;

    .line 211
    .line 212
    invoke-virtual {v1, v2, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 216
    .line 217
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$48;

    .line 218
    .line 219
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$48;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    :catch_0
    :goto_6
    return-void
.end method
