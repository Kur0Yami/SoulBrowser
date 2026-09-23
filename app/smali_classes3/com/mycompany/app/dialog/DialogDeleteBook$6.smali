.class Lcom/mycompany/app/dialog/DialogDeleteBook$6;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDeleteBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$6;->a:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$6;->a:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 9
    .line 10
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget v0, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->c0:I

    .line 16
    .line 17
    const/16 v1, 0x1b

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
