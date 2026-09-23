.class Lcom/mycompany/app/main/image/MainImagePreview$18;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$18;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$18;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x1

    .line 9
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->Z0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$18;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 15
    .line 16
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->Y0()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->G0()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
