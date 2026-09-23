.class Lcom/mycompany/app/dialog/DialogTabMain$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$32;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$32;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 9
    .line 10
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMain$33;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMain$33;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->p0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$34;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTabMain$34;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
