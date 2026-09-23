.class Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$16;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$16;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->H0:Z

    .line 14
    .line 15
    new-instance v3, Lcom/mycompany/app/dialog/DialogNewsLocale$WebAppInterface;

    .line 16
    .line 17
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogNewsLocale$WebAppInterface;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android"

    .line 21
    .line 22
    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$16;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
