.class Lcom/mycompany/app/dialog/DialogPopupMenu$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$8;->a:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$8;->a:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 9
    .line 10
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->k0:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const v2, -0x70708

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v2, v0, p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$8;->a:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 27
    .line 28
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 29
    .line 30
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPopupMenu;->k0:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    const v1, -0x70708

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
