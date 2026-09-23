.class Lcom/mycompany/app/main/image/MainImageCropper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageCropper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageCropper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$4;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$4;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->w1:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->x1:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->g1:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_5

    .line 26
    .line 27
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->y1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageCropper;->u0()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_3
    const/4 v2, 0x1

    .line 41
    iput-boolean v2, p1, Lcom/mycompany/app/main/image/MainImageCropper;->z1:Z

    .line 42
    .line 43
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/crop/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    const-string v3, "image/png"

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    const-string v3, "image/jpg"

    .line 65
    .line 66
    :goto_1
    iget-object v4, p1, Lcom/mycompany/app/main/image/MainImageCropper;->g1:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v4, v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p1, Lcom/mycompany/app/main/image/MainImageCropper;->s1:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const/4 v3, 0x4

    .line 79
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 83
    .line 84
    new-instance v3, Lcom/mycompany/app/main/image/MainImageCropper$10;

    .line 85
    .line 86
    invoke-direct {v3, p1}, Lcom/mycompany/app/main/image/MainImageCropper$10;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p1, v1, v0, v3}, Lcom/mycompany/app/dialog/DialogDownEdit;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p1, Lcom/mycompany/app/main/image/MainImageCropper;->y1:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 93
    .line 94
    new-instance v0, Lcom/mycompany/app/main/image/MainImageCropper$11;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lcom/mycompany/app/main/image/MainImageCropper$11;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    new-instance v0, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;

    .line 104
    .line 105
    iget-object v2, p1, Lcom/mycompany/app/main/image/MainImageCropper;->k1:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v0, p1, v2, v1}, Lcom/mycompany/app/main/image/MainImageCropper$SaveTask;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
