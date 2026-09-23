.class Lcom/mycompany/app/dialog/DialogSeekWebText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWebText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$3;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$3;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->j0:Lcom/mycompany/app/view/MySwitchView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    xor-int/2addr v1, v2

    .line 12
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText;->I(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
