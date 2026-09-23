.class public Lcom/mycompany/app/video/VideoControl;
.super Lcom/mycompany/app/view/MyFadeRelative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/video/VideoControl$ControlListener;,
        Lcom/mycompany/app/video/VideoControl$EventHandler;
    }
.end annotation


# instance fields
.field public A:Landroid/view/Window;

.field public B:Lcom/mycompany/app/video/VideoControl$ControlListener;

.field public C:I

.field public D:Z

.field public E:Landroid/view/View;

.field public F:Landroidx/appcompat/widget/AppCompatTextView;

.field public G:Lcom/mycompany/app/view/MyButtonImage;

.field public H:Landroid/widget/LinearLayout;

.field public I:Lcom/mycompany/app/view/MyButtonImage;

.field public J:Lcom/mycompany/app/view/MyButtonImage;

.field public K:Lcom/mycompany/app/view/MyButtonImage;

.field public L:Lcom/mycompany/app/view/MyButtonImage;

.field public M:Lcom/mycompany/app/view/MyButtonImage;

.field public N:Lcom/mycompany/app/view/MyButtonImage;

.field public O:Lcom/mycompany/app/view/MyButtonImage;

.field public P:Lcom/mycompany/app/view/MyButtonCheck;

.field public Q:Lcom/mycompany/app/view/MyAreaView;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Landroid/widget/RelativeLayout;

.field public W:Lcom/mycompany/app/view/MyButtonImage;

.field public a0:Lcom/mycompany/app/view/MyButtonImage;

.field public b0:Lcom/mycompany/app/view/MyButtonImage;

.field public c0:Lcom/mycompany/app/view/MyButtonImage;

.field public d0:Lcom/mycompany/app/view/MyButtonImage;

.field public e0:Lcom/mycompany/app/view/MyButtonImage;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyTextView;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyTextView;

.field public j0:Landroid/widget/SeekBar;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Z

.field public n0:Z

.field public o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

.field public p0:Z

.field public q0:Landroid/webkit/WebView;

.field public r0:Z

.field public s0:Landroid/widget/FrameLayout;

.field public t0:Landroid/widget/FrameLayout;

.field public final u0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public y:Lcom/mycompany/app/video/VideoActivity;

.field public z:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/video/VideoControl$28;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoControl$28;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoControl;->u0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 12
    .line 13
    const/16 p1, 0xc8

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setAnimTime(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setTouchable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private getNaviHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->A:Landroid/view/Window;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->r()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, p0, Lcom/mycompany/app/video/VideoControl;->C:I

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->A:Landroid/view/Window;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->P2(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public static j(Lcom/mycompany/app/video/VideoControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/video/VideoControl$3;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/video/VideoControl$4;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$4;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/video/VideoControl$5;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->x()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/video/VideoControl$6;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$6;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/video/VideoControl$7;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$7;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->v()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/video/VideoControl$8;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$8;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    new-instance v2, Lcom/mycompany/app/video/VideoControl$9;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$9;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    new-instance v2, Lcom/mycompany/app/video/VideoControl$10;

    .line 85
    .line 86
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$10;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    const/16 v1, 0x1a

    .line 93
    .line 94
    if-lt v0, v1, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    new-instance v1, Lcom/mycompany/app/video/VideoControl$11;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$11;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->x:Z

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    new-instance v1, Lcom/mycompany/app/video/VideoControl$12;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$12;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setCheckArea(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 138
    .line 139
    new-instance v2, Lcom/mycompany/app/video/VideoControl$13;

    .line 140
    .line 141
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$13;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    new-instance v2, Lcom/mycompany/app/video/VideoControl$14;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    new-instance v2, Lcom/mycompany/app/video/VideoControl$15;

    .line 160
    .line 161
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$15;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    new-instance v2, Lcom/mycompany/app/video/VideoControl$16;

    .line 170
    .line 171
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$16;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    new-instance v2, Lcom/mycompany/app/video/VideoControl$17;

    .line 180
    .line 181
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$17;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    new-instance v2, Lcom/mycompany/app/video/VideoControl$18;

    .line 190
    .line 191
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$18;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 198
    .line 199
    new-instance v2, Lcom/mycompany/app/video/VideoControl$19;

    .line 200
    .line 201
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$19;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->p0:Z

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoControl;->setIconDown(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 213
    .line 214
    new-instance v2, Lcom/mycompany/app/video/VideoControl$20;

    .line 215
    .line 216
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$20;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 223
    .line 224
    new-instance v2, Lcom/mycompany/app/video/VideoControl$21;

    .line 225
    .line 226
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$21;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 233
    .line 234
    new-instance v2, Lcom/mycompany/app/video/VideoControl$22;

    .line 235
    .line 236
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$22;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 243
    .line 244
    const/4 v2, 0x0

    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 249
    .line 250
    const/16 v2, 0x3e8

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 256
    .line 257
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->u0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 263
    .line 264
    new-instance v2, Lcom/mycompany/app/video/VideoControl$23;

    .line 265
    .line 266
    invoke-direct {v2, p0}, Lcom/mycompany/app/video/VideoControl$23;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    .line 271
    .line 272
    invoke-direct {p0, v1}, Lcom/mycompany/app/video/VideoControl;->setIconShow(Z)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 276
    .line 277
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoControl$EventHandler;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 278
    .line 279
    .line 280
    iput-object v0, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 281
    .line 282
    return-void
.end method

.method public static k(Lcom/mycompany/app/video/VideoControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->f()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/mycompany/app/video/VideoControl$ControlListener;->e()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/lit16 v2, v2, 0x2710

    .line 23
    .line 24
    if-le v2, v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v0, v2

    .line 28
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->h(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static l(Lcom/mycompany/app/video/VideoControl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->f()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->e()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit16 v0, v0, -0x2710

    .line 23
    .line 24
    if-gez v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->h(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static bridge synthetic m(Lcom/mycompany/app/video/VideoControl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoControl;->setIconsClickable(Z)V

    return-void
.end method

.method private setIconShow(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x4

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->q0:Landroid/webkit/WebView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/video/VideoControl;->B(Landroid/webkit/WebView;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    move v0, v1

    .line 124
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    const/16 v1, 0x8

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 196
    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method private setIconsClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->setClickable(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->A:Landroid/view/Window;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/mycompany/app/video/VideoControl;->getNaviHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    if-ne v2, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .line 63
    :goto_0
    new-instance v0, Lcom/mycompany/app/video/VideoControl$27;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoControl$27;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-void
.end method

.method public final B(Landroid/webkit/WebView;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl;->q0:Landroid/webkit/WebView;

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->u()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final C(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoControl;->setIconsPressed(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->r()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lcom/mycompany/app/video/VideoControl;->R:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget v0, p0, Lcom/mycompany/app/video/VideoControl;->S:I

    .line 26
    .line 27
    :goto_0
    iget v2, p0, Lcom/mycompany/app/video/VideoControl;->T:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x4

    .line 31
    if-eq v2, v0, :cond_3

    .line 32
    .line 33
    iput v0, p0, Lcom/mycompany/app/video/VideoControl;->T:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyAreaView;->setSkipDraw(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 67
    .line 68
    iget v2, p0, Lcom/mycompany/app/video/VideoControl;->U:I

    .line 69
    .line 70
    iget-object v5, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v0, v2, v5}, Lcom/mycompany/app/view/MyAreaView;->e(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 97
    .line 98
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyAreaView;->A:Z

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    new-instance v1, Lcom/mycompany/app/video/VideoControl$24;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoControl$24;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 105
    .line 106
    .line 107
    const-wide/16 v4, 0x64

    .line 108
    .line 109
    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_3
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->i(Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoControl;->E(Z)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->n0:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->f()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/video/VideoControl;->t(II)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoControl;->setIconsClickable(Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->n0:Z

    .line 32
    .line 33
    return-void
.end method

.method public final E(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->w()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_d

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoControl;->n0:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 49
    .line 50
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->N()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->x()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->v()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->w()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    .line 80
    .line 81
    if-nez p1, :cond_6

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 85
    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, "%"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    const-string v0, "S"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->u()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, ""

    .line 127
    .line 128
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    if-nez p1, :cond_8

    .line 142
    .line 143
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_off_white_24:I

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_up_white_24:I

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 156
    .line 157
    .line 158
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 159
    .line 160
    invoke-interface {p1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->f()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 165
    .line 166
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->e()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object v2, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 171
    .line 172
    rem-int/lit16 v3, v0, 0x3e8

    .line 173
    .line 174
    const/16 v4, 0x3e8

    .line 175
    .line 176
    rsub-int v3, v3, 0x3e8

    .line 177
    .line 178
    int-to-long v5, v3

    .line 179
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    .line 181
    .line 182
    const-string v2, "00:00"

    .line 183
    .line 184
    if-nez p1, :cond_9

    .line 185
    .line 186
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    if-ge p1, v4, :cond_b

    .line 208
    .line 209
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 210
    .line 211
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 212
    .line 213
    .line 214
    if-le v0, p1, :cond_a

    .line 215
    .line 216
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 217
    .line 218
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 225
    .line 226
    .line 227
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    const-string v1, "00:01"

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 241
    .line 242
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 243
    .line 244
    .line 245
    if-le v0, p1, :cond_c

    .line 246
    .line 247
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 248
    .line 249
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_c
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 254
    .line 255
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 256
    .line 257
    int-to-float v3, v0

    .line 258
    mul-float/2addr v3, v2

    .line 259
    int-to-float v2, p1

    .line 260
    div-float/2addr v3, v2

    .line 261
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 266
    .line 267
    .line 268
    :goto_3
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    .line 270
    int-to-long v2, p1

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/video/VideoControl;->n(J)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 279
    .line 280
    int-to-long v1, v0

    .line 281
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/video/VideoControl;->n(J)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 289
    .line 290
    invoke-interface {p1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->g()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_d

    .line 295
    .line 296
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 297
    .line 298
    invoke-interface {p1, v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->A(I)V

    .line 299
    .line 300
    .line 301
    :cond_d
    :goto_5
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoControl;->setIconsPressed(Z)V

    .line 13
    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeRelative;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 95
    .line 96
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->c()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 104
    .line 105
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    if-eqz v0, :cond_c

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    if-eqz v0, :cond_d

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    if-eqz v0, :cond_e

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 137
    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    if-eqz v0, :cond_f

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 149
    .line 150
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    if-eqz v0, :cond_10

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    if-eqz v0, :cond_11

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 167
    .line 168
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 169
    .line 170
    if-eqz v0, :cond_12

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    :cond_12
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    .line 180
    .line 181
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 184
    .line 185
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    .line 190
    .line 191
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 192
    .line 193
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 194
    .line 195
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 196
    .line 197
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 198
    .line 199
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->q0:Landroid/webkit/WebView;

    .line 202
    .line 203
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->s0:Landroid/widget/FrameLayout;

    .line 204
    .line 205
    iput-object v1, p0, Lcom/mycompany/app/video/VideoControl;->t0:Landroid/widget/FrameLayout;

    .line 206
    .line 207
    return-void
.end method

.method public getCastCtrl()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->t0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCastIcon()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->s0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->f()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v0, v0

    .line 12
    invoke-static {v0, v1, p1, p2}, Lcom/mycompany/app/main/MainUtil;->q2(JJ)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->D()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->o0:Lcom/mycompany/app/video/VideoControl$EventHandler;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->A()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mycompany/app/view/MyFadeRelative;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->A()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mycompany/app/view/MyFadeRelative;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->A()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 8
    .line 9
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->isPressed()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_2

    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 151
    return v0

    .line 152
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 153
    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final s(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public setIconClicked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIconDown(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoControl;->p0:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoControl;->p0:Z

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move v1, v0

    .line 36
    :goto_0
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setIconsPressed(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public setNaviHeight(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->r()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/video/VideoControl;->C:I

    .line 12
    .line 13
    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoControl;->D:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTouchLock(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move p1, v1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    const/16 v0, 0x8

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/mycompany/app/video/VideoControl;->setIconShow(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 33
    .line 34
    invoke-virtual {p1, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 43
    .line 44
    sget v0, Lnet/kaki87/soul2/testing/R$string;->touch_locked:I

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-direct {p0, v2}, Lcom/mycompany/app/video/VideoControl;->setIconShow(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoControl;->p0:Z

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v1, v0

    .line 71
    :goto_0
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 75
    .line 76
    sget v0, Lnet/kaki87/soul2/testing/R$string;->touch_unlocked:I

    .line 77
    .line 78
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    :goto_2
    return-void

    .line 86
    :cond_5
    new-instance p1, Lcom/mycompany/app/video/VideoControl$26;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/mycompany/app/video/VideoControl$26;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoControl;->setIconsPressed(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final t(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "00:00"

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->w()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/16 v2, 0x3e8

    .line 31
    .line 32
    if-ge p1, v2, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 39
    .line 40
    invoke-interface {p1, p2}, Lcom/mycompany/app/video/VideoControl$ControlListener;->h(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const-string v0, "00:01"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/mycompany/app/video/VideoControl$ControlListener;->A(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 62
    .line 63
    .line 64
    int-to-float v0, p1

    .line 65
    int-to-float p2, p2

    .line 66
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 67
    .line 68
    div-float/2addr p2, v1

    .line 69
    mul-float/2addr p2, v0

    .line 70
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 75
    .line 76
    invoke-interface {v0, p2}, Lcom/mycompany/app/video/VideoControl$ControlListener;->h(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    int-to-long v1, p1

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/video/VideoControl;->n(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    int-to-long v0, p2

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/video/VideoControl;->n(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 100
    .line 101
    invoke-interface {p1, p2}, Lcom/mycompany/app/video/VideoControl$ControlListener;->A(I)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 14
    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move v1, v3

    .line 23
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 32
    .line 33
    invoke-virtual {v0, v3, v2, v4, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 48
    .line 49
    if-ne v2, v1, :cond_5

    .line 50
    .line 51
    :goto_2
    return-void

    .line 52
    :cond_5
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_repeat_white_24:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_right_alt_white_24:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->G()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_white_24:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->g()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_lock_portrait_white_24:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_lock_landscape_white_24:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_rotation_white_24:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final y(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ZZLcom/mycompany/app/video/VideoControl$ControlListener;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->A:Landroid/view/Window;

    move-object/from16 v1, p5

    .line 3
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    move/from16 v1, p3

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoControl;->D:Z

    move/from16 v1, p4

    .line 5
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 6
    new-instance v1, Lcom/mycompany/app/video/VideoControl$1;

    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoControl$1;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 7
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->z:Lcom/mycompany/app/main/MainActivity;

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/mycompany/app/video/VideoControl;->R:I

    .line 9
    iget-object v2, v0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    const/high16 v3, 0x42d80000    # 108.0f

    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/mycompany/app/video/VideoControl;->S:I

    .line 10
    iget-object v2, v0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/mycompany/app/video/VideoControl;->U:I

    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$id;->ctrl_bottom_view:I

    .line 12
    sget v3, Lnet/kaki87/soul2/testing/R$id;->ctrl_icon_play:I

    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->ctrl_vol_info:I

    .line 14
    sget v5, Lnet/kaki87/soul2/testing/R$id;->ctrl_pad_bot:I

    .line 15
    sget v6, Lnet/kaki87/soul2/testing/R$id;->ctrl_curr_time:I

    .line 16
    sget v7, Lnet/kaki87/soul2/testing/R$id;->ctrl_total_time:I

    .line 17
    sget v8, Lnet/kaki87/soul2/testing/R$id;->ctrl_cast_icon:I

    .line 18
    iget-boolean v9, v0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    if-eqz v9, :cond_1

    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    goto :goto_0

    :cond_1
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    :goto_0
    const/4 v11, 0x0

    if-eqz v9, :cond_2

    .line 19
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_2
    move v9, v11

    .line 20
    :goto_1
    invoke-direct {v0}, Lcom/mycompany/app/video/VideoControl;->getNaviHeight()I

    move-result v12

    .line 21
    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v13, v5}, Landroid/view/View;->setId(I)V

    const/high16 v14, -0x5f000000

    .line 23
    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v15, 0x4

    if-lez v12, :cond_3

    .line 24
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_2
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v14, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xc

    .line 27
    invoke-virtual {v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    invoke-virtual {v0, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v12, v8}, Landroid/view/View;->setId(I)V

    .line 31
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 32
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    const/4 v11, -0x2

    invoke-direct {v14, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x15

    .line 33
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {v0, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 36
    invoke-direct {v14, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v15, 0x41400000    # 12.0f

    .line 37
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v15

    float-to-int v15, v15

    .line 38
    sget v11, Lcom/mycompany/app/main/MainApp;->h1:I

    move-object/from16 v16, v12

    const/4 v12, 0x0

    invoke-virtual {v14, v11, v12, v15, v12}, Landroid/view/View;->setPadding(IIII)V

    const/16 v11, 0x10

    .line 39
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v12, 0x1

    .line 40
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 41
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v15, 0x41800000    # 16.0f

    .line 42
    invoke-virtual {v14, v12, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x1

    .line 43
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, -0x5f000000

    .line 44
    invoke-virtual {v14, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v18, v13

    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v12, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {v12, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    invoke-virtual {v0, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    invoke-virtual {v8, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    const v13, -0x5e8a8a8b

    .line 51
    invoke-virtual {v8, v13}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 52
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v15, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    iput v9, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 54
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 55
    invoke-virtual {v0, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v10, v11, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 58
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 59
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x15

    .line 61
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 63
    invoke-virtual {v0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v11, v11

    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v15, v15

    invoke-virtual {v10, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const/high16 v11, -0x5f000000

    .line 67
    invoke-virtual {v10, v11, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 68
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v10, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 69
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_zoom_out_map_white_24:I

    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 72
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v13, v13

    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v13, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 73
    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 74
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v11, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 75
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v19, v11

    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v11, v11

    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 78
    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 79
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v13, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 80
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_slow_motion_video_white_24:I

    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 83
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v20, v13

    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v13, v13

    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v13, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 84
    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 85
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v11, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 86
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_crop_white_24:I

    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 89
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v21, v11

    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v11, v11

    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 90
    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 91
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v13, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 92
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_in_picture_alt_white_24:I

    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v22, v13

    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v13, v13

    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v13, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 96
    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 97
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v11, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 98
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_white_24:I

    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 101
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v23, v11

    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v11, v11

    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 102
    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 103
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v9, v13, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 104
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoControl;->r()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 105
    iget v11, v0, Lcom/mycompany/app/video/VideoControl;->R:I

    goto :goto_3

    .line 106
    :cond_4
    iget v11, v0, Lcom/mycompany/app/video/VideoControl;->S:I

    .line 107
    :goto_3
    iput v11, v0, Lcom/mycompany/app/video/VideoControl;->T:I

    .line 108
    new-instance v15, Lcom/mycompany/app/view/MyAreaView;

    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyAreaView;-><init>(Landroid/content/Context;)V

    move-object/from16 v24, v13

    const/4 v13, 0x1

    .line 109
    invoke-virtual {v15, v13}, Lcom/mycompany/app/view/MyAreaView;->setSkipDraw(Z)V

    const/4 v13, 0x4

    .line 110
    invoke-virtual {v15, v13}, Landroid/view/View;->setVisibility(I)V

    const/high16 v13, 0x43200000    # 160.0f

    .line 111
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 p3, v10

    .line 112
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 115
    invoke-virtual {v0, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v10, Lcom/mycompany/app/view/MyButtonCheck;

    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 117
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_red_24:I

    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_white_24:I

    invoke-virtual {v10, v11, v13}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 118
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v11, v11

    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v13, v13

    invoke-virtual {v10, v11, v13}, Lcom/mycompany/app/view/MyButtonCheck;->o(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v13, -0x5f000000

    .line 119
    invoke-virtual {v10, v13, v11}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 120
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x15

    .line 121
    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    move/from16 v25, v13

    const/4 v13, 0x2

    mul-int/lit8 v25, v25, 0x2

    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    move-object/from16 v26, v15

    add-int v15, v25, v13

    iput v15, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 124
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v11, v3}, Landroid/view/View;->setId(I)V

    .line 127
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 129
    sget v13, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v13, v13

    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v15, v15

    invoke-virtual {v11, v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v13, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 130
    invoke-virtual {v11, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 131
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v13, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 132
    invoke-virtual {v13, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0xe

    .line 133
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    iput v15, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 135
    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 139
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v25, v11

    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v11, v11

    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 140
    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 141
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 142
    invoke-virtual {v11, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x10

    .line 143
    invoke-virtual {v11, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    iput v15, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/high16 v15, 0x42000000    # 32.0f

    move-object/from16 v27, v10

    .line 145
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 146
    invoke-virtual {v0, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 150
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v11, v11

    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v15, v15

    invoke-virtual {v10, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 151
    invoke-virtual {v10, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 152
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 153
    invoke-virtual {v11, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x11

    .line 154
    invoke-virtual {v11, v15, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/high16 v3, 0x42000000    # 32.0f

    .line 156
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 157
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_white_24:I

    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 161
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v11, v11

    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v15, v15

    invoke-virtual {v3, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 162
    invoke-virtual {v3, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 163
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 164
    invoke-virtual {v11, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    iput v15, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 166
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 167
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_subtitles_white_24:I

    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 171
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v28, v3

    sget v3, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v3, v3

    invoke-virtual {v11, v15, v3}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v3, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 172
    invoke-virtual {v11, v15, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 173
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v3, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 174
    invoke-virtual {v3, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x15

    .line 175
    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    iput v15, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 177
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 178
    invoke-virtual {v0, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_white_24:I

    invoke-virtual {v3, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 182
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v15, v15

    move-object/from16 v29, v11

    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v11, v11

    invoke-virtual {v3, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 183
    invoke-virtual {v3, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 184
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 185
    invoke-virtual {v11, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v15, 0x42880000    # 68.0f

    move-object/from16 v30, v10

    .line 186
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    iput v10, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 187
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 188
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v10, Lcom/mycompany/app/view/MyTextView;

    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x10

    .line 190
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v15, 0x1

    .line 191
    invoke-virtual {v10, v15, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x1

    .line 192
    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    const/4 v15, 0x0

    .line 193
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v11, -0x1000000

    .line 194
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 195
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    move-object/from16 v31, v3

    const/4 v3, -0x2

    invoke-direct {v15, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x2

    .line 196
    invoke-virtual {v15, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x42880000    # 68.0f

    .line 197
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v11

    float-to-int v3, v11

    iput v3, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 198
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 199
    invoke-virtual {v0, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_up_white_24:I

    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 203
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v11, v11

    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v15, v15

    invoke-virtual {v3, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 204
    invoke-virtual {v3, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 205
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 206
    invoke-virtual {v11, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x15

    .line 207
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v32, v10

    const/high16 v15, 0x42880000    # 68.0f

    .line 208
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    iput v10, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 209
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 210
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v10, Lcom/mycompany/app/view/MyTextView;

    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    const v11, 0x800015

    .line 213
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v15, 0x1

    .line 214
    invoke-virtual {v10, v15, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x1

    .line 215
    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    const/4 v15, 0x0

    .line 216
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v11, -0x1000000

    .line 217
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 218
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 219
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    move-object/from16 v17, v3

    const/4 v3, -0x2

    invoke-direct {v11, v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 220
    invoke-virtual {v11, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x15

    .line 221
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v15, 0x42880000    # 68.0f

    .line 222
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 223
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 224
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 228
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    int-to-float v11, v11

    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    int-to-float v12, v12

    invoke-virtual {v3, v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    const v11, -0x5e8a8a8b

    const/high16 v15, -0x5f000000

    .line 229
    invoke-virtual {v3, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    const/16 v11, 0x8

    .line 230
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 231
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v12, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x2

    .line 232
    invoke-virtual {v12, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v15, 0x10

    .line 233
    invoke-virtual {v12, v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v15, 0x42880000    # 68.0f

    .line 234
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 235
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 236
    invoke-virtual {v0, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 239
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    const/4 v15, 0x0

    invoke-virtual {v4, v2, v15, v2, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutDirection(I)V

    const/high16 v15, -0x5f000000

    .line 241
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    const/4 v15, -0x1

    invoke-direct {v2, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x2

    .line 243
    invoke-virtual {v2, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v12, 0x0

    .line 246
    invoke-direct {v2, v1, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    const/4 v12, 0x1

    .line 248
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 249
    invoke-virtual {v2, v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 250
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 252
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v12, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xf

    .line 253
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 254
    invoke-virtual {v4, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 256
    invoke-direct {v12, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    invoke-virtual {v12, v7}, Landroid/view/View;->setId(I)V

    const/4 v15, 0x1

    .line 258
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    invoke-virtual {v12, v15, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x1

    .line 260
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 262
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xf

    .line 263
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v15, 0x15

    .line 264
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    invoke-virtual {v4, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v11, Landroid/widget/SeekBar;

    invoke-direct {v11, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 267
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_w:I

    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_w:I

    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 269
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 p5, v2

    move-object/from16 p4, v12

    const/4 v2, -0x1

    const/4 v12, -0x2

    invoke-direct {v15, v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 270
    invoke-virtual {v15, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x10

    .line 271
    invoke-virtual {v15, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    .line 272
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    invoke-virtual {v4, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 275
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    const/4 v15, -0x1

    .line 276
    invoke-static {v15, v12, v1, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, v18

    .line 278
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->E:Landroid/view/View;

    .line 279
    iput-object v14, v0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    iput-object v8, v0, Lcom/mycompany/app/video/VideoControl;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 281
    iput-object v9, v0, Lcom/mycompany/app/video/VideoControl;->H:Landroid/widget/LinearLayout;

    move-object/from16 v1, p3

    .line 282
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v19

    .line 283
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v20

    .line 284
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v21

    .line 285
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v22

    .line 286
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->M:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v23

    .line 287
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v24

    .line 288
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v27

    .line 289
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    move-object/from16 v1, v26

    .line 290
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->Q:Lcom/mycompany/app/view/MyAreaView;

    .line 291
    iput-object v4, v0, Lcom/mycompany/app/video/VideoControl;->V:Landroid/widget/RelativeLayout;

    .line 292
    iput-object v13, v0, Lcom/mycompany/app/video/VideoControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v25

    .line 293
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v30

    .line 294
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v28

    .line 295
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v29

    .line 296
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 297
    iput-object v3, v0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v31

    .line 298
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->f0:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v1, v32

    .line 299
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->g0:Lcom/mycompany/app/view/MyTextView;

    move-object/from16 v1, v17

    .line 300
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 301
    iput-object v10, v0, Lcom/mycompany/app/video/VideoControl;->i0:Lcom/mycompany/app/view/MyTextView;

    .line 302
    iput-object v11, v0, Lcom/mycompany/app/video/VideoControl;->j0:Landroid/widget/SeekBar;

    move-object/from16 v1, p4

    .line 303
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p5

    .line 304
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, v16

    .line 305
    iput-object v1, v0, Lcom/mycompany/app/video/VideoControl;->s0:Landroid/widget/FrameLayout;

    .line 306
    iput-object v2, v0, Lcom/mycompany/app/video/VideoControl;->t0:Landroid/widget/FrameLayout;

    .line 307
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->L()V

    .line 308
    :cond_5
    new-instance v1, Lcom/mycompany/app/video/VideoControl$2;

    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoControl$2;-><init>(Lcom/mycompany/app/video/VideoControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->F:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/video/VideoControl;->q0:Landroid/webkit/WebView;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoControl;->r0:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->u()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoControl;->p()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoControl;->setIconShow(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 33
    .line 34
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-direct {p0, v3}, Lcom/mycompany/app/video/VideoControl;->setIconShow(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->P:Lcom/mycompany/app/view/MyButtonCheck;

    .line 52
    .line 53
    invoke-virtual {v1, v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/mycompany/app/video/VideoControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    iget-boolean v3, p0, Lcom/mycompany/app/video/VideoControl;->p0:Z

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v0, v2

    .line 64
    :goto_0
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
