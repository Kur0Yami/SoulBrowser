.class Lcom/mycompany/app/image/ImageViewListVert$45$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListVert$45;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert$45;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$45$1;->c:Lcom/mycompany/app/image/ImageViewListVert$45;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$45$1;->c:Lcom/mycompany/app/image/ImageViewListVert$45;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert$45;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->c1:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->c1:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 17
    .line 18
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewListVert;->h0(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewListVert;->s:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {v2, v3, v1, v5, v4}, Lcom/mycompany/app/dialog/DialogCapture;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->n0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->n0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/image/ImageViewListVert$45$1$1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewListVert$45$1$1;-><init>(Lcom/mycompany/app/image/ImageViewListVert$45$1;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
