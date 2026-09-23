.class Lcom/mycompany/app/web/WebViewActivity$498$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$498;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$498;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$498$1;->c:Lcom/mycompany/app/web/WebViewActivity$498;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$498$1;->c:Lcom/mycompany/app/web/WebViewActivity$498;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$498;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->Um:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->Vm:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v7, v2, Lcom/mycompany/app/web/WebViewActivity;->Wm:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v8, v2, Lcom/mycompany/app/web/WebViewActivity;->Xm:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Um:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Vm:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Wm:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Xm:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->i4()V

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 57
    .line 58
    new-instance v9, Lcom/mycompany/app/web/WebViewActivity$499;

    .line 59
    .line 60
    invoke-direct {v9, v2}, Lcom/mycompany/app/web/WebViewActivity$499;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    invoke-direct/range {v1 .. v9}, Lcom/mycompany/app/dialog/DialogPassInfo;-><init>(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->D7:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 69
    .line 70
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$500;

    .line 71
    .line 72
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebViewActivity$500;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method
