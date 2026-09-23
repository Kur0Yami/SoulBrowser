.class Lcom/mycompany/app/image/ImageViewControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$2;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl$2;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$3;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$4;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$4;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$5;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$5;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->l:Z

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$6;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$6;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$7;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$7;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$8;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$8;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$9;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$10;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$10;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$11;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$11;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$12;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$12;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$13;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$13;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$14;

    .line 126
    .line 127
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$14;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$15;

    .line 136
    .line 137
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$15;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$16;

    .line 146
    .line 147
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$16;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$17;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 164
    .line 165
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$18;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$18;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$19;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$19;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$20;

    .line 186
    .line 187
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$20;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 194
    .line 195
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$21;

    .line 196
    .line 197
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$21;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$22;

    .line 206
    .line 207
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$22;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$23;

    .line 216
    .line 217
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$23;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, -0x1

    .line 224
    iput v1, v0, Lcom/mycompany/app/image/ImageViewControl;->f0:I

    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 227
    .line 228
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewControl;->t0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 234
    .line 235
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$24;

    .line 236
    .line 237
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$24;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    .line 242
    .line 243
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 244
    .line 245
    if-nez v1, :cond_1

    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 248
    .line 249
    const/16 v2, 0x8

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 266
    .line 267
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$25;

    .line 268
    .line 269
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$25;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 276
    .line 277
    new-instance v2, Lcom/mycompany/app/image/ImageViewControl$26;

    .line 278
    .line 279
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewControl$26;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method
