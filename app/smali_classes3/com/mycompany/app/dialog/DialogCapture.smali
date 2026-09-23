.class public Lcom/mycompany/app/dialog/DialogCapture;
.super Lcom/mycompany/app/view/MyDialogNormal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogCapture$SaveTask;
    }
.end annotation


# static fields
.field public static final synthetic Y:I


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public B:I

.field public C:I

.field public D:I

.field public E:Ljava/lang/String;

.field public F:Landroid/widget/FrameLayout;

.field public G:Lcom/mycompany/app/crop/CropImageView;

.field public H:Lcom/mycompany/app/view/MySizeImage;

.field public I:Lcom/mycompany/app/view/MyAreaView;

.field public J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public K:Lcom/mycompany/app/view/MyButtonImage;

.field public L:Lcom/mycompany/app/view/MyButtonImage;

.field public M:Landroid/widget/LinearLayout;

.field public N:Landroidx/appcompat/widget/AppCompatTextView;

.field public O:Lcom/mycompany/app/view/MyLineText;

.field public P:Lcom/mycompany/app/view/MyCoverView;

.field public Q:Z

.field public R:Z

.field public S:Lcom/mycompany/app/dialog/DialogDownEdit;

.field public T:Lcom/mycompany/app/view/MyFadeFrame;

.field public U:Z

.field public V:Landroid/graphics/Bitmap;

.field public W:J

.field public X:Lcom/mycompany/app/view/MySnackbar;

.field public w:Lcom/mycompany/app/main/MainActivity;

.field public x:Landroid/content/Context;

.field public final y:Z

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogBlackTheme:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 16
    .line 17
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogCapture;->y:Z

    .line 18
    .line 19
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogCapture;->E:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogCapture;->z:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogCapture;->A:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogCapture$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogCapture$1;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->R:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCapture;->p()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iput-boolean v0, v1, Lcom/mycompany/app/crop/CropImageView;->u:Z

    .line 23
    .line 24
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 27
    .line 28
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 29
    .line 30
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 31
    .line 32
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 33
    .line 34
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->p:Landroid/graphics/PointF;

    .line 35
    .line 36
    iput-object v2, v1, Lcom/mycompany/app/crop/CropImageView;->q:Lcom/mycompany/app/crop/Handle;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iput-object v2, v1, Lcom/mycompany/app/view/MySizeImage;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 45
    .line 46
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 47
    .line 48
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyAreaView;->c()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 56
    .line 57
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->O:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->O:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->P:Lcom/mycompany/app/view/MyCoverView;

    .line 85
    .line 86
    if-eqz v1, :cond_8

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->P:Lcom/mycompany/app/view/MyCoverView;

    .line 92
    .line 93
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 94
    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 101
    .line 102
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 103
    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->T:Lcom/mycompany/app/view/MyFadeFrame;

    .line 110
    .line 111
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 112
    .line 113
    if-eqz v1, :cond_b

    .line 114
    .line 115
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 119
    .line 120
    :cond_b
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 121
    .line 122
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->z:Landroid/graphics/Bitmap;

    .line 123
    .line 124
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->A:Landroid/graphics/Bitmap;

    .line 125
    .line 126
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->E:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->M:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogCapture;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogNormal;->dismiss()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    return v1
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->R:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogDownEdit;->D(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCapture;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCapture;->r()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownEdit;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->U:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->K7(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final q(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->f:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->X5(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p1, p1, Lcom/mycompany/app/main/MainActivity;->B0:Z

    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCapture;->r()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->S:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownEdit;->E(Z)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->f()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture$18;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogCapture$18;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
