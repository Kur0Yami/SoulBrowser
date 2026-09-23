.class Lcom/mycompany/app/web/WebViewActivity$322;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$322;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$322;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->d6:Z

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->g4()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$322;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-gez p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    rem-int/lit8 p2, p2, 0xa

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->g4()V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x9

    .line 17
    .line 18
    if-ne p2, v0, :cond_4

    .line 19
    .line 20
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->h4()V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->L9(Z)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 42
    .line 43
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$325;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebViewActivity$325;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p1, v0, v1}, Lcom/mycompany/app/dialog/DialogNewsSearch;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f6:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$326;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lcom/mycompany/app/web/WebViewActivity$326;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 63
    .line 64
    if-eq v0, p2, :cond_5

    .line 65
    .line 66
    sput p2, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 67
    .line 68
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 69
    .line 70
    const/16 v1, 0x10

    .line 71
    .line 72
    const-string v2, "mNewsTopic"

    .line 73
    .line 74
    invoke-static {v0, v1, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-static {p1}, Lcom/mycompany/app/web/WebViewActivity;->J0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$322;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->g4()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->f4()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 22
    .line 23
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$323;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$323;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v0, v3, v2}, Lcom/mycompany/app/dialog/DialogNewsLocale;-><init>(Lcom/mycompany/app/main/MainActivity;[Ljava/lang/String;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e6:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 33
    .line 34
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$324;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$324;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method
