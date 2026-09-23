.class Lcom/mycompany/app/main/MainMusicActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainMusicActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainMusicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$1;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity$1;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->i1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->l1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const v2, -0x50506

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    const v2, -0xc0c0c1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 60
    .line 61
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_d:I

    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 71
    .line 72
    iget-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 73
    .line 74
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_d:I

    .line 75
    .line 76
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->l1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    const/high16 v2, -0x1000000

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    const v2, -0x1f1f20

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 129
    .line 130
    iget-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 131
    .line 132
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_b:I

    .line 133
    .line 134
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 142
    .line 143
    iget-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 144
    .line 145
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_b:I

    .line 146
    .line 147
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->i1:Landroid/widget/FrameLayout;

    .line 161
    .line 162
    new-instance v2, Lcom/mycompany/app/main/MainMusicActivity$2;

    .line 163
    .line 164
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainMusicActivity$2;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    new-instance v2, Lcom/mycompany/app/main/MainMusicActivity$3;

    .line 173
    .line 174
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainMusicActivity$3;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 181
    .line 182
    new-instance v2, Lcom/mycompany/app/main/MainMusicActivity$4;

    .line 183
    .line 184
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainMusicActivity$4;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 191
    .line 192
    const/16 v2, 0x3e8

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 198
    .line 199
    iget-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->A1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 205
    .line 206
    new-instance v2, Lcom/mycompany/app/main/MainMusicActivity$5;

    .line 207
    .line 208
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainMusicActivity$5;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    .line 213
    .line 214
    new-instance v1, Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 215
    .line 216
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainMusicActivity$EventHandler;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 217
    .line 218
    .line 219
    iput-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->x1:Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

    .line 222
    .line 223
    if-eqz v1, :cond_2

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

    .line 227
    .line 228
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 229
    .line 230
    .line 231
    iput-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->x1:Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

    .line 232
    .line 233
    new-instance v1, Landroid/content/IntentFilter;

    .line 234
    .line 235
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v2, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->x1:Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

    .line 244
    .line 245
    const/4 v3, 0x4

    .line 246
    const/4 v4, 0x0

    .line 247
    invoke-static {v0, v2, v1, v4, v3}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainMusicActivity;->w0()V

    .line 251
    .line 252
    .line 253
    return-void
.end method
