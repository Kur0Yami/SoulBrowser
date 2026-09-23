.class Lcom/mycompany/app/dialog/DialogSeekAudio$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekAudio;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$2;->c:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekAudio$2;->c:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const v2, -0x4f4f50

    .line 18
    .line 19
    .line 20
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v2, -0x50506

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 55
    .line 56
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 68
    .line 69
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    const v2, -0xc0c0c1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 93
    .line 94
    const/high16 v3, -0x1000000

    .line 95
    .line 96
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 124
    .line 125
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 126
    .line 127
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 128
    .line 129
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 137
    .line 138
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 139
    .line 140
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 141
    .line 142
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 150
    .line 151
    const v2, -0x1f1f20

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 160
    .line 161
    .line 162
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    sget v2, Lnet/kaki87/soul2/testing/R$string;->volume:I

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v3, ""

    .line 174
    .line 175
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 179
    .line 180
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 184
    .line 185
    const/4 v2, 0x0

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 190
    .line 191
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->a0:I

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 197
    .line 198
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->j0:I

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->g0:Landroid/widget/SeekBar;

    .line 204
    .line 205
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekAudio$3;

    .line 206
    .line 207
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekAudio$4;

    .line 216
    .line 217
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekAudio$5;

    .line 226
    .line 227
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 234
    .line 235
    if-nez v1, :cond_2

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->m0:Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;

    .line 239
    .line 240
    if-eqz v1, :cond_3

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;

    .line 244
    .line 245
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 246
    .line 247
    .line 248
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->m0:Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;

    .line 249
    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    .line 251
    .line 252
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->b0:Landroid/content/Context;

    .line 266
    .line 267
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->m0:Lcom/mycompany/app/dialog/DialogSeekAudio$EventReceiver;

    .line 268
    .line 269
    const/4 v4, 0x4

    .line 270
    const/4 v5, 0x0

    .line 271
    invoke-static {v2, v3, v1, v5, v4}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekAudio;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 275
    .line 276
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekAudio$6;

    .line 277
    .line 278
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekAudio;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 282
    .line 283
    .line 284
    :cond_4
    :goto_2
    return-void
.end method
