.class Lcom/mycompany/app/dialog/DialogCapture$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$5;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$5;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->Q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 8
    .line 9
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->R:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogCapture$14;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogCapture$14;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
