.class Lcom/mycompany/app/main/image/MainImageQuick$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$15$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$15$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick$15;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->b2:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->c2:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageQuick;->d2:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v0, Lcom/mycompany/app/main/image/MainImageQuick;->b2:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/main/image/MainImageQuick;->c2:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput-object v4, v0, Lcom/mycompany/app/main/image/MainImageQuick;->d2:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual {v0, v1, v5, v6}, Lcom/mycompany/app/main/image/MainImageQuick;->B0(Landroid/graphics/Bitmap;ZZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v5, v5}, Lcom/mycompany/app/main/image/MainImageQuick;->B0(Landroid/graphics/Bitmap;ZZ)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->m1:Lcom/mycompany/app/main/image/MainImageView;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->g1:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v7, v0, Lcom/mycompany/app/main/image/MainImageQuick;->h1:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick;->i1:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v8, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 43
    .line 44
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, v8, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v7, v8, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, v8, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->d:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v8, v1, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 54
    .line 55
    iput-object v3, v1, Lcom/mycompany/app/main/image/MainImageView;->B:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iput-boolean v5, v1, Lcom/mycompany/app/main/image/MainImageView;->F:Z

    .line 68
    .line 69
    iput v6, v1, Lcom/mycompany/app/main/image/MainImageView;->G:I

    .line 70
    .line 71
    iput v6, v1, Lcom/mycompany/app/main/image/MainImageView;->H:I

    .line 72
    .line 73
    iput-object v4, v1, Lcom/mycompany/app/main/image/MainImageView;->I:Landroid/graphics/RectF;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImageView;->h()V

    .line 76
    .line 77
    .line 78
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    .line 82
    .line 83
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 93
    .line 94
    .line 95
    iput-object v4, v1, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 96
    .line 97
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/image/MainImageView$1;

    .line 103
    .line 104
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/image/MainImageView$1;-><init>(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    return-void
.end method
