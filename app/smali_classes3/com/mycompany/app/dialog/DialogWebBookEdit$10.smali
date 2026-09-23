.class Lcom/mycompany/app/dialog/DialogWebBookEdit$10;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebBookEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$10;->a:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$10;->a:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->w0:Z

    .line 10
    .line 11
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 12
    .line 13
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 18
    .line 19
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const v1, -0x70708

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, p3, p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$10;->a:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

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
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->w0:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
