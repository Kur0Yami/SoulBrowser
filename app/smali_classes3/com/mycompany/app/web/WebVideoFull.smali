.class public Lcom/mycompany/app/web/WebVideoFull;
.super Lcom/mycompany/app/web/WebVideoFrame;
.source "SourceFile"


# static fields
.field public static final o1:[F


# instance fields
.field public A:Lcom/mycompany/app/view/MyButtonCheck;

.field public A0:Z

.field public B:Lcom/mycompany/app/view/MyButtonImage;

.field public B0:Z

.field public C:Lcom/mycompany/app/view/MyButtonImage;

.field public C0:Z

.field public D:Lcom/mycompany/app/view/MyButtonImage;

.field public D0:Z

.field public E:Lcom/mycompany/app/view/MyButtonCheck;

.field public E0:I

.field public F:Lcom/mycompany/app/view/MyButtonImage;

.field public F0:I

.field public G:Lcom/mycompany/app/view/MyButtonImage;

.field public G0:F

.field public H:Lcom/mycompany/app/view/MyTextView;

.field public H0:Z

.field public I:Lcom/mycompany/app/view/MyButtonImage;

.field public I0:Z

.field public J:Lcom/mycompany/app/view/MyTextView;

.field public J0:Z

.field public K:Lcom/mycompany/app/web/WebVideoProgress;

.field public K0:Z

.field public L:Lcom/mycompany/app/web/WebVideoProgress;

.field public L0:Ljava/util/concurrent/ExecutorService;

.field public M:Lcom/mycompany/app/web/WebVideoProgress;

.field public M0:Z

.field public N:Landroid/view/View;

.field public N0:Z

.field public O:Landroid/view/View;

.field public O0:Z

.field public P:Landroid/view/View;

.field public P0:Z

.field public Q:Z

.field public Q0:I

.field public R:Lcom/mycompany/app/view/MyFadeFrame;

.field public R0:I

.field public S:Lcom/mycompany/app/view/MyFadeFrame;

.field public S0:I

.field public T:I

.field public T0:I

.field public U:Ljava/lang/String;

.field public U0:I

.field public V:Z

.field public V0:Z

.field public W:Z

.field public W0:Z

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public a0:Z

.field public a1:F

.field public b0:Z

.field public b1:I

.field public c:Lcom/mycompany/app/main/MainActivity;

.field public c0:J

.field public c1:Z

.field public d0:Z

.field public final d1:Ljava/lang/Runnable;

.field public e0:J

.field public e1:Z

.field public f:Landroid/content/Context;

.field public f0:J

.field public f1:F

.field public g:Z

.field public g0:J

.field public g1:F

.field public h:Z

.field public h0:Z

.field public h1:Ljava/lang/String;

.field public i:Z

.field public i0:Landroid/view/GestureDetector;

.field public final i1:Ljava/lang/Runnable;

.field public j:Landroid/view/ViewGroup;

.field public j0:Z

.field public j1:Landroid/view/MotionEvent;

.field public k:Lcom/mycompany/app/web/WebNestView;

.field public k0:F

.field public final k1:Ljava/lang/Runnable;

.field public l:Ljava/lang/String;

.field public l0:F

.field public l1:I

.field public m:Landroid/view/View;

.field public m0:I

.field public m1:J

.field public n:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public n0:Z

.field public n1:J

.field public o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

.field public o0:Z

.field public p:Lcom/mycompany/app/view/MySizeFrame;

.field public p0:Z

.field public q:Lcom/mycompany/app/view/MyFadeRelative;

.field public q0:Z

.field public r:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Z

.field public s:Lcom/mycompany/app/view/MyButtonImage;

.field public s0:Z

.field public t:Landroid/widget/LinearLayout;

.field public t0:Lcom/mycompany/app/view/MyPopupMenu;

.field public u:Lcom/mycompany/app/view/MyButtonImage;

.field public u0:Lcom/mycompany/app/view/MyPopupMenu;

.field public v:Lcom/mycompany/app/view/MyButtonImage;

.field public v0:Lcom/mycompany/app/view/MyPopupMenu;

.field public w:Lcom/mycompany/app/view/MyButtonImage;

.field public w0:Z

.field public x:Lcom/mycompany/app/view/MyButtonImage;

.field public x0:Lcom/mycompany/app/dialog/DialogSeekBright;

.field public y:Lcom/mycompany/app/view/MyButtonImage;

.field public y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

.field public z:Lcom/mycompany/app/view/MyButtonImage;

.field public z0:Landroid/app/PictureInPictureParams$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x3fe00000    # 1.75f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$65;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$65;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->d1:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$83;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$83;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i1:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$84;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$84;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k1:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method

.method public static bridge synthetic A(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/web/WebVideoFull;->getVideoSize()V

    return-void
.end method

.method public static B(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->k:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v2, 0xd

    .line 11
    .line 12
    const-string v3, "mGuideLong2"

    .line 13
    .line 14
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public static C(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->U:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebVideoFull;->setTitle(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 13
    .line 14
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$1;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$2;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$2;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibleListener(Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$3;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$3;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebVideoProgress;->i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/web/WebVideoProgress;->i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$4;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$4;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/web/WebVideoProgress;->i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$5;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$5;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->f0()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$6;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$6;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$7;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$7;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->e0()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->w:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$8;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$8;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$9;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$9;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$10;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$10;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->x:Z

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$11;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$11;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setCheckArea(Z)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 150
    .line 151
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$12;

    .line 152
    .line 153
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$12;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$13;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$13;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$14;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$14;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$15;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$15;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 190
    .line 191
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->y:Z

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setNoti(Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 197
    .line 198
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 199
    .line 200
    if-eqz v1, :cond_1

    .line 201
    .line 202
    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    .line 206
    .line 207
    .line 208
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 212
    .line 213
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 214
    .line 215
    const/4 v4, 0x0

    .line 216
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 220
    .line 221
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$16;

    .line 222
    .line 223
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$16;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$17;

    .line 232
    .line 233
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$17;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 240
    .line 241
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$18;

    .line 242
    .line 243
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$18;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 250
    .line 251
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$19;

    .line 252
    .line 253
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$19;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Landroid/view/GestureDetector;

    .line 260
    .line 261
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 262
    .line 263
    new-instance v5, Lcom/mycompany/app/web/WebVideoFull$20;

    .line 264
    .line 265
    invoke-direct {v5, p0}, Lcom/mycompany/app/web/WebVideoFull$20;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 269
    .line 270
    .line 271
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i0:Landroid/view/GestureDetector;

    .line 272
    .line 273
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 274
    .line 275
    invoke-direct {p0, v0}, Lcom/mycompany/app/web/WebVideoFull;->setIconShow(Z)V

    .line 276
    .line 277
    .line 278
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 279
    .line 280
    if-ne v0, v3, :cond_4

    .line 281
    .line 282
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->Q:Z

    .line 283
    .line 284
    if-nez v0, :cond_4

    .line 285
    .line 286
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->N:Landroid/view/View;

    .line 287
    .line 288
    if-nez v0, :cond_2

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_2
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->Q:Z

    .line 292
    .line 293
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 294
    .line 295
    if-nez v0, :cond_3

    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$49;

    .line 299
    .line 300
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$49;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 304
    .line 305
    .line 306
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 307
    .line 308
    const/4 v1, -0x1

    .line 309
    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 310
    .line 311
    .line 312
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->j:Z

    .line 313
    .line 314
    if-eqz v0, :cond_8

    .line 315
    .line 316
    if-eqz v0, :cond_9

    .line 317
    .line 318
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 319
    .line 320
    if-eqz v0, :cond_5

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 324
    .line 325
    if-nez v0, :cond_6

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 329
    .line 330
    if-nez v0, :cond_7

    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_7
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$21;

    .line 334
    .line 335
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$21;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_8
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->k:Z

    .line 343
    .line 344
    if-eqz v0, :cond_9

    .line 345
    .line 346
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 347
    .line 348
    if-eqz v0, :cond_9

    .line 349
    .line 350
    invoke-virtual {p0, v4}, Lcom/mycompany/app/web/WebVideoFull;->n0(Z)V

    .line 351
    .line 352
    .line 353
    :cond_9
    :goto_2
    return-void
.end method

.method public static D(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "var vdEle=null;var vdSeek=false;"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    .line 21
    :cond_1
    const-string v1, "var youConEle=null;var youConVal=null;var youConOsb=null;var youExpEle=null;var youExpVal=null;var youExpOsb=null;function myYouCon(name){return (name&&name.endsWith(\'fadein\'))?1:0;}"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_2
    const-string v1, "function myVidPlaying(){android.onVidResult(\'onVidPaused\',0);}function myVidPaused(){android.onVidResult(\'onVidPaused\',1);}function myVidSeeking(){vdSeek=true;android.onVidResult(\'onVidSeek\',1);}function myVidSeeked(){vdSeek=false;android.onVidResult(\'onVidSeek\',0);}function myVidPlay(){if(vdEle){vdEle.play();}}function myChkPlay(){if(vdEle){if(vdEle.paused){vdEle.play();}}}function myVidPause(){if(vdEle){vdEle.pause();}}function myVidToggle(){if(vdEle){if(vdEle.paused){vdEle.play();}else{vdEle.pause();}}}function myVidDur(){if(vdEle){var val=vdEle.duration;if(val){vdEle.removeEventListener(\'timeupdate\',myVidDur);android.onVidResult(\'onVidDur\',val);}}}function myVidPos(){var val=\'undefined\';if(vdEle){val=vdEle.currentTime;}android.onVidResult(\'onVidPos\',val);}function myVidTime(){var val=\'undefined\';var va2=\'undefined\';if(vdEle){val=vdEle.duration;va2=vdEle.currentTime;}android.onVidTime(val,va2);}function myVidFrwd(){if(vdEle&&!vdSeek){var pos=vdEle.currentTime;if(pos>10){vdEle.currentTime=pos-10;}else{vdEle.currentTime=0;}}}function myVidFfwd(){if(vdEle&&!vdSeek){var pos=vdEle.currentTime;if(pos+10<vdEle.duration){vdEle.currentTime=pos+10;}else{vdEle.currentTime=vdEle.duration;}}}function myVidSeekPos(time){if(vdEle&&!vdSeek){vdEle.currentTime=time;}}function myVidLoop(loop){if(vdEle){vdEle.loop=loop;}}function myVidRate(){var val=1;if(vdEle){val=vdEle.playbackRate;}android.onVidResult(\'onVidRate\',val);}function myVidRat2(rate){var val=0;if(vdEle){vdEle.playbackRate=rate;val=rate;}android.onVidResult(\'onVidRat2\',val);}function myVidSize(){var val=0;if(vdEle){var vst=vdEle.style;val=vst.width+\'/\'+vst.height;}android.onVidResult(\'onVidSize\',val);}(function(){if(vdEle)return;var eles=document.querySelectorAll(\"video\");if(eles&&(eles.length>0)){if(eles.length==1){vdEle=eles[0];}else{for(var i=0;i<eles.length;i++){if(!eles[i].paused&&eles[i].duration){vdEle=eles[i];break;}}if(!vdEle){vdEle=eles[0];}}}if(!vdEle){eles=document.querySelectorAll(\"source[type*=\'video\']\");if(eles&&(eles.length>0)){if(eles.length==1){vdEle=eles[0].parentNode;}else{for(var i=0;i<eles.length;i++){if(!eles[i].parentNode.paused&&eles[i].parentNode.duration){vdEle=eles[i].parentNode;break;}}if(!vdEle){vdEle=eles[0].parentNode;}}}}if(!vdEle){android.onVidFound(false,false,null);return;}vdEle.addEventListener(\'playing\',myVidPlaying);vdEle.addEventListener(\'pause\',myVidPaused);vdEle.addEventListener(\'seeking\',myVidSeeking);vdEle.addEventListener(\'seeked\',myVidSeeked);"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_3

    .line 34
    .line 35
    if-ne v1, v2, :cond_4

    .line 36
    .line 37
    :cond_3
    const-string v1, "youConEle=document.querySelector(\"div[id=\'player-control-overlay\']\");if(youConEle){youConVal=myYouCon(youConEle.className);android.onVidResult(\'onYouCon\',youConVal);youConOsb=new MutationObserver(function(){var val=myYouCon(youConEle.className);if(val!=youConVal){youConVal=val;android.onVidResult(\'onYouCon\',youConVal);}});youConOsb.observe(youConEle,{attributes:true,childList:true});}youExpEle=document.querySelector(\"player-fullscreen-top-controls\");if(youExpEle){youExpVal=youExpEle.style.visibility;android.onVidResult(\'onYouExp\',youExpVal);youExpOsb=new MutationObserver(function(){var val=youExpEle.style.visibility;if(youExpVal!=val){youExpVal=val;android.onVidResult(\'onYouExp\',youExpVal);}});youExpOsb.observe(youExpEle,{attributes:true,childList:true});}"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_4
    const-string v1, "var psd=vdEle.paused;var dur=vdEle.duration;if(!dur){vdEle.addEventListener(\'timeupdate\',myVidDur);}android.onVidFound(true,psd,dur);vdEle.loop="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ";"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 58
    .line 59
    if-ne v1, v3, :cond_5

    .line 60
    .line 61
    const-string v1, "if(psd){vdEle.play();}"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_5
    const-string v1, "})();"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static E(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$48;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$48;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x64

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static F(Lcom/mycompany/app/web/WebVideoFull;ZZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebVideoFull;->Y(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 13
    .line 14
    if-nez p2, :cond_f

    .line 15
    .line 16
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 23
    .line 24
    if-eqz p2, :cond_f

    .line 25
    .line 26
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_3
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$50;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$50;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_4
    iget-boolean v0, v1, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 57
    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$51;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$51;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p0:Z

    .line 71
    .line 72
    if-nez v0, :cond_d

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q0:Z

    .line 75
    .line 76
    if-nez v0, :cond_d

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_7

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_7
    iget-boolean p2, p0, Lcom/mycompany/app/web/WebVideoFull;->o0:Z

    .line 86
    .line 87
    if-eqz p2, :cond_9

    .line 88
    .line 89
    if-nez p1, :cond_9

    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 92
    .line 93
    if-nez p1, :cond_8

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_8
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$53;

    .line 97
    .line 98
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$53;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :cond_9
    sget-boolean p2, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 106
    .line 107
    if-eq p2, p1, :cond_a

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_a
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->V:Z

    .line 111
    .line 112
    if-nez p1, :cond_b

    .line 113
    .line 114
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 115
    .line 116
    if-nez p1, :cond_b

    .line 117
    .line 118
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->M0:Z

    .line 119
    .line 120
    if-nez p1, :cond_b

    .line 121
    .line 122
    new-instance p1, Lcom/mycompany/app/web/WebVideoFull$54;

    .line 123
    .line 124
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebVideoFull$54;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->c0(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    :cond_b
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 131
    .line 132
    if-nez p1, :cond_c

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_c
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$55;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$55;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 145
    .line 146
    if-nez p1, :cond_e

    .line 147
    .line 148
    :goto_1
    return v2

    .line 149
    :cond_e
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$52;

    .line 150
    .line 151
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$52;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    .line 156
    .line 157
    return v2

    .line 158
    :cond_f
    :goto_2
    return v0
.end method

.method public static bridge synthetic G(Lcom/mycompany/app/web/WebVideoFull;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setIconPlay(Z)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/mycompany/app/web/WebVideoFull;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setIconShow(Z)V

    return-void
.end method

.method public static bridge synthetic I(Lcom/mycompany/app/web/WebVideoFull;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setPipParam2(Z)V

    return-void
.end method

.method public static J(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->h:Z

    .line 8
    .line 9
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$42;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$42;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x320

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static K(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->d1:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->c1:Z

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/web/WebVideoFull;->b1:I

    .line 17
    .line 18
    sget v3, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->c1:Z

    .line 25
    .line 26
    iput v3, p0, Lcom/mycompany/app/web/WebVideoFull;->b1:I

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 33
    .line 34
    sget-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 35
    .line 36
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 45
    .line 46
    const-wide/16 v1, 0x64

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic L(Lcom/mycompany/app/web/WebVideoFull;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setTouchLock(Z)V

    return-void
.end method

.method public static M(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j1:Landroid/view/MotionEvent;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->N0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1f

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->j0:Z

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1e

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->p0:Z

    .line 24
    .line 25
    if-nez v1, :cond_1d

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->q0:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    float-to-int v1, v1

    .line 49
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    float-to-int v5, v5

    .line 54
    invoke-virtual {p0, v1, v5}, Lcom/mycompany/app/web/WebVideoFull;->Z(II)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Lcom/mycompany/app/web/WebVideoFull;->Y(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 70
    .line 71
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 75
    .line 76
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 80
    .line 81
    invoke-virtual {p0, v4, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 86
    .line 87
    const/4 v5, 0x3

    .line 88
    if-nez v1, :cond_19

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget v6, p0, Lcom/mycompany/app/web/WebVideoFull;->k0:F

    .line 95
    .line 96
    sub-float v6, v1, v6

    .line 97
    .line 98
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iget v8, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 107
    .line 108
    sub-float/2addr v7, v8

    .line 109
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    iget-boolean v8, p0, Lcom/mycompany/app/web/WebVideoFull;->r0:Z

    .line 114
    .line 115
    if-eqz v8, :cond_7

    .line 116
    .line 117
    sget v0, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 118
    .line 119
    int-to-float v0, v0

    .line 120
    cmpl-float v1, v6, v0

    .line 121
    .line 122
    if-gtz v1, :cond_5

    .line 123
    .line 124
    cmpl-float v0, v7, v0

    .line 125
    .line 126
    if-lez v0, :cond_1f

    .line 127
    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 139
    .line 140
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 144
    .line 145
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 149
    .line 150
    invoke-virtual {p0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_7
    cmpl-float v8, v6, v7

    .line 155
    .line 156
    if-lez v8, :cond_11

    .line 157
    .line 158
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 159
    .line 160
    int-to-float v1, v1

    .line 161
    cmpl-float v1, v6, v1

    .line 162
    .line 163
    if-lez v1, :cond_1f

    .line 164
    .line 165
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 166
    .line 167
    if-eqz v1, :cond_f

    .line 168
    .line 169
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    iget v6, p0, Lcom/mycompany/app/web/WebVideoFull;->U0:I

    .line 176
    .line 177
    sub-int/2addr v2, v6

    .line 178
    int-to-float v2, v2

    .line 179
    cmpg-float v1, v1, v2

    .line 180
    .line 181
    if-gez v1, :cond_f

    .line 182
    .line 183
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->d0:Z

    .line 184
    .line 185
    const-wide/16 v6, 0x0

    .line 186
    .line 187
    if-eqz v1, :cond_8

    .line 188
    .line 189
    iget-wide v1, p0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 190
    .line 191
    iput-wide v1, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 192
    .line 193
    iget-wide v8, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 194
    .line 195
    cmp-long v8, v8, v6

    .line 196
    .line 197
    if-lez v8, :cond_f

    .line 198
    .line 199
    cmp-long v1, v1, v6

    .line 200
    .line 201
    if-ltz v1, :cond_f

    .line 202
    .line 203
    :cond_8
    invoke-direct {p0}, Lcom/mycompany/app/web/WebVideoFull;->getPosition()V

    .line 204
    .line 205
    .line 206
    iget-wide v1, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 207
    .line 208
    cmp-long v1, v1, v6

    .line 209
    .line 210
    if-lez v1, :cond_c

    .line 211
    .line 212
    iget-wide v1, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 213
    .line 214
    cmp-long v1, v1, v6

    .line 215
    .line 216
    if-ltz v1, :cond_c

    .line 217
    .line 218
    iput-boolean v3, p0, Lcom/mycompany/app/web/WebVideoFull;->n0:Z

    .line 219
    .line 220
    iput v5, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 221
    .line 222
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 223
    .line 224
    if-eqz v1, :cond_9

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 227
    .line 228
    .line 229
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 230
    .line 231
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 235
    .line 236
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 240
    .line 241
    iget-wide v2, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 242
    .line 243
    iget-wide v5, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 244
    .line 245
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/mycompany/app/web/WebVideoProgress;->n(JJ)V

    .line 246
    .line 247
    .line 248
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 249
    .line 250
    if-nez v1, :cond_a

    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 255
    .line 256
    if-nez v1, :cond_b

    .line 257
    .line 258
    goto/16 :goto_2

    .line 259
    .line 260
    :cond_b
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 265
    .line 266
    .line 267
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_c
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->n0:Z

    .line 274
    .line 275
    if-nez v0, :cond_d

    .line 276
    .line 277
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 278
    .line 279
    if-eqz v0, :cond_d

    .line 280
    .line 281
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->a0:Z

    .line 282
    .line 283
    if-nez v0, :cond_d

    .line 284
    .line 285
    iput-boolean v4, p0, Lcom/mycompany/app/web/WebVideoFull;->a0:Z

    .line 286
    .line 287
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 288
    .line 289
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 290
    .line 291
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 292
    .line 293
    .line 294
    :cond_d
    iput-boolean v4, p0, Lcom/mycompany/app/web/WebVideoFull;->n0:Z

    .line 295
    .line 296
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 297
    .line 298
    if-eqz v0, :cond_e

    .line 299
    .line 300
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 301
    .line 302
    .line 303
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 304
    .line 305
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 306
    .line 307
    .line 308
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 309
    .line 310
    invoke-virtual {p0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_f
    iput-boolean v4, p0, Lcom/mycompany/app/web/WebVideoFull;->n0:Z

    .line 315
    .line 316
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 317
    .line 318
    if-eqz v0, :cond_10

    .line 319
    .line 320
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 321
    .line 322
    .line 323
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 324
    .line 325
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 326
    .line 327
    .line 328
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 329
    .line 330
    invoke-virtual {p0, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_11
    iget-boolean v5, p0, Lcom/mycompany/app/web/WebVideoFull;->n0:Z

    .line 335
    .line 336
    if-eqz v5, :cond_12

    .line 337
    .line 338
    goto/16 :goto_2

    .line 339
    .line 340
    :cond_12
    sget v5, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 341
    .line 342
    int-to-float v5, v5

    .line 343
    cmpl-float v5, v7, v5

    .line 344
    .line 345
    if-lez v5, :cond_1f

    .line 346
    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    int-to-float v5, v5

    .line 352
    const/high16 v6, 0x40000000    # 2.0f

    .line 353
    .line 354
    div-float/2addr v5, v6

    .line 355
    cmpg-float v1, v1, v5

    .line 356
    .line 357
    if-gez v1, :cond_14

    .line 358
    .line 359
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->r:Z

    .line 360
    .line 361
    if-eqz v1, :cond_16

    .line 362
    .line 363
    iput v4, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 364
    .line 365
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 366
    .line 367
    if-eqz v1, :cond_13

    .line 368
    .line 369
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 370
    .line 371
    .line 372
    :cond_13
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 373
    .line 374
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 375
    .line 376
    .line 377
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 378
    .line 379
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 380
    .line 381
    .line 382
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebVideoProgress;->m()V

    .line 385
    .line 386
    .line 387
    goto :goto_0

    .line 388
    :cond_14
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->q:Z

    .line 389
    .line 390
    if-eqz v1, :cond_16

    .line 391
    .line 392
    iput v2, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 393
    .line 394
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 395
    .line 396
    if-eqz v1, :cond_15

    .line 397
    .line 398
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 399
    .line 400
    .line 401
    :cond_15
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 402
    .line 403
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 404
    .line 405
    .line 406
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 407
    .line 408
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 409
    .line 410
    .line 411
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebVideoProgress;->m()V

    .line 414
    .line 415
    .line 416
    :cond_16
    :goto_0
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 417
    .line 418
    if-nez v1, :cond_17

    .line 419
    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :cond_17
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 423
    .line 424
    if-nez v1, :cond_18

    .line 425
    .line 426
    goto/16 :goto_2

    .line 427
    .line 428
    :cond_18
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 433
    .line 434
    .line 435
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 436
    .line 437
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_19
    const/high16 v3, -0x40800000    # -1.0f

    .line 442
    .line 443
    if-ne v1, v4, :cond_1a

    .line 444
    .line 445
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 446
    .line 447
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    iget v4, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 452
    .line 453
    sub-float/2addr v2, v4

    .line 454
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebVideoProgress;->k(Landroid/view/MotionEvent;F)F

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-nez v1, :cond_1f

    .line 463
    .line 464
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 469
    .line 470
    return-void

    .line 471
    :cond_1a
    if-ne v1, v2, :cond_1b

    .line 472
    .line 473
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 474
    .line 475
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    iget v4, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 480
    .line 481
    sub-float/2addr v2, v4

    .line 482
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebVideoProgress;->k(Landroid/view/MotionEvent;F)F

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_1f

    .line 491
    .line 492
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 497
    .line 498
    return-void

    .line 499
    :cond_1b
    if-ne v1, v5, :cond_1f

    .line 500
    .line 501
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    iget v2, p0, Lcom/mycompany/app/web/WebVideoFull;->k0:F

    .line 506
    .line 507
    sub-float/2addr v1, v2

    .line 508
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 509
    .line 510
    if-lez v2, :cond_1c

    .line 511
    .line 512
    const/16 v4, 0x64

    .line 513
    .line 514
    if-eq v2, v4, :cond_1c

    .line 515
    .line 516
    int-to-float v2, v2

    .line 517
    const/high16 v4, 0x42c80000    # 100.0f

    .line 518
    .line 519
    div-float/2addr v2, v4

    .line 520
    mul-float/2addr v1, v2

    .line 521
    :cond_1c
    iget-object v2, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 522
    .line 523
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/web/WebVideoProgress;->k(Landroid/view/MotionEvent;F)F

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-nez v1, :cond_1f

    .line 532
    .line 533
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k0:F

    .line 538
    .line 539
    return-void

    .line 540
    :cond_1d
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->m0()V

    .line 541
    .line 542
    .line 543
    return-void

    .line 544
    :cond_1e
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 545
    .line 546
    if-ne v1, v2, :cond_1f

    .line 547
    .line 548
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 549
    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    sget v4, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 555
    .line 556
    sub-int/2addr v2, v4

    .line 557
    int-to-float v2, v2

    .line 558
    cmpl-float v1, v1, v2

    .line 559
    .line 560
    if-lez v1, :cond_1f

    .line 561
    .line 562
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 567
    .line 568
    sub-float/2addr v0, v1

    .line 569
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 574
    .line 575
    int-to-float v1, v1

    .line 576
    cmpl-float v0, v0, v1

    .line 577
    .line 578
    if-lez v0, :cond_1f

    .line 579
    .line 580
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 581
    .line 582
    if-eqz p0, :cond_1f

    .line 583
    .line 584
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 585
    .line 586
    .line 587
    :cond_1f
    :goto_2
    return-void
.end method

.method public static N(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l1:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m1:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyFadeRelative;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v0, v4, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0, v4, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const/4 v5, 0x2

    .line 26
    if-ne v0, v5, :cond_4

    .line 27
    .line 28
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 29
    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_4
    const/4 v6, 0x3

    .line 38
    if-ne v0, v6, :cond_6

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 41
    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v1, v2}, Lcom/mycompany/app/web/WebVideoFull;->setSeekTouchUp(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_6
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 53
    .line 54
    if-eq v0, v5, :cond_8

    .line 55
    .line 56
    if-ne v0, v6, :cond_7

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_7
    :goto_0
    return-void

    .line 60
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->R()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static bridge synthetic O(Lcom/mycompany/app/web/WebVideoFull;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setVideoLoop(Z)V

    return-void
.end method

.method public static P(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->I0:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->K6(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->K6(Landroid/content/Context;F)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget v2, p0, Lcom/mycompany/app/web/WebVideoFull;->G0:F

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    cmpl-float v3, v2, v3

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    if-lez v3, :cond_1

    .line 49
    .line 50
    move v3, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v3, v5

    .line 53
    :goto_0
    sget v6, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    if-nez v6, :cond_5

    .line 57
    .line 58
    if-eqz v3, :cond_5

    .line 59
    .line 60
    int-to-float v6, v0

    .line 61
    mul-float/2addr v6, v2

    .line 62
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-le v6, v1, :cond_2

    .line 67
    .line 68
    int-to-float v6, v1

    .line 69
    div-float/2addr v6, v2

    .line 70
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    move v6, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v2, v0

    .line 77
    :goto_1
    sub-int/2addr v0, v2

    .line 78
    div-int/2addr v0, v7

    .line 79
    sub-int/2addr v1, v6

    .line 80
    div-int/2addr v1, v7

    .line 81
    if-gez v0, :cond_3

    .line 82
    .line 83
    move v0, v5

    .line 84
    :cond_3
    if-gez v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v5, v1

    .line 88
    :goto_2
    move v1, v5

    .line 89
    move v5, v0

    .line 90
    move v0, v2

    .line 91
    move v2, v1

    .line 92
    move v1, v6

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move v2, v5

    .line 95
    :goto_3
    sget v6, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 96
    .line 97
    if-ne v6, v4, :cond_6

    .line 98
    .line 99
    const-string v6, "fill"

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_6
    if-ne v6, v7, :cond_7

    .line 103
    .line 104
    const-string v6, "cover"

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    const-string v6, "contain"

    .line 108
    .line 109
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v8, "(function(){if(!vdEle)return;var vst=vdEle.style;"

    .line 112
    .line 113
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-eqz v3, :cond_8

    .line 117
    .line 118
    const-string v3, "vst.left=\'"

    .line 119
    .line 120
    const-string v8, "px\';vst.top=\'"

    .line 121
    .line 122
    invoke-static {v7, v3, v5, v8, v2}, Landroidx/work/impl/workers/a;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    const-string v2, "px\';vst.width=\'"

    .line 126
    .line 127
    const-string v3, "px\';vst.height=\'"

    .line 128
    .line 129
    invoke-static {v7, v2, v0, v3, v1}, Landroidx/work/impl/workers/a;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const-string v0, "px\';"

    .line 133
    .line 134
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_8
    const-string v0, "vst.objectFit=\'"

    .line 138
    .line 139
    const-string v1, "\';})();"

    .line 140
    .line 141
    invoke-static {v7, v0, v6, v1}, Landroid/support/v4/media/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p0, v0, v4}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    :cond_9
    :goto_5
    return-void
.end method

.method public static b0(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "px"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x3

    .line 27
    if-ge v0, v2, :cond_2

    .line 28
    .line 29
    :goto_0
    return v1

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, -0x2

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method private getPosition()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->h0:Z

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_3
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->h0:Z

    .line 27
    .line 28
    iget-wide v4, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 29
    .line 30
    cmp-long v2, v4, v2

    .line 31
    .line 32
    if-lez v2, :cond_4

    .line 33
    .line 34
    const-string v2, "myVidPos();"

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    const-string v2, "myVidTime();"

    .line 41
    .line 42
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private getVideoRate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->w0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->w0:Z

    .line 13
    .line 14
    const-string v1, "myVidRate();"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private getVideoSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "myVidSize();"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method private setIconPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private setIconShow(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

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
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->l0()V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->t:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->V:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 79
    .line 80
    if-eq p1, v2, :cond_5

    .line 81
    .line 82
    const/4 v2, 0x3

    .line 83
    if-ne p1, v2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 87
    .line 88
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->C0:Z

    .line 89
    .line 90
    iget-object v2, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    move v1, v0

    .line 95
    :cond_4
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C0:Z

    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->H:Lcom/mycompany/app/view/MyTextView;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->J:Lcom/mycompany/app/view/MyTextView;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->t:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C0:Z

    .line 163
    .line 164
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->H:Lcom/mycompany/app/view/MyTextView;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->J:Lcom/mycompany/app/view/MyTextView;

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    :goto_3
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->d0()V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method private setPipParam2(Z)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->V:Z

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 24
    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->b0:Z

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v3, "net.kaki87.soul2.testing.ACTION_PIP_FRWD"

    .line 36
    .line 37
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/high16 v5, 0xc000000

    .line 47
    .line 48
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Landroid/content/Intent;

    .line 53
    .line 54
    const-string v4, "net.kaki87.soul2.testing.ACTION_PIP_PLAY"

    .line 55
    .line 56
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    invoke-static {v4, v6, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Landroid/content/Intent;

    .line 70
    .line 71
    const-string v6, "net.kaki87.soul2.testing.ACTION_PIP_FFWD"

    .line 72
    .line 73
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 80
    .line 81
    const/4 v6, 0x2

    .line 82
    invoke-static {v0, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 89
    .line 90
    const-string v4, "play"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 94
    .line 95
    const-string v4, "pause"

    .line 96
    .line 97
    :goto_0
    iget-boolean v5, p0, Lcom/mycompany/app/web/WebVideoFull;->g:Z

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 102
    .line 103
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 107
    .line 108
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 109
    .line 110
    :goto_1
    iget-object v7, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {v7, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget-object v7, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v7, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v7, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {v7, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v8, Landroid/app/RemoteAction;

    .line 134
    .line 135
    const-string v8, "frwd"

    .line 136
    .line 137
    new-instance v9, Landroid/app/RemoteAction;

    .line 138
    .line 139
    invoke-direct {v9, v5, v8, v8, v2}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v2, Landroid/app/RemoteAction;

    .line 146
    .line 147
    new-instance v2, Landroid/app/RemoteAction;

    .line 148
    .line 149
    invoke-direct {v2, v1, v4, v4, v3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    new-instance v1, Landroid/app/RemoteAction;

    .line 156
    .line 157
    const-string v1, "ffwd"

    .line 158
    .line 159
    new-instance v2, Landroid/app/RemoteAction;

    .line 160
    .line 161
    invoke-direct {v2, v6, v1, v1, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 168
    .line 169
    invoke-virtual {v0, v7}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    .line 170
    .line 171
    .line 172
    :cond_4
    if-eqz p1, :cond_6

    .line 173
    .line 174
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 186
    .line 187
    if-nez p1, :cond_5

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$47;

    .line 191
    .line 192
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$47;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    :catch_0
    :cond_7
    :goto_2
    return-void
.end method

.method private setSeekTouchUp(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-wide p1, p0, Lcom/mycompany/app/web/WebVideoFull;->n1:J

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$85;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$85;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x64

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private setTouchLock(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/mycompany/app/web/WebVideoFull;->setIconShow(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 36
    .line 37
    sget v0, Lnet/kaki87/soul2/testing/R$string;->touch_locked:I

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setIconShow(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 64
    .line 65
    sget v0, Lnet/kaki87/soul2/testing/R$string;->touch_unlocked:I

    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private setTouchMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j1:Landroid/view/MotionEvent;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i1:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private setVideoLoop(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "myVidLoop("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ");"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {p1, v0, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private setVideoPaused(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->e1:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$71;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$71;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, 0x64

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static bridge synthetic z(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/web/WebVideoFull;->getVideoRate()V

    return-void
.end method


# virtual methods
.method public final Q()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->I0:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->V:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->D0:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$78;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$78;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0xc8

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public final R()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->m0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekAudio;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->J0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->J0:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->v0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->h0()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->v0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->v0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->t0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->h0()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->t0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->t0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public final W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->h0()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public final X()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j0:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->n0:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->r0:Z

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c0:J

    .line 13
    .line 14
    return-void
.end method

.method public final Y(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->isPressed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->isPressed()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->w:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 115
    return p1

    .line 116
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 117
    return p1
.end method

.method public final Z(II)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->P0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->Q0:I

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->R0:I

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/web/WebVideoFull;->S0:I

    .line 11
    .line 12
    iget v3, p0, Lcom/mycompany/app/web/WebVideoFull;->T0:I

    .line 13
    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    if-ge p1, v2, :cond_1

    .line 21
    .line 22
    if-lt p2, v1, :cond_1

    .line 23
    .line 24
    if-ge p2, v3, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final a(Ljava/lang/String;ZLcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->U:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setTitle(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebVideoFull;->setVideoDown(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$31;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$31;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 16
    .line 17
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;ILandroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M0:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/mycompany/app/web/WebVideoFull;->l:Ljava/lang/String;

    .line 15
    .line 16
    iput p5, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 17
    .line 18
    iput-object p6, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 19
    .line 20
    iput-object p7, p0, Lcom/mycompany/app/web/WebVideoFull;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K0:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->P0:Z

    .line 25
    .line 26
    const-wide/16 p3, -0x1

    .line 27
    .line 28
    iput-wide p3, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 29
    .line 30
    iput-wide p3, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 31
    .line 32
    iput-wide p3, p0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    if-ne p5, p1, :cond_0

    .line 36
    .line 37
    sget p1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 38
    .line 39
    sget p3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 40
    .line 41
    add-int/2addr p1, p3

    .line 42
    iput p1, p0, Lcom/mycompany/app/web/WebVideoFull;->U0:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget p1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 46
    .line 47
    iput p1, p0, Lcom/mycompany/app/web/WebVideoFull;->U0:I

    .line 48
    .line 49
    :goto_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->V0:Z

    .line 52
    .line 53
    const/4 p1, -0x1

    .line 54
    invoke-virtual {p2, p0, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p0, p2, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v3

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 26
    .line 27
    iget-boolean v1, v1, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v3, v2

    .line 33
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 34
    .line 35
    if-ne v0, v1, :cond_4

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C0:Z

    .line 38
    .line 39
    if-ne v3, v0, :cond_4

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->Z0:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    :goto_3
    return-void

    .line 49
    :cond_5
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$56;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$56;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final c0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L0:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L0:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method

.method public final d(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->m:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->A0:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x1a

    .line 21
    .line 22
    if-ge v1, v2, :cond_3

    .line 23
    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    sget p1, Lnet/kaki87/soul2/testing/R$string;->pip_info:I

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 44
    .line 45
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->N4(Landroid/app/Activity;I)Z

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    return-void

    .line 49
    :cond_5
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    const/4 v2, 0x1

    .line 53
    if-ne v0, v1, :cond_a

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 56
    .line 57
    if-eqz v0, :cond_a

    .line 58
    .line 59
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->E0:I

    .line 60
    .line 61
    iget v3, p0, Lcom/mycompany/app/web/WebVideoFull;->F0:I

    .line 62
    .line 63
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity$270;

    .line 64
    .line 65
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity$270;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 66
    .line 67
    iget-object v5, v4, Lcom/mycompany/app/web/WebViewActivity;->S5:Lcom/mycompany/app/web/WebVideoPip;

    .line 68
    .line 69
    if-eqz v5, :cond_6

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    new-instance v5, Lcom/mycompany/app/web/WebVideoPip;

    .line 73
    .line 74
    invoke-direct {v5, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v4, v5, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 78
    .line 79
    if-eqz v1, :cond_8

    .line 80
    .line 81
    if-nez v3, :cond_7

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_7
    iput v1, v5, Lcom/mycompany/app/web/WebVideoPip;->t:I

    .line 85
    .line 86
    iput v3, v5, Lcom/mycompany/app/web/WebVideoPip;->u:I

    .line 87
    .line 88
    iput-boolean v2, v5, Lcom/mycompany/app/web/WebVideoPip;->s:Z

    .line 89
    .line 90
    :cond_8
    :goto_1
    iput-object v5, v4, Lcom/mycompany/app/web/WebViewActivity;->S5:Lcom/mycompany/app/web/WebVideoPip;

    .line 91
    .line 92
    iget-object v1, v4, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 93
    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_9
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$270$1;

    .line 98
    .line 99
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$270$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$270;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :goto_2
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->W0:Z

    .line 106
    .line 107
    const-wide/16 v0, -0x1

    .line 108
    .line 109
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/mycompany/app/web/WebVideoFull;->getPosition()V

    .line 112
    .line 113
    .line 114
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 120
    .line 121
    .line 122
    :cond_b
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->T()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->S()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->V()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->W()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->U()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v2, p1}, Lcom/mycompany/app/web/WebVideoFull;->g0(ZZ)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/16 v3, 0x7d0

    .line 10
    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x3e8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setShowTime(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->setShowTime(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeRelative;->setShowTime(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    if-nez v0, :cond_14

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 14
    .line 15
    if-nez v0, :cond_14

    .line 16
    .line 17
    if-eqz p1, :cond_14

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 20
    .line 21
    if-eqz v0, :cond_14

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 24
    .line 25
    if-eqz v0, :cond_14

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->N0:Z

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i0:Landroid/view/GestureDetector;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->s0:Z

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eq v0, v1, :cond_4

    .line 79
    .line 80
    if-ne v0, v2, :cond_5

    .line 81
    .line 82
    :cond_4
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->s0:Z

    .line 84
    .line 85
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i0:Landroid/view/GestureDetector;

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    .line 91
    .line 92
    :cond_6
    return v1

    .line 93
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v3, 0x2

    .line 98
    if-eqz v0, :cond_c

    .line 99
    .line 100
    if-eq v0, v1, :cond_9

    .line 101
    .line 102
    if-eq v0, v3, :cond_8

    .line 103
    .line 104
    if-eq v0, v2, :cond_9

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_8
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setTouchMove(Landroid/view/MotionEvent;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_9
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j1:Landroid/view/MotionEvent;

    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->N0:Z

    .line 117
    .line 118
    if-eqz v0, :cond_a

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_a
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->N0:Z

    .line 122
    .line 123
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 124
    .line 125
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l1:I

    .line 126
    .line 127
    iget-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c0:J

    .line 128
    .line 129
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->m1:J

    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 132
    .line 133
    if-nez v0, :cond_b

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->k1:Ljava/lang/Runnable;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :cond_c
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 152
    .line 153
    .line 154
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 155
    .line 156
    if-eq v0, v3, :cond_d

    .line 157
    .line 158
    if-ne v0, v2, :cond_e

    .line 159
    .line 160
    :cond_d
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p0:Z

    .line 161
    .line 162
    if-nez v0, :cond_12

    .line 163
    .line 164
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q0:Z

    .line 165
    .line 166
    if-eqz v0, :cond_e

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k0:F

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iput v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 180
    .line 181
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 182
    .line 183
    if-eqz v0, :cond_f

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_f

    .line 190
    .line 191
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k0:F

    .line 192
    .line 193
    float-to-int v0, v0

    .line 194
    iget v2, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 195
    .line 196
    float-to-int v2, v2

    .line 197
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/web/WebVideoFull;->Z(II)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_12

    .line 202
    .line 203
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebVideoFull;->Y(Z)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_f

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_f
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->k0:F

    .line 211
    .line 212
    sget v2, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 213
    .line 214
    int-to-float v2, v2

    .line 215
    cmpg-float v2, v0, v2

    .line 216
    .line 217
    if-ltz v2, :cond_12

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    sget v3, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 224
    .line 225
    sub-int/2addr v2, v3

    .line 226
    int-to-float v2, v2

    .line 227
    cmpl-float v0, v0, v2

    .line 228
    .line 229
    if-lez v0, :cond_10

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_10
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l0:F

    .line 233
    .line 234
    int-to-float v2, v3

    .line 235
    cmpg-float v2, v0, v2

    .line 236
    .line 237
    if-ltz v2, :cond_12

    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    sget v3, Lcom/mycompany/app/main/MainApp;->t1:I

    .line 244
    .line 245
    sub-int/2addr v2, v3

    .line 246
    int-to-float v2, v2

    .line 247
    cmpl-float v0, v0, v2

    .line 248
    .line 249
    if-lez v0, :cond_11

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_11
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->j0:Z

    .line 253
    .line 254
    const-wide/16 v0, -0x1

    .line 255
    .line 256
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 257
    .line 258
    :cond_12
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i0:Landroid/view/GestureDetector;

    .line 259
    .line 260
    if-eqz v0, :cond_13

    .line 261
    .line 262
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    .line 264
    .line 265
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    return p1

    .line 270
    :cond_14
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    return p1
.end method

.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->Q()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$45;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$45;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->w:Lcom/mycompany/app/view/MyButtonImage;

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

.method public final f(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/mycompany/app/web/WebVideoFull;->setTouchLock(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    return v1
.end method

.method public final f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

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

.method public final g(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x4f

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v0, :cond_8

    .line 6
    .line 7
    const/16 v0, 0x55

    .line 8
    .line 9
    if-eq p1, v0, :cond_8

    .line 10
    .line 11
    const/16 v0, 0x56

    .line 12
    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/16 v0, 0x7e

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x7f

    .line 21
    .line 22
    if-eq p1, v0, :cond_4

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 31
    .line 32
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 40
    .line 41
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    invoke-direct {p0, v3}, Lcom/mycompany/app/web/WebVideoFull;->setVideoPaused(Z)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 52
    .line 53
    if-nez p1, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 57
    .line 58
    if-ne p1, v1, :cond_6

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 62
    .line 63
    if-eqz p1, :cond_7

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 66
    .line 67
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_7
    invoke-direct {p0, v2}, Lcom/mycompany/app/web/WebVideoFull;->setVideoPaused(Z)V

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 78
    .line 79
    if-nez p1, :cond_9

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_9
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->m0:I

    .line 83
    .line 84
    if-ne p1, v1, :cond_a

    .line 85
    .line 86
    :goto_0
    return v2

    .line 87
    :cond_a
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 88
    .line 89
    if-eqz p1, :cond_b

    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 92
    .line 93
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_b
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->k0()V

    .line 100
    .line 101
    .line 102
    return v2
.end method

.method public final g0(ZZ)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E0:I

    .line 14
    .line 15
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->F0:I

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    :cond_2
    const/16 v0, 0x500

    .line 22
    .line 23
    const/16 v1, 0x2d0

    .line 24
    .line 25
    :cond_3
    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 31
    .line 32
    new-instance v3, Landroid/util/Rational;

    .line 33
    .line 34
    invoke-direct {v3, v0, v1}, Landroid/util/Rational;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    if-nez p2, :cond_4

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->setPipParam2(Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$46;

    .line 49
    .line 50
    invoke-direct {p2, p0, p1}, Lcom/mycompany/app/web/WebVideoFull$46;-><init>(Lcom/mycompany/app/web/WebVideoFull;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebVideoFull;->c0(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public getVideoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method public final h0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->i:Z

    .line 8
    .line 9
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$43;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$43;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x320

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final i0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->d0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$75;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$75;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v2, 0x64

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->d0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$74;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$74;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v2, 0x64

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->J0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$72;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$72;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x64

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->o()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M0:Z

    .line 25
    .line 26
    return v0
.end method

.method public final l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->N:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->N:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->N:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->O:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public final m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->X()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final n0(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 11
    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->X0:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 32
    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$25;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$25;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_5
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->V()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->W()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->U()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->A0:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$68;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebVideoFull$68;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v3, 0x1f4

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->d0()V

    .line 24
    .line 25
    .line 26
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->k:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebVideoFull;->n0(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->V0:Z

    .line 38
    .line 39
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 40
    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->V0:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_4
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$69;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$69;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final q(ZZLjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->V:Z

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    const-string p1, "undefined"

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->E6(Ljava/lang/String;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 26
    .line 27
    mul-float/2addr p1, p3

    .line 28
    float-to-long v0, p1

    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long p1, v0, v2

    .line 32
    .line 33
    if-gez p1, :cond_1

    .line 34
    .line 35
    move-wide v0, v2

    .line 36
    :cond_1
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->a0()V

    .line 40
    .line 41
    .line 42
    :goto_1
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebVideoFull;->b0:Z

    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$73;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$73;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :goto_2
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->D0:Z

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->D0:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->Q()V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    const-string v0, "onYouType"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x3

    .line 17
    const-string v3, "1"

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_1
    iput v2, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$270;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$270;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 40
    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iput v2, p1, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 45
    .line 46
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    if-nez p1, :cond_5

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_6
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$70;

    .line 67
    .line 68
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$70;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_7
    const-string v0, "onVidPaused"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->b0:Z

    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 90
    .line 91
    if-nez p1, :cond_8

    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_8
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$73;

    .line 96
    .line 97
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$73;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_9
    const-string v0, "onVidDur"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const-wide/16 v4, 0x0

    .line 111
    .line 112
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 113
    .line 114
    const-string v7, "undefined"

    .line 115
    .line 116
    if-eqz v0, :cond_e

    .line 117
    .line 118
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 119
    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_d

    .line 129
    .line 130
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_b
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->E6(Ljava/lang/String;)F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    mul-float/2addr p1, v6

    .line 142
    float-to-long p1, p1

    .line 143
    cmp-long v0, p1, v4

    .line 144
    .line 145
    if-gez v0, :cond_c

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_c
    move-wide v4, p1

    .line 149
    :goto_1
    iput-wide v4, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 150
    .line 151
    return-void

    .line 152
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->a0()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_e
    const-string v0, "onVidPos"

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_14

    .line 163
    .line 164
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->W0:Z

    .line 165
    .line 166
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->W0:Z

    .line 167
    .line 168
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->h0:Z

    .line 169
    .line 170
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 171
    .line 172
    if-eqz v0, :cond_f

    .line 173
    .line 174
    goto/16 :goto_6

    .line 175
    .line 176
    :cond_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_13

    .line 181
    .line 182
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_10

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_10
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->E6(Ljava/lang/String;)F

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    mul-float/2addr p2, v6

    .line 194
    float-to-long v0, p2

    .line 195
    iget-wide v2, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 196
    .line 197
    cmp-long p2, v0, v2

    .line 198
    .line 199
    if-lez p2, :cond_11

    .line 200
    .line 201
    move-wide v0, v2

    .line 202
    :cond_11
    cmp-long p2, v0, v4

    .line 203
    .line 204
    if-gez p2, :cond_12

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_12
    move-wide v4, v0

    .line 208
    :goto_3
    iput-wide v4, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 209
    .line 210
    const-wide/16 v0, -0x1

    .line 211
    .line 212
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 213
    .line 214
    if-eqz p1, :cond_2b

    .line 215
    .line 216
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 217
    .line 218
    if-eqz p1, :cond_2b

    .line 219
    .line 220
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$270;

    .line 221
    .line 222
    invoke-virtual {p1, v4, v5}, Lcom/mycompany/app/web/WebViewActivity$270;->b(J)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_13
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->a0()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_14
    const-string v0, "onVidRate"

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const/high16 v4, 0x3f800000    # 1.0f

    .line 237
    .line 238
    const/4 v5, 0x2

    .line 239
    if-eqz v0, :cond_1a

    .line 240
    .line 241
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 242
    .line 243
    if-nez p1, :cond_15

    .line 244
    .line 245
    goto/16 :goto_6

    .line 246
    .line 247
    :cond_15
    invoke-static {p2, v4}, Lcom/mycompany/app/main/MainUtil;->F6(Ljava/lang/String;F)F

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iput p1, p0, Lcom/mycompany/app/web/WebVideoFull;->f1:F

    .line 252
    .line 253
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 254
    .line 255
    if-nez p2, :cond_16

    .line 256
    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :cond_16
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$77;

    .line 260
    .line 261
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$77;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 265
    .line 266
    .line 267
    iget p2, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 268
    .line 269
    if-eq p2, v5, :cond_17

    .line 270
    .line 271
    if-ne p2, v2, :cond_2b

    .line 272
    .line 273
    :cond_17
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m8()Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-nez p2, :cond_18

    .line 278
    .line 279
    goto/16 :goto_6

    .line 280
    .line 281
    :cond_18
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 282
    .line 283
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    if-nez p2, :cond_19

    .line 288
    .line 289
    goto/16 :goto_6

    .line 290
    .line 291
    :cond_19
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 292
    .line 293
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 294
    .line 295
    invoke-static {p2, p1}, Lcom/mycompany/app/pref/PrefSet;->e(Landroid/content/Context;F)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_1a
    const-string v0, "onVidRat2"

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_20

    .line 306
    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-nez p1, :cond_1f

    .line 312
    .line 313
    const-string p1, "0"

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_1b

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_1b
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 323
    .line 324
    if-eq p1, v5, :cond_1c

    .line 325
    .line 326
    if-ne p1, v2, :cond_2b

    .line 327
    .line 328
    :cond_1c
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m8()Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-nez p1, :cond_1d

    .line 333
    .line 334
    goto/16 :goto_6

    .line 335
    .line 336
    :cond_1d
    invoke-static {p2, v4}, Lcom/mycompany/app/main/MainUtil;->F6(Ljava/lang/String;F)F

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 341
    .line 342
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    if-nez p2, :cond_1e

    .line 347
    .line 348
    goto/16 :goto_6

    .line 349
    .line 350
    :cond_1e
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 351
    .line 352
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 353
    .line 354
    invoke-static {p2, p1}, Lcom/mycompany/app/pref/PrefSet;->e(Landroid/content/Context;F)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_1f
    :goto_5
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->a0()V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :cond_20
    const-string v0, "onVidSize"

    .line 363
    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_21

    .line 369
    .line 370
    iput-object p2, p0, Lcom/mycompany/app/web/WebVideoFull;->h1:Ljava/lang/String;

    .line 371
    .line 372
    new-instance p1, Lcom/mycompany/app/web/WebVideoFull$79;

    .line 373
    .line 374
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebVideoFull$79;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebVideoFull;->c0(Ljava/lang/Runnable;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_21
    const-string v0, "onYouCon"

    .line 382
    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_25

    .line 388
    .line 389
    iget p1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 390
    .line 391
    if-eq p1, v5, :cond_22

    .line 392
    .line 393
    if-eq p1, v2, :cond_22

    .line 394
    .line 395
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->o0:Z

    .line 396
    .line 397
    return-void

    .line 398
    :cond_22
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 399
    .line 400
    if-eqz p1, :cond_23

    .line 401
    .line 402
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->o0:Z

    .line 403
    .line 404
    return-void

    .line 405
    :cond_23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->o0:Z

    .line 410
    .line 411
    if-nez p1, :cond_2b

    .line 412
    .line 413
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 414
    .line 415
    if-nez p1, :cond_24

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_24
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$80;

    .line 419
    .line 420
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$80;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :cond_25
    const-string v0, "onYouExp"

    .line 428
    .line 429
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_28

    .line 434
    .line 435
    const-string p1, "visible"

    .line 436
    .line 437
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->p0:Z

    .line 442
    .line 443
    if-nez p1, :cond_26

    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_26
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 447
    .line 448
    if-nez p1, :cond_27

    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_27
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$81;

    .line 452
    .line 453
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$81;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_28
    const-string v0, "onVidSeek"

    .line 461
    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    if-eqz p1, :cond_2b

    .line 467
    .line 468
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-eqz p1, :cond_29

    .line 473
    .line 474
    const/4 p1, 0x1

    .line 475
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->d0:Z

    .line 476
    .line 477
    return-void

    .line 478
    :cond_29
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 479
    .line 480
    if-nez p1, :cond_2a

    .line 481
    .line 482
    goto :goto_6

    .line 483
    :cond_2a
    new-instance p2, Lcom/mycompany/app/web/WebVideoFull$76;

    .line 484
    .line 485
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoFull$76;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 486
    .line 487
    .line 488
    const-wide/16 v0, 0x64

    .line 489
    .line 490
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    .line 492
    .line 493
    :cond_2b
    :goto_6
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->W0:Z

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->h0:Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_6

    .line 18
    .line 19
    const-string v1, "undefined"

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->E6(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 33
    .line 34
    mul-float/2addr p1, v1

    .line 35
    float-to-long v2, p1

    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long p1, v2, v4

    .line 39
    .line 40
    if-gez p1, :cond_2

    .line 41
    .line 42
    move-wide v2, v4

    .line 43
    :cond_2
    iput-wide v2, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 44
    .line 45
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->E6(Ljava/lang/String;)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    mul-float/2addr p1, v1

    .line 50
    float-to-long p1, p1

    .line 51
    iget-wide v1, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 52
    .line 53
    cmp-long v3, p1, v1

    .line 54
    .line 55
    if-lez v3, :cond_3

    .line 56
    .line 57
    move-wide p1, v1

    .line 58
    :cond_3
    cmp-long v1, p1, v4

    .line 59
    .line 60
    if-gez v1, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move-wide v4, p1

    .line 64
    :goto_0
    iput-wide v4, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 65
    .line 66
    const-wide/16 p1, -0x1

    .line 67
    .line 68
    iput-wide p1, p0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$270;

    .line 77
    .line 78
    invoke-virtual {p1, v4, v5}, Lcom/mycompany/app/web/WebViewActivity$270;->b(J)V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_1
    return-void

    .line 82
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->a0()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->U:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 22
    .line 23
    iget-boolean p1, p1, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->l:Ljava/lang/String;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->e0:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->f0:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoFull;->g0:J

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$44;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$44;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v1, 0x320

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setVideoDown(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 15
    .line 16
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->B0:Z

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C0:Z

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebVideoFull;->C0:Z

    .line 44
    .line 45
    const/16 v0, 0x8

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public setYouDialog(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoFull;->q0:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVideoFull$82;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoFull$82;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->T()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->S()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->V()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->W()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->U()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, p0, v2}, Lcom/mycompany/app/main/MainActivity;->s0(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iput-object v1, v0, Lcom/mycompany/app/view/MySizeFrame;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeRelative;->g()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->w:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->w:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 108
    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 115
    .line 116
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    if-eqz v0, :cond_b

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 121
    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    if-eqz v0, :cond_c

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    if-eqz v0, :cond_d

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 144
    .line 145
    if-eqz v0, :cond_e

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 151
    .line 152
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    if-eqz v0, :cond_f

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 157
    .line 158
    .line 159
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    if-eqz v0, :cond_10

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 169
    .line 170
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    if-eqz v0, :cond_11

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 175
    .line 176
    .line 177
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 180
    .line 181
    if-eqz v0, :cond_12

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 184
    .line 185
    .line 186
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->K:Lcom/mycompany/app/web/WebVideoProgress;

    .line 187
    .line 188
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 189
    .line 190
    if-eqz v0, :cond_13

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 193
    .line 194
    .line 195
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 196
    .line 197
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 198
    .line 199
    if-eqz v0, :cond_14

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoProgress;->f()V

    .line 202
    .line 203
    .line 204
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->M:Lcom/mycompany/app/web/WebVideoProgress;

    .line 205
    .line 206
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 207
    .line 208
    if-eqz v0, :cond_15

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 211
    .line 212
    .line 213
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->R:Lcom/mycompany/app/view/MyFadeFrame;

    .line 214
    .line 215
    :cond_15
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 216
    .line 217
    if-eqz v0, :cond_16

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 220
    .line 221
    .line 222
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->S:Lcom/mycompany/app/view/MyFadeFrame;

    .line 223
    .line 224
    :cond_16
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 225
    .line 226
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 227
    .line 228
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->l:Ljava/lang/String;

    .line 229
    .line 230
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->o:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 231
    .line 232
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 233
    .line 234
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->t:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->H:Lcom/mycompany/app/view/MyTextView;

    .line 237
    .line 238
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->N:Landroid/view/View;

    .line 239
    .line 240
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->O:Landroid/view/View;

    .line 241
    .line 242
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->P:Landroid/view/View;

    .line 243
    .line 244
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->J:Lcom/mycompany/app/view/MyTextView;

    .line 245
    .line 246
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->U:Ljava/lang/String;

    .line 247
    .line 248
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->i0:Landroid/view/GestureDetector;

    .line 249
    .line 250
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 251
    .line 252
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->L0:Ljava/util/concurrent/ExecutorService;

    .line 253
    .line 254
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 255
    .line 256
    if-eqz v0, :cond_17

    .line 257
    .line 258
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 262
    .line 263
    :cond_17
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->m:Landroid/view/View;

    .line 19
    .line 20
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "(function(){"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    if-ne v1, v2, :cond_3

    .line 34
    .line 35
    :cond_2
    const-string v1, "if(youConOsb){youConOsb.disconnect();youConOsb=null;}if(youExpOsb){youExpOsb.disconnect();youExpOsb=null;}"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_3
    const-string v1, "if(vdEle){vdEle.removeEventListener(\'playing\',myVidPlaying);vdEle.removeEventListener(\'pause\',myVidPaused);vdEle.removeEventListener(\'seeking\',myVidSeeking);vdEle.removeEventListener(\'seeked\',myVidSeeked);vdEle.removeEventListener(\'timeupdate\',myVidDur);vdEle=null;}})();"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoFull;->k:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->h:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->i:Z

    .line 5
    .line 6
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->i0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->j0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->z0:Landroid/app/PictureInPictureParams$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoFull;->k0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
