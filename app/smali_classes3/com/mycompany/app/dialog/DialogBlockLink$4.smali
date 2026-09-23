.class Lcom/mycompany/app/dialog/DialogBlockLink$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogBlockLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$4;->c:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$4;->c:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->b0:Landroid/content/Context;

    .line 11
    .line 12
    const-class v2, Lcom/mycompany/app/setting/SettingClean;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "EXTRA_POPUP"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v1, "EXTRA_NOTI"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 29
    .line 30
    const-string v2, "EXTRA_INDEX"

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x11

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v1, 0x10

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :goto_0
    const-string v1, "EXTRA_PATH"

    .line 46
    .line 47
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->d0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 53
    .line 54
    const/16 v1, 0x23

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
