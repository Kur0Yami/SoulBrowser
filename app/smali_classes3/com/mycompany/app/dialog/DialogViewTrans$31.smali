.class Lcom/mycompany/app/dialog/DialogViewTrans$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$31;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$31;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewTrans;->C(Lcom/mycompany/app/dialog/DialogViewTrans;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->H(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->D(Lcom/mycompany/app/dialog/DialogViewTrans;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
