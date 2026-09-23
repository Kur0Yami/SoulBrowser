.class Lcom/mycompany/app/dialog/DialogTabMain$35;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$35;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$35;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->U0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 6
    .line 7
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMain;->V0:Ljava/util/List;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->U0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 13
    .line 14
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->V0:Ljava/util/List;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 22
    .line 23
    iget-object v6, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 24
    .line 25
    iget-object v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 26
    .line 27
    iget v8, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 28
    .line 29
    new-instance v9, Lcom/mycompany/app/dialog/DialogTabMain$36;

    .line 30
    .line 31
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogTabMain$36;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogTabEdit;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain;->q0:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$37;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTabMain$37;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
