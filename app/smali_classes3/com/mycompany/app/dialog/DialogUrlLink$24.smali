.class Lcom/mycompany/app/dialog/DialogUrlLink$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogUrlLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/PictureDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$24;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/engine/GlideException;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$24;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->M0:Z

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->M0:Z

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    :goto_0
    return v1

    .line 28
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$24$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$24$1;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink$24;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    const v0, -0x70708

    .line 47
    .line 48
    .line 49
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/PictureDrawable;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$24;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
