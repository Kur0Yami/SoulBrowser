.class Lcom/mycompany/app/web/WebViewActivity$480$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$480;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$480;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$480$1;->c:Lcom/mycompany/app/web/WebViewActivity$480;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$480$1;->c:Lcom/mycompany/app/web/WebViewActivity$480;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$480;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogDeleteItem;->B(Z)V

    .line 12
    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
