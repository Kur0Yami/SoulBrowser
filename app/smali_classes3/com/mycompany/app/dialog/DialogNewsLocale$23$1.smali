.class Lcom/mycompany/app/dialog/DialogNewsLocale$23$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale$23;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale$23;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$23$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$23;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$23$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$23;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$23;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->F0:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->F0:Z

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method
