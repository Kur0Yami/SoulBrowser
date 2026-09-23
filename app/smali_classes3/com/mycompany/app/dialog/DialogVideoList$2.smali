.class Lcom/mycompany/app/dialog/DialogVideoList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$2;->c:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList$2;->c:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    const/high16 v2, 0x42e00000    # 112.0f

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    iput v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->F0:I

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    const v2, -0x50506

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const/high16 v2, -0x1000000

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->f0:I

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    const/4 v3, 0x1

    .line 62
    if-ne v1, v2, :cond_3

    .line 63
    .line 64
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_in_picture_alt_dark_24:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_in_picture_alt_black_24:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$string;->pip_mode:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    if-ne v1, v3, :cond_5

    .line 92
    .line 93
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 98
    .line 99
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_dark_24:I

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 106
    .line 107
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_black_24:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    .line 111
    .line 112
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    sget v2, Lnet/kaki87/soul2/testing/R$string;->full_screen:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_5
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 121
    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 125
    .line 126
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_24:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 133
    .line 134
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_24:I

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    sget v2, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$5;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogVideoList$5;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 159
    .line 160
    .line 161
    iput-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 170
    .line 171
    new-instance v4, Lcom/mycompany/app/dialog/DialogVideoList$3;

    .line 172
    .line 173
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogVideoList$3;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 180
    .line 181
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 182
    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    const v4, -0xdededf

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    const/4 v4, -0x1

    .line 190
    :goto_5
    sget v5, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 191
    .line 192
    iput v4, v1, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 193
    .line 194
    iput v5, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 195
    .line 196
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineUp(Z)V

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogVideoList;->H(Z)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 212
    .line 213
    new-instance v2, Lcom/mycompany/app/dialog/DialogVideoList$4;

    .line 214
    .line 215
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogVideoList$4;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    :goto_6
    return-void
.end method
