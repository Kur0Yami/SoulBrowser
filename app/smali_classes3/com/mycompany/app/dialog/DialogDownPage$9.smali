.class Lcom/mycompany/app/dialog/DialogDownPage$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownPage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownPage$9;->a:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownPage$9;->a:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

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
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownPage;->q0:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownPage$9;->a:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogDownPage;->p0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 31
    .line 32
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownPage;->q0:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const v1, -0x70708

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1, p3, p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
