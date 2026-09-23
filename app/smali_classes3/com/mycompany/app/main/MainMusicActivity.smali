.class public Lcom/mycompany/app/main/MainMusicActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainMusicActivity$EventHandler;,
        Lcom/mycompany/app/main/MainMusicActivity$PlayTask;,
        Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;
    }
.end annotation


# static fields
.field public static final synthetic B1:I


# instance fields
.field public final A1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public f1:Landroid/content/Context;

.field public g1:Landroid/net/Uri;

.field public h1:Ljava/lang/String;

.field public i1:Landroid/widget/FrameLayout;

.field public j1:Lcom/mycompany/app/view/MyButtonImage;

.field public k1:Lcom/mycompany/app/view/MyButtonImage;

.field public l1:Landroidx/appcompat/widget/AppCompatTextView;

.field public m1:Landroid/widget/SeekBar;

.field public n1:Landroidx/appcompat/widget/AppCompatTextView;

.field public o1:Landroidx/appcompat/widget/AppCompatTextView;

.field public p1:Z

.field public q1:Landroid/media/MediaPlayer;

.field public r1:Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

.field public s1:Z

.field public t1:Z

.field public u1:Z

.field public v1:I

.field public w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

.field public x1:Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

.field public y1:Z

.field public z1:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/MainMusicActivity$12;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainMusicActivity$12;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->A1:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->t1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_24:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_24:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_dark_24:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_5
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_black_24:I

    .line 48
    .line 49
    :goto_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final B0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->p1:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->t1:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->A0()V

    .line 26
    .line 27
    .line 28
    int-to-long v2, v1

    .line 29
    invoke-static {v2, v3, v2, v3}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 55
    .line 56
    if-eqz v0, :cond_e

    .line 57
    .line 58
    iget v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->v1:I

    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    if-eq v0, v2, :cond_3

    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->A0()V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-gez v0, :cond_5

    .line 80
    .line 81
    :goto_0
    move v0, v1

    .line 82
    :cond_5
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 83
    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    :goto_1
    move v3, v1

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    iget v3, p0, Lcom/mycompany/app/main/MainMusicActivity;->v1:I

    .line 89
    .line 90
    if-eq v3, v2, :cond_7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 94
    .line 95
    if-nez v2, :cond_8

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_8
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-gez v3, :cond_9

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 106
    .line 107
    rem-int/lit16 v4, v3, 0x3e8

    .line 108
    .line 109
    const/16 v5, 0x3e8

    .line 110
    .line 111
    rsub-int v4, v4, 0x3e8

    .line 112
    .line 113
    int-to-long v6, v4

    .line 114
    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    .line 116
    .line 117
    const-string v2, "00:00"

    .line 118
    .line 119
    if-gtz v0, :cond_a

    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_a
    if-ge v0, v5, :cond_c

    .line 143
    .line 144
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 147
    .line 148
    .line 149
    if-le v3, v0, :cond_b

    .line 150
    .line 151
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 160
    .line 161
    .line 162
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    const-string v1, "00:01"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_c
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 176
    .line 177
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 178
    .line 179
    .line 180
    if-le v3, v0, :cond_d

    .line 181
    .line 182
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 183
    .line 184
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 189
    .line 190
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 191
    .line 192
    int-to-float v4, v3

    .line 193
    mul-float/2addr v4, v2

    .line 194
    int-to-float v2, v0

    .line 195
    div-float/2addr v4, v2

    .line 196
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    .line 202
    .line 203
    :goto_4
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    int-to-long v4, v0

    .line 206
    invoke-static {v4, v5, v4, v5}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    int-to-long v1, v3

    .line 216
    invoke-static {v4, v5, v1, v2}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_e
    :goto_5
    int-to-long v2, v1

    .line 225
    invoke-static {v2, v3, v2, v3}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 237
    .line 238
    .line 239
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 240
    .line 241
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 245
    .line 246
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 250
    .line 251
    const-wide/16 v2, 0x3e8

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    .line 255
    .line 256
    :cond_f
    :goto_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->f0()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->g1:Landroid/net/Uri;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->i8(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/16 v2, 0x50

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    const/4 v4, -0x1

    .line 67
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/mycompany/app/view/MyDialogLinear;

    .line 74
    .line 75
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyDialogLinear;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .line 84
    const/4 v7, -0x2

    .line 85
    invoke-direct {v6, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    const/high16 v2, 0x41200000    # 10.0f

    .line 91
    .line 92
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    float-to-int v2, v2

    .line 97
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 108
    .line 109
    invoke-virtual {v3, v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 118
    .line 119
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    .line 121
    .line 122
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 123
    .line 124
    invoke-virtual {v2, v6, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 125
    .line 126
    .line 127
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    .line 134
    .line 135
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 138
    .line 139
    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    const v10, 0x800005

    .line 143
    .line 144
    .line 145
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    .line 147
    invoke-virtual {v2, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    const/4 v11, 0x0

    .line 153
    invoke-direct {v8, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 157
    .line 158
    .line 159
    const/high16 v12, 0x41800000    # 16.0f

    .line 160
    .line 161
    invoke-virtual {v8, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 162
    .line 163
    .line 164
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    .line 166
    invoke-direct {v13, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const/16 v14, 0x10

    .line 170
    .line 171
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    .line 173
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 174
    .line 175
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 176
    .line 177
    .line 178
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 179
    .line 180
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .line 185
    .line 186
    new-instance v2, Landroid/widget/SeekBar;

    .line 187
    .line 188
    invoke-direct {v2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 192
    .line 193
    const/4 v14, 0x0

    .line 194
    invoke-virtual {v2, v13, v14, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 198
    .line 199
    .line 200
    new-instance v13, Landroid/widget/FrameLayout;

    .line 201
    .line 202
    invoke-direct {v13, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 206
    .line 207
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 208
    .line 209
    invoke-virtual {v13, v15, v14, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v13, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 213
    .line 214
    .line 215
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    invoke-direct {v3, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 224
    .line 225
    .line 226
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 227
    .line 228
    invoke-direct {v4, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 232
    .line 233
    .line 234
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 235
    .line 236
    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 237
    .line 238
    .line 239
    const v7, 0x800005

    .line 240
    .line 241
    .line 242
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    .line 244
    invoke-virtual {v13, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    iput-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->i1:Landroid/widget/FrameLayout;

    .line 248
    .line 249
    iput-object v6, v0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 250
    .line 251
    iput-object v9, v0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 252
    .line 253
    iput-object v8, v0, Lcom/mycompany/app/main/MainMusicActivity;->l1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 254
    .line 255
    iput-object v2, v0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 256
    .line 257
    iput-object v4, v0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    iput-object v3, v0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v0, Lcom/mycompany/app/main/MainMusicActivity;->i1:Landroid/widget/FrameLayout;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 270
    .line 271
    if-nez v1, :cond_2

    .line 272
    .line 273
    return-void

    .line 274
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/MainMusicActivity$1;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainMusicActivity$1;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->u0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->g1:Landroid/net/Uri;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->h1:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->i1:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->l1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/16 v0, 0x4f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/16 v0, 0x55

    .line 7
    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0x56

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x7e

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x7f

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    invoke-super {p0, p1, p2}, Lcom/mycompany/app/main/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->p1:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->p1:Z

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 45
    .line 46
    invoke-virtual {p0, v2, v2}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->p1:Z

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    :goto_0
    return v1

    .line 55
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->v0()V

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->u0()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->w1:Lcom/mycompany/app/main/MainMusicActivity$EventHandler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->x1:Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->x1:Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->y0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final v0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->t1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->w0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    move v0, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_1
    const/4 v2, 0x1

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 31
    .line 32
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 37
    .line 38
    invoke-virtual {p0, v2, v1}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final w0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->y0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaPlayer;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    new-instance v1, Lcom/mycompany/app/main/MainMusicActivity$6;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainMusicActivity$6;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/main/MainMusicActivity$7;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainMusicActivity$7;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/main/MainMusicActivity$8;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainMusicActivity$8;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/main/MainMusicActivity$9;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainMusicActivity$9;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->r1:Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 55
    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->r1:Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

    .line 58
    .line 59
    new-instance v0, Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainMusicActivity$PlayTask;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->r1:Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->f1:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final x0(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    move v0, v1

    .line 21
    :cond_2
    const-string v2, "00:00"

    .line 22
    .line 23
    if-gtz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->A0()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    const/16 v1, 0x3e8

    .line 45
    .line 46
    if-ge v0, v1, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    const-string v0, "00:01"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    .line 71
    .line 72
    int-to-float v1, v0

    .line 73
    int-to-float p1, p1

    .line 74
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 75
    .line 76
    div-float/2addr p1, v2

    .line 77
    mul-float/2addr p1, v1

    .line 78
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    int-to-long v2, v0

    .line 85
    invoke-static {v2, v3, v2, v3}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    int-to-long v4, p1

    .line 95
    invoke-static {v2, v3, v4, v5}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->r1:Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->r1:Lcom/mycompany/app/main/MainMusicActivity$PlayTask;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->t1:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->v1:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->z1:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/MainMusicActivity$10;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainMusicActivity$10;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final z0(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->v1:I

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->y1:Z

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v0, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainMusicActivity;->B0()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity;->m1:Landroid/widget/SeekBar;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance p2, Lcom/mycompany/app/main/MainMusicActivity$11;

    .line 76
    .line 77
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainMusicActivity$11;-><init>(Lcom/mycompany/app/main/MainMusicActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_1
    return-void
.end method
