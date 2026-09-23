.class Lcom/mycompany/app/dialog/DialogConfirm$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogConfirm;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogConfirm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm$9;->c:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogConfirm$9;->c:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogConfirm;->F0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogConfirm;->C(Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lcom/mycompany/app/dialog/DialogConfirm;->C(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
