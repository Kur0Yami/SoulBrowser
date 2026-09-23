.class Lcom/mycompany/app/web/WebViewActivity$303;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$303;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$303;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->vj:I

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->c6([Landroid/net/Uri;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->E7:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogWebSelect;->dismiss()V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->E7:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 29
    .line 30
    :cond_2
    sget v2, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    :cond_3
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 40
    .line 41
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$505;

    .line 42
    .line 43
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$505;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v0, v2, v1, v4}, Lcom/mycompany/app/dialog/DialogWebSelect;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogWebSelect$WebSelectListener;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->E7:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 50
    .line 51
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$506;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$506;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    .line 58
    .line 59
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    return-void

    .line 67
    :cond_5
    :goto_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->E7:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 68
    .line 69
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->a6()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const/4 v8, 0x1

    .line 84
    invoke-virtual/range {v3 .. v8}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
