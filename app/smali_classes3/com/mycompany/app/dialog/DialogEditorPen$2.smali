.class Lcom/mycompany/app/dialog/DialogEditorPen$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorPen;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen$2;->c:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorPen$2;->c:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const/high16 v2, -0x5f000000

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->g0:Landroid/widget/SeekBar;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->k0:Landroid/widget/SeekBar;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->d0:Lcom/mycompany/app/view/MyCircleView;

    .line 30
    .line 31
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 32
    .line 33
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 34
    .line 35
    const/16 v5, 0x28

    .line 36
    .line 37
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/mycompany/app/view/MyCircleView;->a(IIIZ)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 41
    .line 42
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 43
    .line 44
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 45
    .line 46
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/mycompany/app/view/MyCircleView;->a(IIIZ)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, ""

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 62
    .line 63
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->g0:Landroid/widget/SeekBar;

    .line 67
    .line 68
    const/16 v3, 0x27

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->g0:Landroid/widget/SeekBar;

    .line 74
    .line 75
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->q0:I

    .line 76
    .line 77
    sub-int/2addr v3, v6

    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->g0:Landroid/widget/SeekBar;

    .line 82
    .line 83
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorPen$3;

    .line 84
    .line 85
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$3;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorPen$4;

    .line 94
    .line 95
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$4;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorPen$5;

    .line 104
    .line 105
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$5;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 119
    .line 120
    const-string v5, "%"

    .line 121
    .line 122
    invoke-static {v3, v4, v5, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->k0:Landroid/widget/SeekBar;

    .line 126
    .line 127
    const/16 v3, 0x5a

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->k0:Landroid/widget/SeekBar;

    .line 133
    .line 134
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->r0:I

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->k0:Landroid/widget/SeekBar;

    .line 140
    .line 141
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorPen$6;

    .line 142
    .line 143
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$6;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 150
    .line 151
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorPen$7;

    .line 152
    .line 153
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$7;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditorPen$8;

    .line 162
    .line 163
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$8;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    sget-object v1, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 170
    .line 171
    array-length v1, v1

    .line 172
    move v3, v2

    .line 173
    :goto_0
    const v4, -0xc0c0c1

    .line 174
    .line 175
    .line 176
    if-ge v3, v1, :cond_1

    .line 177
    .line 178
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 179
    .line 180
    aget-object v5, v5, v3

    .line 181
    .line 182
    sget-object v6, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 183
    .line 184
    aget v6, v6, v3

    .line 185
    .line 186
    invoke-virtual {v5, v6, v6}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 187
    .line 188
    .line 189
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 190
    .line 191
    aget-object v5, v5, v3

    .line 192
    .line 193
    sget v6, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 194
    .line 195
    invoke-virtual {v5, v4, v6}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 199
    .line 200
    aget-object v4, v4, v3

    .line 201
    .line 202
    sget-object v5, Lcom/mycompany/app/dialog/DialogEditorPen;->w0:[I

    .line 203
    .line 204
    aget v5, v5, v3

    .line 205
    .line 206
    invoke-virtual {v4, v5, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 207
    .line 208
    .line 209
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 210
    .line 211
    aget-object v4, v4, v3

    .line 212
    .line 213
    new-instance v5, Lcom/mycompany/app/dialog/DialogEditorPen$9;

    .line 214
    .line 215
    invoke-direct {v5, v0, v3, v1}, Lcom/mycompany/app/dialog/DialogEditorPen$9;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;II)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->o0:Lcom/mycompany/app/view/MyPaletteView;

    .line 225
    .line 226
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorPen$10;

    .line 227
    .line 228
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$10;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setListener(Lcom/mycompany/app/view/MyPaletteView$PaletteListener;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 235
    .line 236
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorPen$11;

    .line 237
    .line 238
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$11;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditorPen;->D()V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->o0:Lcom/mycompany/app/view/MyPaletteView;

    .line 248
    .line 249
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyPaletteView;->setBorder(I)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->o0:Lcom/mycompany/app/view/MyPaletteView;

    .line 253
    .line 254
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->s0:I

    .line 255
    .line 256
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->t0:F

    .line 257
    .line 258
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 262
    .line 263
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorPen$12;

    .line 264
    .line 265
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorPen$12;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 269
    .line 270
    .line 271
    :cond_2
    :goto_1
    return-void
.end method
