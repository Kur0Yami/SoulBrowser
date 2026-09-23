.class Lcom/mycompany/app/image/ImageViewPageEffect$48$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect$48$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$48$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$48$1$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$48$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$48$1$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$48$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageEffect$48$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$48;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageEffect$48;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->t0:Lcom/mycompany/app/dialog/DialogCapture;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageEffect$48;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->l1(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageEffect$48;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->j1()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
