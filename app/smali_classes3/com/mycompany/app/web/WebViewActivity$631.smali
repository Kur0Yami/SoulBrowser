.class Lcom/mycompany/app/web/WebViewActivity$631;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$631;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$631;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->d7:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/mycompany/app/web/WebViewActivity;->jb:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogViewIp;->dismiss()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->jb:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 14
    .line 15
    :cond_0
    return-void
.end method
