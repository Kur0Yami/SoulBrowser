.class Lcom/mycompany/app/web/WebViewActivity$491$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$491;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$491;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$491$1;->c:Lcom/mycompany/app/web/WebViewActivity$491;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$491$1;->c:Lcom/mycompany/app/web/WebViewActivity$491;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$491;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->Km:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->Lm:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->Mm:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Km:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Lm:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Mm:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->x7:Lcom/mycompany/app/dialog/DialogPermission;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogPermission;

    .line 24
    .line 25
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$492;

    .line 26
    .line 27
    invoke-direct {v6, v2}, Lcom/mycompany/app/web/WebViewActivity$492;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogPermission;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->x7:Lcom/mycompany/app/dialog/DialogPermission;

    .line 34
    .line 35
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$493;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebViewActivity$493;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
