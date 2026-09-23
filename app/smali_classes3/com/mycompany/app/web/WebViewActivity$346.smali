.class Lcom/mycompany/app/web/WebViewActivity$346;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$346;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$346;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->n6:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGuideNoti;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->n6:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->N4(Landroid/app/Activity;I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 29
    .line 30
    :cond_1
    return-void
.end method
