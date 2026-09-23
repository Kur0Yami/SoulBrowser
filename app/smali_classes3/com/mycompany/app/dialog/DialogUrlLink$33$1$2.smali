.class Lcom/mycompany/app/dialog/DialogUrlLink$33$1$2;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mycompany/app/view/MyGlideTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/mycompany/app/dialog/DialogUrlLink$33$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink$33$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$2;->f:Lcom/mycompany/app/dialog/DialogUrlLink$33$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroid/graphics/Bitmap;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$2;->f:Lcom/mycompany/app/dialog/DialogUrlLink$33$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink$33$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$33;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUrlLink$33;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 9
    .line 10
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 26
    .line 27
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$36;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v5, v3

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogUrlLink$36;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$2;->f:Lcom/mycompany/app/dialog/DialogUrlLink$33$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink$33$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$33;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink$33;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink$33;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 19
    .line 20
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
