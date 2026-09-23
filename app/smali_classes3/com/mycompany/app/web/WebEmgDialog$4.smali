.class Lcom/mycompany/app/web/WebEmgDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$4;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$4;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebEmgDialog;->D()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->o0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogImageType;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->o0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 24
    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogImageType;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/mycompany/app/web/WebEmgDialog;->l0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 30
    .line 31
    new-instance v3, Lcom/mycompany/app/web/WebEmgDialog$36;

    .line 32
    .line 33
    invoke-direct {v3, p1}, Lcom/mycompany/app/web/WebEmgDialog$36;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogImageType;-><init>(Landroid/app/Activity;Lcom/mycompany/app/data/DataUrl$ImgCntItem;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->o0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$37;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebEmgDialog$37;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
