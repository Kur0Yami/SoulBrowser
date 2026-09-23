.class Lcom/mycompany/app/dialog/DialogTabMain$29;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$29;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$29;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 11
    .line 12
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMain$30;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMain$30;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->o0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$31;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTabMain$31;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
