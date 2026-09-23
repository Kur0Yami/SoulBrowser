.class public Lcom/mycompany/app/image/ImageGifView;
.super Lcom/mycompany/app/view/MyFadeFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageGifView$GifListener;
    }
.end annotation


# instance fields
.field public A:Lcom/mycompany/app/view/MyImageView;

.field public B:Lcom/mycompany/app/view/MyButtonImage;

.field public C:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public D:Lcom/mycompany/app/view/GlideRequests;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public final G:Lcom/bumptech/glide/request/RequestListener;

.field public x:Lcom/mycompany/app/main/MainActivity;

.field public y:Landroid/content/Context;

.field public z:Lcom/mycompany/app/image/ImageGifView$GifListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/image/ImageGifView$6;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageGifView$6;-><init>(Lcom/mycompany/app/image/ImageGifView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->G:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView;->y:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->D:Lcom/mycompany/app/view/GlideRequests;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

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
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->D:Lcom/mycompany/app/view/GlideRequests;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyImageView;->d()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->C:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->C:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 44
    .line 45
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->x:Lcom/mycompany/app/main/MainActivity;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->y:Landroid/content/Context;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->z:Lcom/mycompany/app/image/ImageGifView$GifListener;

    .line 50
    .line 51
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->y:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyImageView;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyImageView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x11

    .line 18
    .line 19
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    .line 33
    .line 34
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_white_24:I

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 37
    .line 38
    .line 39
    sget v0, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    sget v3, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    invoke-virtual {v2, v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 46
    .line 47
    .line 48
    const/high16 v0, -0x5f000000

    .line 49
    .line 50
    const v3, -0x5e8a8a8b

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 59
    .line 60
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    const v3, 0x800005

    .line 64
    .line 65
    .line 66
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    .line 68
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 69
    .line 70
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/image/ImageGifView;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    new-instance v0, Lcom/mycompany/app/image/ImageGifView$1;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageGifView$1;-><init>(Lcom/mycompany/app/image/ImageGifView;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyImageView;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 91
    .line 92
    new-instance v1, Lcom/mycompany/app/image/ImageGifView$2;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageGifView$2;-><init>(Lcom/mycompany/app/image/ImageGifView;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyImageView;->setDrawFailListener(Lcom/mycompany/app/view/MyImageView$DrawFailListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    new-instance v1, Lcom/mycompany/app/image/ImageGifView$3;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageGifView$3;-><init>(Lcom/mycompany/app/image/ImageGifView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/mycompany/app/image/ImageGifView$4;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageGifView$4;-><init>(Lcom/mycompany/app/image/ImageGifView;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final k(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/mycompany/app/image/ImageGifView$GifListener;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView;->x:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/mycompany/app/image/ImageGifView;->z:Lcom/mycompany/app/image/ImageGifView$GifListener;

    .line 7
    .line 8
    sget p1, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, p5}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 42
    .line 43
    invoke-virtual {p1, p4}, Lcom/mycompany/app/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iput-object p2, p0, Lcom/mycompany/app/image/ImageGifView;->E:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/mycompany/app/image/ImageGifView;->F:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView;->x:Lcom/mycompany/app/main/MainActivity;

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_4
    new-instance p2, Lcom/mycompany/app/image/ImageGifView$5;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/mycompany/app/image/ImageGifView$5;-><init>(Lcom/mycompany/app/image/ImageGifView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
