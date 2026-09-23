.class Lcom/mycompany/app/web/WebViewActivity$79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$79;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$79;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditAuto;->getAutoText()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$79$1;

    .line 34
    .line 35
    invoke-direct {v1, p0, v0}, Lcom/mycompany/app/web/WebViewActivity$79$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$79;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
