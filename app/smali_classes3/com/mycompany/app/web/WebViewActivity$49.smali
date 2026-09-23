.class Lcom/mycompany/app/web/WebViewActivity$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$49;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$49;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->j:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->o0:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$49;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n6:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 45
    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogGuideNoti;->dismiss()V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n6:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 53
    .line 54
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebViewActivity$49;->c:Z

    .line 55
    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->o0:Z

    .line 60
    .line 61
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 62
    .line 63
    const/16 v3, 0x11

    .line 64
    .line 65
    const-string v4, "mGuideNoti"

    .line 66
    .line 67
    invoke-static {v3, v2, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    :cond_7
    new-instance v1, Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogGuideNoti;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n6:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 76
    .line 77
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$346;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$346;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
