.class Lcom/mycompany/app/main/image/MainImagePreview$53$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$53$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$53$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$53$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$53$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->w2:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->w2:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 42
    .line 43
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->Y0()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
