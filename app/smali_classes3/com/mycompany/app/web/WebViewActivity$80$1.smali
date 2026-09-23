.class Lcom/mycompany/app/web/WebViewActivity$80$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$80;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$80$1;->c:Lcom/mycompany/app/web/WebViewActivity$80;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$80$1;->c:Lcom/mycompany/app/web/WebViewActivity$80;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$80;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->r4()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 21
    .line 22
    sget v4, Lnet/kaki87/soul2/testing/R$string;->recent_delete:I

    .line 23
    .line 24
    sget v5, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 25
    .line 26
    new-instance v7, Lcom/mycompany/app/web/WebViewActivity$251;

    .line 27
    .line 28
    invoke-direct {v7, v2}, Lcom/mycompany/app/web/WebViewActivity$251;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;ZIIILcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->F2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 37
    .line 38
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$252;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebViewActivity$252;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
