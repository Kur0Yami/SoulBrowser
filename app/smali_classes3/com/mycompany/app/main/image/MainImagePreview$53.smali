.class Lcom/mycompany/app/main/image/MainImagePreview$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    xor-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->W1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    sget-object v4, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v4, v2}, Lcom/mycompany/app/web/WebTransOcrCtrl;->h(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    if-eqz v1, :cond_5

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g2:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->Y0()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->h2:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->Y0()V

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    return-void

    .line 63
    :cond_5
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$53$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$53$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$53;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
