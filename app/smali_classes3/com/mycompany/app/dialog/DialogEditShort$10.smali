.class Lcom/mycompany/app/dialog/DialogEditShort$10;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditShort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$10;->a:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$10;->a:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget p3, p1, Lcom/mycompany/app/dialog/DialogEditShort;->f0:I

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogEditShort;->t0:Z

    .line 14
    .line 15
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 16
    .line 17
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 22
    .line 23
    sget p3, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 24
    .line 25
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/view/MyRoundImage;->y(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 p3, 0x0

    .line 30
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogEditShort;->t0:Z

    .line 31
    .line 32
    sget p1, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$10;->a:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogEditShort;->t0:Z

    .line 10
    .line 11
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
