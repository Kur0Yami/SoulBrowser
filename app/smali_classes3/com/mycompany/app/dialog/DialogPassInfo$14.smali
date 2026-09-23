.class Lcom/mycompany/app/dialog/DialogPassInfo$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogPassInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$14;->a:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$14;->a:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

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
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$14;->a:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
