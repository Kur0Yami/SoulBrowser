.class Lcom/mycompany/app/view/MySnackbar$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$27;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->d0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$27;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    new-instance v1, Lcom/mycompany/app/view/MyRoundFrame;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->G:Lcom/mycompany/app/view/MyRoundFrame;

    .line 41
    .line 42
    new-instance v1, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->H:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    new-instance v1, Landroid/view/View;

    .line 52
    .line 53
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->I:Landroid/view/View;

    .line 59
    .line 60
    new-instance v1, Landroid/view/View;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->J:Landroid/view/View;

    .line 68
    .line 69
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    new-instance v1, Lcom/mycompany/app/view/MyArrowView;

    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->M:Lcom/mycompany/app/view/MyArrowView;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 94
    .line 95
    sget v3, Lnet/kaki87/soul2/testing/R$string;->swipe_remove:I

    .line 96
    .line 97
    const-string v4, "\n\n"

    .line 98
    .line 99
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 103
    .line 104
    sget v3, Lnet/kaki87/soul2/testing/R$string;->snack_guide:I

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    const/4 v3, -0x1

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 131
    .line 132
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 133
    .line 134
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 135
    .line 136
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 137
    .line 138
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    const/16 v2, 0x11

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    const/high16 v3, 0x41600000    # 14.0f

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 154
    .line 155
    .line 156
    sget v1, Lnet/kaki87/soul2/testing/R$id;->snack_guide_frame:I

    .line 157
    .line 158
    iput v1, v0, Lcom/mycompany/app/view/MySnackbar;->N:I

    .line 159
    .line 160
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->G:Lcom/mycompany/app/view/MyRoundFrame;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->G:Lcom/mycompany/app/view/MyRoundFrame;

    .line 166
    .line 167
    const v2, -0xe4a1e0

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->I:Landroid/view/View;

    .line 174
    .line 175
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_white_24:I

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->J:Landroid/view/View;

    .line 181
    .line 182
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_vertical_white_24:I

    .line 183
    .line 184
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->M:Lcom/mycompany/app/view/MyArrowView;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyArrowView;->setSnack(I)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 193
    .line 194
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 195
    .line 196
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 207
    .line 208
    const v2, 0x44e0e0e0

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 215
    .line 216
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_white_18:I

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$16;

    .line 224
    .line 225
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$16;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->G:Lcom/mycompany/app/view/MyRoundFrame;

    .line 232
    .line 233
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$17;

    .line 234
    .line 235
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 242
    .line 243
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$18;

    .line 244
    .line 245
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$18;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 249
    .line 250
    .line 251
    :cond_2
    :goto_0
    return-void
.end method
