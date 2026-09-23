.class public Lcom/mycompany/app/web/TabHomepage;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# Handles Homepage menu click (forceSet=false) and long-press (forceSet=true).
.method public static a(Lcom/mycompany/app/web/WebViewActivity;IZ)V
    .locals 4

    if-eqz p0, :cond_ret

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    if-eqz v0, :cond_ret

    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v0

    if-eqz v0, :cond_ret

    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->r:Ljava/lang/String;

    if-nez p2, :cond_set

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_set

    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    iget v2, p0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    if-eq p1, v2, :cond_nav

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/web/WebViewActivity;->c7(IZ)V

    :cond_nav
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_set
    iget v1, p0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    if-ne p1, v1, :cond_other

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    move-result-object p1

    goto :cond_url

    :cond_other
    iget-object p1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_url

    sget p1, Lnet/kaki87/soul2/testing/R$string;->empty:I

    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    return-void

    :cond_url
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ret

    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    sget v1, Lnet/kaki87/soul2/testing/R$string;->set_homepage_confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mycompany/app/web/TabHomepage$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/mycompany/app/web/TabHomepage$1;-><init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Ljava/lang/String;)V

    new-instance v0, Lcom/mycompany/app/dialog/DialogConfirm;

    invoke-direct {v0, p0, v1, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    iput-object v0, v2, Lcom/mycompany/app/web/TabHomepage$1;->d:Lcom/mycompany/app/dialog/DialogConfirm;

    :cond_ret
    return-void
.end method
