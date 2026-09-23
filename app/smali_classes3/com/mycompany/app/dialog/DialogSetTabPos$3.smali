.class Lcom/mycompany/app/dialog/DialogSetTabPos$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabPos;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$3;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$3;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->z0:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCastGuide;->dismiss()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->z0:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 20
    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogCastGuide;-><init>(Lcom/mycompany/app/main/MainActivity;I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->z0:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetTabPos$12;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos$12;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
