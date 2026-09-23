.class Lcom/mycompany/app/web/WebViewActivity$389;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$389;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$389;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    const-string v2, "about:blank"

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v2, "file:///"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->m5:Ljava/lang/String;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->R0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->m5:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    :goto_0
    sget v1, Lnet/kaki87/soul2/testing/R$string;->blank_page:I

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->m5:Ljava/lang/String;

    .line 58
    .line 59
    return-void
.end method
