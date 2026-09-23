.class Lcom/mycompany/app/web/WebViewActivity$215;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$215;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$215;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->Nh:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Nh:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->O3()V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Zb:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogUpdateScript;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Zb:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 27
    .line 28
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 29
    .line 30
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$217;

    .line 31
    .line 32
    invoke-direct {v5, v1}, Lcom/mycompany/app/web/WebViewActivity$217;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogUpdateScript;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Zb:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$218;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$218;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
