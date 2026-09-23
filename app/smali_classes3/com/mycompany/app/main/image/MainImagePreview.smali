.class public Lcom/mycompany/app/main/image/MainImagePreview;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;,
        Lcom/mycompany/app/main/image/MainImagePreview$LocalWebViewClient;,
        Lcom/mycompany/app/main/image/MainImagePreview$WebAppInterface;
    }
.end annotation


# static fields
.field public static E2:Z


# instance fields
.field public A1:Ljava/lang/String;

.field public A2:Landroid/graphics/Bitmap;

.field public B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public B2:Ljava/lang/String;

.field public C1:Lcom/mycompany/app/view/MyPopupMenu;

.field public C2:Lcom/mycompany/app/main/MainUri$UriItem;

.field public D1:Lcom/mycompany/app/dialog/DialogDownUrl;

.field public D2:I

.field public E1:Lcom/mycompany/app/dialog/DialogSetDown;

.field public F1:Lcom/mycompany/app/dialog/DialogDownBlob;

.field public G1:Lcom/mycompany/app/dialog/DialogPreview;

.field public H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

.field public I1:Z

.field public J1:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public K1:Landroid/view/GestureDetector;

.field public L1:J

.field public M1:Lcom/mycompany/app/view/GlideRequests;

.field public N1:Z

.field public O1:I

.field public P1:I

.field public Q1:J

.field public R1:Ljava/net/HttpURLConnection;

.field public S1:Z

.field public T1:Z

.field public U1:Z

.field public V1:Landroid/widget/FrameLayout;

.field public W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

.field public X1:Lcom/mycompany/app/dialog/DialogTransLang;

.field public Y1:Lcom/mycompany/app/dialog/DialogConfirm;

.field public Z1:Lcom/mycompany/app/dialog/DialogConfirm;

.field public a2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public b2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public c2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public d2:Lcom/mycompany/app/view/MyPopupMenu;

.field public e2:Lcom/mycompany/app/view/MyPopupMenu;

.field public f1:Landroid/content/Context;

.field public f2:Lcom/mycompany/app/ocr/OcrDetector;

.field public g1:Landroid/widget/FrameLayout;

.field public g2:Landroid/graphics/drawable/Drawable;

.field public h1:Lcom/mycompany/app/view/MyFadeFrame;

.field public h2:Landroid/graphics/Bitmap;

.field public i1:Lcom/mycompany/app/view/MyButtonImage;

.field public i2:Ljava/lang/String;

.field public j1:Lcom/mycompany/app/view/MyButtonImage;

.field public final j2:Lcom/bumptech/glide/request/RequestListener;

.field public k1:Lcom/mycompany/app/view/MyButtonImage;

.field public final k2:Lcom/bumptech/glide/request/RequestListener;

.field public l1:Lcom/mycompany/app/view/MyButtonImage;

.field public l2:Z

.field public m1:Lcom/mycompany/app/view/MyButtonImage;

.field public m2:Ljava/lang/String;

.field public n1:Lcom/mycompany/app/view/MyButtonImage;

.field public n2:Ljava/lang/String;

.field public o1:Landroid/view/View;

.field public o2:Ljava/lang/String;

.field public p1:Lcom/mycompany/app/view/MyTextView;

.field public p2:Ljava/lang/String;

.field public q1:Lcom/mycompany/app/view/MySizeImage;

.field public q2:Ljava/lang/String;

.field public r1:Lcom/mycompany/app/view/MyCoverView;

.field public r2:Z

.field public s1:Lcom/mycompany/app/view/MyWebSafe;

.field public final s2:Lcom/mycompany/app/view/MyGlideTarget;

.field public t1:Z

.field public t2:Lcom/mycompany/app/view/MySnackbar;

.field public u1:Z

.field public u2:Lcom/mycompany/app/web/WebTransOcrCtrl;

.field public v1:Z

.field public v2:Landroid/view/View;

.field public w1:Z

.field public w2:Landroid/graphics/Bitmap;

.field public x1:Ljava/lang/String;

.field public x2:Z

.field public y1:Ljava/lang/String;

.field public y2:Landroid/graphics/Bitmap;

.field public z1:Ljava/lang/String;

.field public z2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$15;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$15;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->j2:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$17;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$17;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->k2:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$44;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$44;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s2:Lcom/mycompany/app/view/MyGlideTarget;

    .line 24
    .line 25
    return-void
.end method

.method public static A0(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z2:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->A2:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->A2:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1, v3}, Lcom/mycompany/app/main/image/MainImagePreview;->b1(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h2:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void

    .line 44
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f2:Lcom/mycompany/app/ocr/OcrDetector;

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v3, v0, v1, v2}, Lcom/mycompany/app/ocr/OcrDetector;->M(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    new-instance v3, Lcom/mycompany/app/ocr/OcrDetector;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f2:Lcom/mycompany/app/ocr/OcrDetector;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    new-instance v5, Lcom/mycompany/app/main/image/MainImagePreview$69;

    .line 62
    .line 63
    invoke-direct {v5, p0}, Lcom/mycompany/app/main/image/MainImagePreview$69;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 64
    .line 65
    .line 66
    iput-object p0, v3, Lcom/mycompany/app/ocr/OcrDetector;->m:Lcom/mycompany/app/main/MainActivity;

    .line 67
    .line 68
    iput-object v4, v3, Lcom/mycompany/app/ocr/OcrDetector;->n:Landroid/view/ViewGroup;

    .line 69
    .line 70
    iput-object v5, v3, Lcom/mycompany/app/ocr/OcrDetector;->o:Lcom/mycompany/app/ocr/OcrDetector$OcrListener;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/mycompany/app/ocr/OcrDetector;->J()V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f2:Lcom/mycompany/app/ocr/OcrDetector;

    .line 76
    .line 77
    invoke-virtual {p0, v0, v1, v2}, Lcom/mycompany/app/ocr/OcrDetector;->M(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static B0(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->Z0()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/image/MainImagePreview;->d1(Z)V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->w1:Z

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, -0x1

    .line 37
    if-nez v1, :cond_6

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 40
    .line 41
    const-string v4, "blob:"

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 50
    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    new-instance v1, Lcom/mycompany/app/view/MyWebSafe;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 78
    .line 79
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->L1:J

    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 89
    .line 90
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$20;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$20;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 93
    .line 94
    .line 95
    const-wide/16 v2, 0x1388

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 101
    .line 102
    const/high16 v1, -0x1000000

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Landroid/view/GestureDetector;

    .line 115
    .line 116
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$21;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$21;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->K1:Landroid/view/GestureDetector;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 127
    .line 128
    if-nez v0, :cond_4

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$22;

    .line 132
    .line 133
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$22;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_0
    return-void

    .line 140
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_7

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    const/16 v4, 0x2e

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-ne v4, v3, :cond_8

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    add-int/2addr v4, v2

    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    const-string v0, "gif"

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    :goto_1
    if-eqz v0, :cond_a

    .line 183
    .line 184
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q6(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 200
    .line 201
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->Y0()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->G0()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_b

    .line 220
    .line 221
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 222
    .line 223
    const-string v1, "image/svg"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    goto :goto_3

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    invoke-static {v0, v1, v1, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    :goto_3
    if-eqz v0, :cond_c

    .line 242
    .line 243
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$16;

    .line 244
    .line 245
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$16;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_c
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$14;

    .line 253
    .line 254
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$14;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public static C0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->J1:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 13
    .line 14
    iput-boolean v1, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 15
    .line 16
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 27
    .line 28
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->J1:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 34
    .line 35
    new-instance v0, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 41
    .line 42
    iput-object p1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput p1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 46
    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 48
    .line 49
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->J1:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 56
    .line 57
    new-instance v3, Lcom/mycompany/app/main/image/MainImagePreview$18;

    .line 58
    .line 59
    invoke-direct {v3, p0}, Lcom/mycompany/app/main/image/MainImagePreview$18;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static D0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->V0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->Q0()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->n2:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->o2:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->p2:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 27
    .line 28
    new-instance v9, Lcom/mycompany/app/main/image/MainImagePreview$35;

    .line 29
    .line 30
    invoke-direct {v9, p0}, Lcom/mycompany/app/main/image/MainImagePreview$35;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v2, p0

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p3

    .line 39
    invoke-direct/range {v1 .. v9}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v2, Lcom/mycompany/app/main/image/MainImagePreview;->E1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 43
    .line 44
    new-instance p0, Lcom/mycompany/app/main/image/MainImagePreview$36;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lcom/mycompany/app/main/image/MainImagePreview$36;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static E0(Lcom/mycompany/app/main/image/MainImagePreview;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 12
    .line 13
    .line 14
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x2:Z

    .line 15
    .line 16
    new-instance p1, Lcom/mycompany/app/main/image/MainImagePreview$68;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$68;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static F0(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    xor-int/lit8 v1, v0, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->o1:Landroid/view/View;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-nez v0, :cond_2

    .line 26
    .line 27
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_white_2:I

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->o1:Landroid/view/View;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/16 v0, 0x8

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->i(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static u0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->u1:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->u1:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$23;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$23;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->u1:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->u1:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$24;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$24;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static v0(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v3, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v7, "image/*"

    .line 27
    .line 28
    move-object v1, p0

    .line 29
    invoke-static/range {v1 .. v7}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    move-object v1, p0

    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-virtual {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview;->d1(Z)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lcom/mycompany/app/main/image/MainImagePreview$41;

    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/mycompany/app/main/image/MainImagePreview$41;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static w0(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/image/MainImagePreview;->d1(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->down_start:I

    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    if-eqz p2, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "image/*"

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-static {v0, p0, p1, v2, p2}, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/image/MainImagePreview;->d1(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    sget p1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/mycompany/app/main/image/MainImagePreview;->X0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "image/svg"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, v2, v2, v1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_1
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q2:Ljava/lang/String;

    .line 94
    .line 95
    iput-boolean p2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r2:Z

    .line 96
    .line 97
    new-instance p1, Lcom/mycompany/app/main/image/MainImagePreview$43;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$43;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_7
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$42;

    .line 107
    .line 108
    invoke-direct {v0, p0, p1, p2}, Lcom/mycompany/app/main/image/MainImagePreview$42;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static x0(Lcom/mycompany/app/main/image/MainImagePreview;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->e()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    :goto_1
    return-object v0

    .line 48
    :cond_3
    return-object v2
.end method

.method public static y0(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_1
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    const/4 v2, 0x1

    .line 39
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 45
    .line 46
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v2, 0x18

    .line 50
    .line 51
    if-lt v0, v2, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    iput-wide v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v2, v0

    .line 69
    iput-wide v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 79
    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->a1()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static z0(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_1
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    const/4 v2, 0x1

    .line 39
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 45
    .line 46
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x18

    .line 50
    .line 51
    if-lt v0, v3, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iput-wide v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-object v0, v1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-long v3, v0

    .line 71
    iput-wide v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J

    .line 72
    .line 73
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 80
    .line 81
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    .line 86
    invoke-static {v0, v3}, Lcom/mycompany/app/main/BitmapUtil;->e(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 90
    .line 91
    iput v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->O1:I

    .line 92
    .line 93
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 94
    .line 95
    iput v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->P1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    :catch_1
    :goto_2
    if-eqz v0, :cond_4

    .line 98
    .line 99
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 100
    .line 101
    .line 102
    :catch_2
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 110
    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->a1()V

    .line 112
    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final G0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->N1:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->p1:Lcom/mycompany/app/view/MyTextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->O1:I

    .line 21
    .line 22
    iput v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->P1:I

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Q1:J

    .line 27
    .line 28
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$28;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$28;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final H0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->J0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->Q0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->I0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->O0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->R0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->N0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->L0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->K0()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->M0()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->P0()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final I0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->F1:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownBlob;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->F1:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->D1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->D1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final K0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->a2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->a2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final L0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Z1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Z1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final M0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final N0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->c2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->c2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->E1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->E1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->n2:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->o2:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->p2:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->X1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->X1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->i(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->C1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->C1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final U0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

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
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final V0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->D1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->E1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->F1:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->X1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->Z1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->a2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 43
    .line 44
    if-eqz v0, :cond_8

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->c2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 48
    .line 49
    if-eqz v0, :cond_9

    .line 50
    .line 51
    :goto_0
    return v1

    .line 52
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f2:Lcom/mycompany/app/ocr/OcrDetector;

    .line 53
    .line 54
    if-eqz v0, :cond_a

    .line 55
    .line 56
    iget-object v0, v0, Lcom/mycompany/app/ocr/OcrDetector;->P:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 57
    .line 58
    if-eqz v0, :cond_a

    .line 59
    .line 60
    return v1

    .line 61
    :cond_a
    const/4 v0, 0x0

    .line 62
    return v0
.end method

.method public final W0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->R0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->N0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->L0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->K0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->M0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->P0()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->V1:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->V1:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTransOcrCtrl;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :cond_3
    return-void
.end method

.method public final X0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$45;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    move-object v5, p1

    .line 10
    move-object v6, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/main/image/MainImagePreview$45;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final Y0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 11
    .line 12
    .line 13
    :cond_1
    new-instance v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 16
    .line 17
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$19;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/image/MainImagePreview$19;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 26
    .line 27
    return-void
.end method

.method public final Z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i1:Lcom/mycompany/app/view/MyButtonImage;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->l1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->m1:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 39
    .line 40
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 46
    .line 47
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$27;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$27;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final a1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->N1:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->p1:Lcom/mycompany/app/view/MyTextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->O1:I

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->P1:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$31;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$31;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_3
    :goto_0
    return-void
.end method

.method public final b1(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance p2, Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/image/MainImagePreview$53;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c1(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$47;

    .line 7
    .line 8
    invoke-direct {v1, p0, p2, p1}, Lcom/mycompany/app/main/image/MainImagePreview$47;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$48;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$48;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0x5dc

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->g()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->K1:Landroid/view/GestureDetector;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->D1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogDownUrl;->P(IILandroid/content/Intent;)Z

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
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_3

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    if-eq p1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eq p2, v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string p1, "EXTRA_PATH"

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/main/image/MainImagePreview;->c1(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    if-eq p2, v0, :cond_4

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_4
    sput-boolean v1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 38
    .line 39
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->S0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->U0()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->D1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->S(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogPreview;->D(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    sput-boolean v1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 14
    .line 15
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 44
    .line 45
    iput-boolean v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v4, "EXTRA_PATH"

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v4, "EXTRA_REFERER"

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v4, "EXTRA_FILE"

    .line 77
    .line 78
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iput-boolean v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 83
    .line 84
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 102
    .line 103
    if-nez v2, :cond_2

    .line 104
    .line 105
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput-boolean v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->w1:Z

    .line 112
    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v4, "EXTRA_POPUP"

    .line 120
    .line 121
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    iput-boolean v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->I1:Z

    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->A1:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 138
    .line 139
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$71;

    .line 140
    .line 141
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/image/MainImagePreview$71;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 147
    .line 148
    .line 149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    const/16 v2, 0x1e

    .line 152
    .line 153
    if-ge v1, v2, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_3

    .line 160
    .line 161
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$1;

    .line 162
    .line 163
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 167
    .line 168
    .line 169
    :cond_3
    const/16 v1, 0x13

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0xd

    .line 179
    .line 180
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 181
    .line 182
    .line 183
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 184
    .line 185
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 186
    .line 187
    if-eqz v2, :cond_4

    .line 188
    .line 189
    const/high16 v2, 0x41e00000    # 28.0f

    .line 190
    .line 191
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    float-to-int v2, v2

    .line 196
    add-int/2addr v1, v2

    .line 197
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout;

    .line 198
    .line 199
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 203
    .line 204
    const/4 v5, -0x1

    .line 205
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Lcom/mycompany/app/view/MySizeImage;

    .line 212
    .line 213
    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 217
    .line 218
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v4, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 222
    .line 223
    .line 224
    new-instance v6, Lcom/mycompany/app/view/MyFadeFrame;

    .line 225
    .line 226
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 233
    .line 234
    .line 235
    const/16 v7, 0x8

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .line 242
    invoke-direct {v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 246
    .line 247
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 248
    .line 249
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .line 254
    .line 255
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 256
    .line 257
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 261
    .line 262
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 263
    .line 264
    .line 265
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    .line 266
    .line 267
    invoke-virtual {v1, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 268
    .line 269
    .line 270
    sget v9, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 271
    .line 272
    int-to-float v9, v9

    .line 273
    sget v10, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 274
    .line 275
    int-to-float v10, v10

    .line 276
    invoke-virtual {v1, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 277
    .line 278
    .line 279
    const/high16 v9, -0x5f000000

    .line 280
    .line 281
    const v10, -0x5e8a8a8b

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 285
    .line 286
    .line 287
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 288
    .line 289
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 290
    .line 291
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 292
    .line 293
    .line 294
    const v12, 0x800005

    .line 295
    .line 296
    .line 297
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 298
    .line 299
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 300
    .line 301
    mul-int/lit8 v13, v13, 0x4

    .line 302
    .line 303
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    .line 308
    .line 309
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 310
    .line 311
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 315
    .line 316
    .line 317
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_white_24:I

    .line 318
    .line 319
    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 320
    .line 321
    .line 322
    sget v13, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 323
    .line 324
    int-to-float v13, v13

    .line 325
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 326
    .line 327
    int-to-float v14, v14

    .line 328
    invoke-virtual {v11, v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 332
    .line 333
    .line 334
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 335
    .line 336
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 337
    .line 338
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    .line 340
    .line 341
    iput v12, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 342
    .line 343
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 344
    .line 345
    const/4 v15, 0x3

    .line 346
    mul-int/2addr v14, v15

    .line 347
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .line 352
    .line 353
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 354
    .line 355
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 359
    .line 360
    .line 361
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_wallpaper_white_24:I

    .line 362
    .line 363
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 364
    .line 365
    .line 366
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 367
    .line 368
    int-to-float v14, v14

    .line 369
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 370
    .line 371
    int-to-float v5, v5

    .line 372
    invoke-virtual {v13, v14, v5}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v13, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 376
    .line 377
    .line 378
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    .line 380
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 381
    .line 382
    invoke-direct {v5, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 383
    .line 384
    .line 385
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    .line 387
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 388
    .line 389
    mul-int/lit8 v14, v14, 0x2

    .line 390
    .line 391
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    .line 396
    .line 397
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 398
    .line 399
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    .line 404
    .line 405
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_crop_white_24:I

    .line 406
    .line 407
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 408
    .line 409
    .line 410
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 411
    .line 412
    int-to-float v14, v14

    .line 413
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 414
    .line 415
    int-to-float v15, v15

    .line 416
    invoke-virtual {v5, v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 420
    .line 421
    .line 422
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 423
    .line 424
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 425
    .line 426
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 427
    .line 428
    .line 429
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 430
    .line 431
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 432
    .line 433
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    .line 438
    .line 439
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 440
    .line 441
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 445
    .line 446
    .line 447
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_edit_white_24:I

    .line 448
    .line 449
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 450
    .line 451
    .line 452
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 453
    .line 454
    int-to-float v15, v15

    .line 455
    sget v3, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 456
    .line 457
    int-to-float v3, v3

    .line 458
    invoke-virtual {v14, v15, v3}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v14, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 462
    .line 463
    .line 464
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    .line 466
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 467
    .line 468
    invoke-direct {v3, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 469
    .line 470
    .line 471
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 472
    .line 473
    invoke-virtual {v6, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .line 475
    .line 476
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 477
    .line 478
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 482
    .line 483
    .line 484
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_white_24:I

    .line 485
    .line 486
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 487
    .line 488
    .line 489
    sget v8, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 490
    .line 491
    int-to-float v8, v8

    .line 492
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 493
    .line 494
    int-to-float v12, v12

    .line 495
    invoke-virtual {v3, v8, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 499
    .line 500
    .line 501
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 502
    .line 503
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 504
    .line 505
    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 506
    .line 507
    .line 508
    const v10, 0x800055

    .line 509
    .line 510
    .line 511
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 512
    .line 513
    const/high16 v10, 0x42700000    # 60.0f

    .line 514
    .line 515
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 516
    .line 517
    .line 518
    move-result v10

    .line 519
    float-to-int v10, v10

    .line 520
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 521
    .line 522
    invoke-virtual {v6, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    .line 524
    .line 525
    new-instance v8, Landroid/view/View;

    .line 526
    .line 527
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 531
    .line 532
    .line 533
    const/high16 v10, 0x43070000    # 135.0f

    .line 534
    .line 535
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 536
    .line 537
    .line 538
    move-result v10

    .line 539
    float-to-int v10, v10

    .line 540
    const/high16 v12, 0x41c00000    # 24.0f

    .line 541
    .line 542
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 543
    .line 544
    .line 545
    move-result v12

    .line 546
    float-to-int v12, v12

    .line 547
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 548
    .line 549
    invoke-direct {v15, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 550
    .line 551
    .line 552
    const/16 v10, 0x50

    .line 553
    .line 554
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 555
    .line 556
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 557
    .line 558
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 559
    .line 560
    .line 561
    const/high16 v10, 0x42880000    # 68.0f

    .line 562
    .line 563
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 564
    .line 565
    .line 566
    move-result v10

    .line 567
    float-to-int v10, v10

    .line 568
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 569
    .line 570
    invoke-virtual {v6, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    .line 572
    .line 573
    new-instance v10, Lcom/mycompany/app/view/MyTextView;

    .line 574
    .line 575
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 576
    .line 577
    .line 578
    const/16 v12, 0x10

    .line 579
    .line 580
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 581
    .line 582
    .line 583
    const/4 v12, 0x1

    .line 584
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 585
    .line 586
    .line 587
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 588
    .line 589
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 590
    .line 591
    .line 592
    const/4 v15, 0x3

    .line 593
    invoke-virtual {v10, v15}, Landroid/view/View;->setTextDirection(I)V

    .line 594
    .line 595
    .line 596
    const/high16 v15, 0x41800000    # 16.0f

    .line 597
    .line 598
    invoke-virtual {v10, v12, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 599
    .line 600
    .line 601
    const/4 v12, -0x1

    .line 602
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 603
    .line 604
    .line 605
    const/high16 v12, -0x1000000

    .line 606
    .line 607
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 614
    .line 615
    const/4 v15, -0x2

    .line 616
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 617
    .line 618
    invoke-direct {v12, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 619
    .line 620
    .line 621
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 622
    .line 623
    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 624
    .line 625
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 626
    .line 627
    invoke-virtual {v12, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    .line 632
    .line 633
    new-instance v7, Lcom/mycompany/app/view/MyCoverView;

    .line 634
    .line 635
    sget v12, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 636
    .line 637
    sget v15, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 638
    .line 639
    move-object/from16 v16, v4

    .line 640
    .line 641
    const/4 v4, -0x1

    .line 642
    invoke-direct {v7, v0, v4, v12, v15}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 646
    .line 647
    .line 648
    const/4 v12, 0x1

    .line 649
    invoke-virtual {v7, v12}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 650
    .line 651
    .line 652
    const/16 v9, 0x8

    .line 653
    .line 654
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2, v7, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 658
    .line 659
    .line 660
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 661
    .line 662
    iput-object v6, v0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 663
    .line 664
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->i1:Lcom/mycompany/app/view/MyButtonImage;

    .line 665
    .line 666
    iput-object v11, v0, Lcom/mycompany/app/main/image/MainImagePreview;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 667
    .line 668
    iput-object v13, v0, Lcom/mycompany/app/main/image/MainImagePreview;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 669
    .line 670
    iput-object v5, v0, Lcom/mycompany/app/main/image/MainImagePreview;->l1:Lcom/mycompany/app/view/MyButtonImage;

    .line 671
    .line 672
    iput-object v14, v0, Lcom/mycompany/app/main/image/MainImagePreview;->m1:Lcom/mycompany/app/view/MyButtonImage;

    .line 673
    .line 674
    iput-object v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 675
    .line 676
    iput-object v8, v0, Lcom/mycompany/app/main/image/MainImagePreview;->o1:Landroid/view/View;

    .line 677
    .line 678
    iput-object v10, v0, Lcom/mycompany/app/main/image/MainImagePreview;->p1:Lcom/mycompany/app/view/MyTextView;

    .line 679
    .line 680
    move-object/from16 v1, v16

    .line 681
    .line 682
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 683
    .line 684
    iput-object v7, v0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 685
    .line 686
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 687
    .line 688
    if-nez v1, :cond_5

    .line 689
    .line 690
    goto :goto_1

    .line 691
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$4;

    .line 692
    .line 693
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$4;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    .line 698
    .line 699
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 700
    .line 701
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 702
    .line 703
    .line 704
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 705
    .line 706
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 707
    .line 708
    .line 709
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->M1:Lcom/mycompany/app/view/GlideRequests;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->M1:Lcom/mycompany/app/view/GlideRequests;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i1:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i1:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->l1:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->l1:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->m1:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->m1:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 82
    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    iput-object v1, v0, Lcom/mycompany/app/view/MySizeImage;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 88
    .line 89
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 90
    .line 91
    if-eqz v0, :cond_a

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 97
    .line 98
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 99
    .line 100
    if-eqz v0, :cond_c

    .line 101
    .line 102
    iget-boolean v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->t1:Z

    .line 103
    .line 104
    if-eqz v2, :cond_b

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    iput-boolean v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->t1:Z

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 110
    .line 111
    .line 112
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 118
    .line 119
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 120
    .line 121
    if-eqz v0, :cond_d

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 127
    .line 128
    :cond_d
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->o1:Landroid/view/View;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->p1:Lcom/mycompany/app/view/MyTextView;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->A1:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->J1:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->K1:Landroid/view/GestureDetector;

    .line 147
    .line 148
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "EXTRA_PATH"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 58
    .line 59
    const-string v0, "EXTRA_REFERER"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "EXTRA_FILE"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 74
    .line 75
    :goto_1
    iput-boolean v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->w1:Z

    .line 76
    .line 77
    iput-boolean v3, p0, Lcom/mycompany/app/main/image/MainImagePreview;->I1:Z

    .line 78
    .line 79
    iput-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview;->A1:Ljava/lang/String;

    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->w1:Z

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const-string v0, "EXTRA_POPUP"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iput-boolean v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->I1:Z

    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->A1:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a3(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 114
    .line 115
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$2;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$2;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->E()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->W0()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->T0()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImagePreview;->H0()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->R1:Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$29;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/image/MainImagePreview$29;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 60
    .line 61
    :cond_4
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f2:Lcom/mycompany/app/ocr/OcrDetector;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/ocr/OcrDetector;->E()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->f2:Lcom/mycompany/app/ocr/OcrDetector;

    .line 72
    .line 73
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->g2:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->h2:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 78
    .line 79
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 80
    .line 81
    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->s1:Lcom/mycompany/app/view/MyWebSafe;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->G1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->H()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview;->S1:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$3;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$3;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
