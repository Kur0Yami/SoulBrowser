.class Lcom/mycompany/app/web/WebViewActivity$436;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$436;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZZZZZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$436;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iput-object p6, v0, Lcom/mycompany/app/web/WebViewActivity;->Ml:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$436$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$436$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$436;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {v0, p2, p3, p4, p5}, Lcom/mycompany/app/web/WebViewActivity;->T0(Lcom/mycompany/app/web/WebViewActivity;ZZZZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
