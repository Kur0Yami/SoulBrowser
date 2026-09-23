.class Lcom/mycompany/app/dialog/DialogUrlLink$35;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


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
        "Lcom/mycompany/app/view/MyGlideTarget<",
        "Landroid/graphics/drawable/PictureDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$35;->f:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 6

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroid/graphics/drawable/PictureDrawable;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$35;->f:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 22
    .line 23
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$36;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v4, v3

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogUrlLink$36;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$35;->f:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 13
    .line 14
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
