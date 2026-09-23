.class Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$16;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$16;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$LocalWebViewClient;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$LocalWebViewClient;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$16$1$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale$16$1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
