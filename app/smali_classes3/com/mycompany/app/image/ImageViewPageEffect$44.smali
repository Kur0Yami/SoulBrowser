.class Lcom/mycompany/app/image/ImageViewPageEffect$44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$44;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$44;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->o0:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 17
    .line 18
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 24
    .line 25
    sget v2, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 26
    .line 27
    const v3, 0x3e4ccccd    # 0.2f

    .line 28
    .line 29
    .line 30
    cmpl-float v2, v2, v3

    .line 31
    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    const v2, -0x50506

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/high16 v2, -0x1000000

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyCoverView;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/curl/CurlView;->d()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
