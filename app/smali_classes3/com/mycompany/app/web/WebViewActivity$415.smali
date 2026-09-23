.class Lcom/mycompany/app/web/WebViewActivity$415;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$415;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$415;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Z4()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$415;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Y4()V

    .line 9
    .line 10
    .line 11
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Al:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->v9()V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    if-ne p2, p1, :cond_4

    .line 18
    .line 19
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->L6()V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F4()V

    .line 37
    .line 38
    .line 39
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_3

    .line 50
    .line 51
    iget p2, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 52
    .line 53
    if-ne p2, p1, :cond_3

    .line 54
    .line 55
    sget p2, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 56
    .line 57
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$391;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$391;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {p2, v0, v2, v1}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->E6:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$392;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$392;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    .line 81
    .line 82
    return p1

    .line 83
    :cond_4
    const/4 v1, 0x2

    .line 84
    if-ne p2, v1, :cond_5

    .line 85
    .line 86
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Y4()V

    .line 89
    .line 90
    .line 91
    const-string p2, "https://support.google.com/translate"

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1, p2, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_0
    return p1
.end method
