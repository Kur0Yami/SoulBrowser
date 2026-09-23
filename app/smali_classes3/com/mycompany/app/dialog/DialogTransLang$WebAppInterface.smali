.class Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTransLang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onJsResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "onTransList"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object p2, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogTransLang$16;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogTransLang$16;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogTransLang;->I0:Ljava/lang/String;

    .line 44
    .line 45
    new-instance p2, Lcom/mycompany/app/dialog/DialogTransLang$17;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogTransLang$17;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_0
    return-void
.end method

.method public onObserDet(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface$1;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
