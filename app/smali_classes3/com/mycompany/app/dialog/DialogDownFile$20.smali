.class Lcom/mycompany/app/dialog/DialogDownFile$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogDownFile;
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
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$20;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/engine/GlideException;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$20;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFile;->H0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogDownFile;->J0:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogDownFile;->J0:Z

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownFile$20$1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownFile$20$1;-><init>(Lcom/mycompany/app/dialog/DialogDownFile$20;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return v1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/PictureDrawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$20;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->I0:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogDownFile;->D(Lcom/mycompany/app/dialog/DialogDownFile;Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
